import time
from pynq import Overlay
import numpy as np
from pynq import Xlnk
import struct
from scipy.misc import imread
import cv2
#################################
import mnist
import gzip
import os
import time

'''mnist = input_data.read_data_sets('MNIST_data', one_hot=True)'''

local_file = "/home/xilinx/jupyter_notebooks/mnist"
 
#(train_images, train_labels),(test_images, test_labels) = mnist.load_data()

TEST_IMAGES = 't10k-images-idx3-ubyte.gz'    #Test Data Set Image
TEST_LABELS = 't10k-labels-idx1-ubyte.gz'    #Test Data Set Label
 

 
def _read32(bytestream):
    dt = np.dtype(np.uint32).newbyteorder('>')
    return np.frombuffer(bytestream.read(4), dtype=dt)[0]

def extract_images(filename):
    """Extract the images into a 4D uint8 numpy array [index, y, x, depth]."""
    print('Extracting', filename)
    with gzip.open(filename) as bytestream:
        magic = _read32(bytestream) #Read the magic number represented by the first four bytes
        if magic != 2051: #The magic number of the image file = 2051
            raise ValueError(
                'Invalid magic number %d in MNIST image file: %s' %
                (magic, filename))
        num_images = _read32(bytestream) #Read the next 4 bytes as the number of pictures. [60000] for train,[10000] for test
        #Each picture contains 28X28 pixels, namely rows=[28],cols=[28]
        rows = _read32(bytestream) 
        cols = _read32(bytestream)
        buf = bytestream.read(rows * cols * num_images)
        data = np.frombuffer(buf, dtype=np.uint8)  #Convert buf to a 1-dimensional array
        data = data.reshape(num_images, rows, cols, 1)  #reshape:(60000, 28, 28, 1)for train, (10000, 28, 28, 1)for test
        return data

def extract_labels(filename, one_hot=False):
    """Extract the labels into a 1D uint8 numpy array [index]."""
    print('Extracting', filename)
    with gzip.open(filename) as bytestream:
        magic = _read32(bytestream) #Read the magic number represented by the first four bytes
        if magic != 2049: #Magic number of label file = 2049
            raise ValueError(
                'Invalid magic number %d in MNIST label file: %s' %
                (magic, filename))
        num_items = _read32(bytestream)  #Read the next 4 bytes as the label number.[60000] for train,[10000] for test
        buf = bytestream.read(num_items) 
        labels = np.frombuffer(buf, dtype=np.uint8)
        if one_hot:
            return dense_to_one_hot(labels) #Converted to one_hot form, that is, each label is represented by a 10-dimensional vector, the corresponding dimension of the label is 1, and the rest are 0
        return labels

def dense_to_one_hot(labels_dense, num_classes=10):
    """Convert class labels from scalars to one-hot vectors."""
    num_labels = labels_dense.shape[0]
    index_offset = np.arange(num_labels) * num_classes
    labels_one_hot = np.zeros((num_labels, num_classes))
    labels_one_hot.flat[index_offset + labels_dense.ravel()] = 1
    return labels_one_hot
 
test_images = extract_images(os.path.join(local_file,TEST_IMAGES))
test_labels = extract_labels(os.path.join(local_file,TEST_LABELS))


'''from tensorflow.examples.tutorials.mnist import input_data
import tensorflow as tf
import numpy as np
mnist = input_data.read_data_sets('MNIST_data', one_hot=True)'''

'''import keras
from keras.datasets import mnist
from keras import backend as K

img_rows, img_cols = 28, 28
(x_train, y_train), (x_test, y_test) = mnist.load_data()

if K.image_data_format() == 'channels_first':
    x_test = x_test.reshape(x_test.shape[0], 1, img_rows, img_cols)
    input_shape = (1, img_rows, img_cols)
else:
    x_test = x_test.reshape(x_test.shape[0], img_rows, img_cols, 1)
    input_shape = (img_rows, img_cols, 1)

x_test = x_test.astype('float32')
x_test /= 255'''

##################################
def readbinfile(filename,size):
    f = open(filename, "rb")
    z=[]
    for j in range(size):
        data = f.read(4)
        data_float = struct.unpack("f", data)[0]
        z.append(data_float)
    f.close()
    z = np.array(z)
    return z

def RunConv(conv,Kx,Ky,Sx,Sy,mode,relu_en,feature_in,W,bias,feature_out):
    conv.write(0x10,feature_in.shape[2]);
    conv.write(0x18,feature_in.shape[0]);
    conv.write(0x20,feature_in.shape[1]);
    conv.write(0x28,feature_out.shape[2]);
    conv.write(0x30,Kx);
    conv.write(0x38,Ky);
    conv.write(0x40,Sx);
    conv.write(0x48,Sy);
    conv.write(0x50,mode);
    conv.write(0x58,relu_en);
    conv.write(0x60,feature_in.physical_address);
    conv.write(0x68,W.physical_address);
    conv.write(0x70,bias.physical_address);
    conv.write(0x78,feature_out.physical_address);
    conv.write(0, (conv.read(0)&0x80)|0x01 );
    tp=conv.read(0)
    while not ((tp>>1)&0x1):
        tp=conv.read(0);
    #print(tp);

def RunPool(pool,Kx,Ky,mode,feature_in,feature_out):
    pool.write(0x10,feature_in.shape[2]);
    pool.write(0x18,feature_in.shape[0]);
    pool.write(0x20,feature_in.shape[1]);
    pool.write(0x28,Kx);
    pool.write(0x30,Ky);
    pool.write(0x38,mode);
    pool.write(0x40,feature_in.physical_address);
    pool.write(0x48,feature_out.physical_address);
    pool.write(0, (pool.read(0)&0x80)|0x01 );
    while not ((pool.read(0)>>1)&0x1):
        pass;

#Conv1
IN_WIDTH1=28
IN_HEIGHT1=28
IN_CH1=1

KERNEL_WIDTH1=5
KERNEL_HEIGHT1=5
X_STRIDE1=1
Y_STRIDE1=1

RELU_EN1=1
MODE1=0  #0:VALID, 1:SAME
if(MODE1):
    X_PADDING1=int((KERNEL_WIDTH1-1)/2)
    Y_PADDING1=int((KERNEL_HEIGHT1-1)/2)
else:
    X_PADDING1=0
    Y_PADDING1=0

OUT_CH1=6
OUT_WIDTH1=int((IN_WIDTH1+2*X_PADDING1-KERNEL_WIDTH1)/X_STRIDE1+1)
OUT_HEIGHT1=int((IN_HEIGHT1+2*Y_PADDING1-KERNEL_HEIGHT1)/Y_STRIDE1+1)


#Pool1
MODE11=2  #mode: 0:MEAN, 1:MIN, 2:MAX
IN_WIDTH11=OUT_WIDTH1
IN_HEIGHT11=OUT_HEIGHT1
IN_CH11=OUT_CH1

KERNEL_WIDTH11=2
KERNEL_HEIGHT11=2

OUT_CH11=IN_CH11
OUT_WIDTH11=int(IN_WIDTH11/KERNEL_WIDTH11)
OUT_HEIGHT11=int(IN_HEIGHT11/KERNEL_HEIGHT11)

#Conv2
IN_WIDTH2=OUT_WIDTH11
IN_HEIGHT2=OUT_HEIGHT11
IN_CH2=OUT_CH11

KERNEL_WIDTH2=5
KERNEL_HEIGHT2=5
X_STRIDE2=1
Y_STRIDE2=1

RELU_EN2=1
MODE2=0  #0:VALID, 1:SAME
if(MODE2):
    X_PADDING2=int((KERNEL_WIDTH2-1)/2)
    Y_PADDING2=int((KERNEL_HEIGHT2-1)/2)
else:
    X_PADDING2=0
    Y_PADDING2=0

OUT_CH2=16
OUT_WIDTH2=int((IN_WIDTH2+2*X_PADDING2-KERNEL_WIDTH2)/X_STRIDE2+1)
OUT_HEIGHT2=int((IN_HEIGHT2+2*Y_PADDING2-KERNEL_HEIGHT2)/Y_STRIDE2+1)

#Pool2
MODE21=2  #mode: 0:MEAN, 1:MIN, 2:MAX
IN_WIDTH21=OUT_WIDTH2
IN_HEIGHT21=OUT_HEIGHT2
IN_CH21=OUT_CH2

KERNEL_WIDTH21=2
KERNEL_HEIGHT21=2

OUT_CH21=IN_CH21
OUT_WIDTH21=int(IN_WIDTH21/KERNEL_WIDTH21)
OUT_HEIGHT21=int(IN_HEIGHT21/KERNEL_HEIGHT21) #4, 4, 16

#Fc1
IN_WIDTH3=OUT_WIDTH21
IN_HEIGHT3=OUT_HEIGHT21
IN_CH3=OUT_CH21

KERNEL_WIDTH3=4
KERNEL_HEIGHT3=4
X_STRIDE3=1
Y_STRIDE3=1

RELU_EN3=1
MODE3=0  #0:VALID, 1:SAME
if(MODE3):
    X_PADDING3=int((KERNEL_WIDTH3-1/2))
    Y_PADDING3=int((KERNEL_HEIGHT3-1)/2)
else:
    X_PADDING3=0
    Y_PADDING3=0

OUT_CH3=120
OUT_WIDTH3=int((IN_WIDTH3+2*X_PADDING3-KERNEL_WIDTH3)/X_STRIDE3+1)
OUT_HEIGHT3=int((IN_HEIGHT3+2*Y_PADDING3-KERNEL_HEIGHT3)/Y_STRIDE3+1)
#print(OUT_WIDTH3, OUT_HEIGHT3)
#Fc2
IN_WIDTH4=OUT_WIDTH3
IN_HEIGHT4=OUT_HEIGHT3
IN_CH4=OUT_CH3

KERNEL_WIDTH4=1
KERNEL_HEIGHT4=1
X_STRIDE4=1
Y_STRIDE4=1

RELU_EN4=1
MODE4=0  #0:VALID, 1:SAME
if(MODE4):
    X_PADDING4=int((KERNEL_WIDTH4-1/2))
    Y_PADDING4=int((KERNEL_HEIGHT4-1)/2)
else:
    X_PADDING4=0
    Y_PADDING4=0

OUT_CH4=84
OUT_WIDTH4=int((IN_WIDTH4+2*X_PADDING4-KERNEL_WIDTH4)/X_STRIDE4+1)
OUT_HEIGHT4=int((IN_HEIGHT4+2*Y_PADDING4-KERNEL_HEIGHT4)/Y_STRIDE4+1)

#print(OUT_WIDTH4, OUT_HEIGHT4)
#Fc3
IN_WIDTH5=OUT_WIDTH4
IN_HEIGHT5=OUT_HEIGHT4
IN_CH5=OUT_CH4

KERNEL_WIDTH5=1
KERNEL_HEIGHT5=1
X_STRIDE5=1
Y_STRIDE5=1

RELU_EN5=1
MODE5=0  #0:VALID, 1:SAME
if(MODE5):
    X_PADDING5=int((KERNEL_WIDTH5-1/2))
    Y_PADDING5=int((KERNEL_HEIGHT5-1)/2)
else:
    X_PADDING5=0
    Y_PADDING5=0

OUT_CH5=10
OUT_WIDTH5=int((IN_WIDTH5+2*X_PADDING5-KERNEL_WIDTH5)/X_STRIDE5+1)
OUT_HEIGHT5=int((IN_HEIGHT5+2*Y_PADDING5-KERNEL_HEIGHT5)/Y_STRIDE5+1)
#print(OUT_WIDTH5, OUT_HEIGHT5)
xlnk=Xlnk();

ol=Overlay("Final.bit")
ol.ip_dict
ol.download()
conv=ol.Conv_0
pool=ol.Pool_0
print("Overlay download finish");

#input image
image=xlnk.cma_array(shape=(IN_HEIGHT1,IN_WIDTH1,IN_CH1),cacheable=0,dtype=np.float32)

#conv1
W_conv1=xlnk.cma_array(shape=(KERNEL_HEIGHT1,KERNEL_WIDTH1,IN_CH1,OUT_CH1),cacheable=0,dtype=np.float32)
b_conv1=xlnk.cma_array(shape=(OUT_CH1),cacheable=0,dtype=np.float32)
h_conv1=xlnk.cma_array(shape=(OUT_HEIGHT1,OUT_WIDTH1,OUT_CH1),cacheable=0,dtype=np.float32)
h_pool1=xlnk.cma_array(shape=(OUT_HEIGHT11,OUT_WIDTH11,OUT_CH11),cacheable=0,dtype=np.float32)

#conv2
W_conv2=xlnk.cma_array(shape=(KERNEL_HEIGHT2,KERNEL_WIDTH2,IN_CH2,OUT_CH2),cacheable=0,dtype=np.float32)
b_conv2=xlnk.cma_array(shape=(OUT_CH2),cacheable=0,dtype=np.float32)
h_conv2=xlnk.cma_array(shape=(OUT_HEIGHT2,OUT_WIDTH2,OUT_CH2),cacheable=0,dtype=np.float32)
h_pool2=xlnk.cma_array(shape=(OUT_HEIGHT21,OUT_WIDTH21,OUT_CH21),cacheable=0,dtype=np.float32)

#fc1
W_fc1=xlnk.cma_array(shape=(KERNEL_HEIGHT3, KERNEL_WIDTH3, IN_CH3, OUT_CH3),cacheable=0,dtype=np.float32)
b_fc1=xlnk.cma_array(shape=(OUT_CH3),cacheable=0,dtype=np.float32)
h_fc1=xlnk.cma_array(shape=(OUT_HEIGHT3,OUT_WIDTH3,OUT_CH3),cacheable=0,dtype=np.float32)

#fc2
W_fc2=xlnk.cma_array(shape=(KERNEL_HEIGHT4, KERNEL_WIDTH4, IN_CH4, OUT_CH4),cacheable=0,dtype=np.float32)
b_fc2=xlnk.cma_array(shape=(OUT_CH4),cacheable=0,dtype=np.float32)
h_fc2=xlnk.cma_array(shape=(OUT_HEIGHT4,OUT_WIDTH4,OUT_CH4),cacheable=0,dtype=np.float32)

#fc3
W_fc3=xlnk.cma_array(shape=(KERNEL_HEIGHT5, KERNEL_WIDTH5, IN_CH5, OUT_CH5),cacheable=0,dtype=np.float32)
b_fc3=xlnk.cma_array(shape=(OUT_CH5),cacheable=0,dtype=np.float32)
h_fc3=xlnk.cma_array(shape=(OUT_HEIGHT5,OUT_WIDTH5,OUT_CH5),cacheable=0,dtype=np.float32)


print("start initial");

#Initialize W, bias
w_conv1=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/W_conv1.bin",KERNEL_HEIGHT1*KERNEL_WIDTH1*IN_CH1*OUT_CH1)
w_conv1=w_conv1.reshape((KERNEL_HEIGHT1,KERNEL_WIDTH1,IN_CH1,OUT_CH1))
for i in range(KERNEL_HEIGHT1):
    for j in range(KERNEL_WIDTH1):
        for k in range(IN_CH1):
            for l in range(OUT_CH1):
                W_conv1[i][j][k][l]=w_conv1[i][j][k][l]
print("finish w_conv1");
B_conv1=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/b_conv1.bin",OUT_CH1)
for i in range(OUT_CH1):
    b_conv1[i]=B_conv1[i]
print("finish B_conv1");
w_conv2=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/W_conv2.bin",KERNEL_HEIGHT2*KERNEL_WIDTH2*IN_CH2*OUT_CH2)
w_conv2=w_conv2.reshape((KERNEL_HEIGHT2,KERNEL_WIDTH2,IN_CH2,OUT_CH2))
for i in range(KERNEL_HEIGHT2):
    for j in range(KERNEL_WIDTH2):
        for k in range(IN_CH2):
            for l in range(OUT_CH2):
                W_conv2[i][j][k][l]=w_conv2[i][j][k][l]
print("finish w_conv2");
B_conv2=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/b_conv2.bin",OUT_CH2)
for i in range(OUT_CH2):
    b_conv2[i]=B_conv2[i]
print("finish B_conv2");
w_fc1=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/W_fc1.bin",KERNEL_HEIGHT3*KERNEL_WIDTH3*IN_CH3*OUT_CH3)
w_fc1=w_fc1.reshape((KERNEL_HEIGHT3,KERNEL_WIDTH3,IN_CH3,OUT_CH3))
for i in range(KERNEL_HEIGHT3):
    for j in range(KERNEL_WIDTH3):
        for k in range(IN_CH3):
            for l in range(OUT_CH3):
                W_fc1[i][j][k][l]=w_fc1[i][j][k][l]
print("finish w_fc1");
B_fc1=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/b_fc1.bin",OUT_CH3)
for i in range(OUT_CH3):
    b_fc1[i]=B_fc1[i]
print("finish B_fc1");
w_fc2=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/W_fc2.bin",KERNEL_HEIGHT4*KERNEL_WIDTH4*IN_CH4*OUT_CH4)
w_fc2=w_fc2.reshape((KERNEL_HEIGHT4,KERNEL_WIDTH4,IN_CH4,OUT_CH4))
for i in range(KERNEL_HEIGHT4):
    for j in range(KERNEL_WIDTH4):
        for k in range(IN_CH4):
            for l in range(OUT_CH4):
                W_fc2[i][j][k][l]=w_fc2[i][j][k][l]
print("finish w_fc2");
B_fc2=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/b_fc2.bin",OUT_CH4)
for i in range(OUT_CH4):
    b_fc2[i]=B_fc2[i]
print("finish B_fc2");
w_fc3=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/W_fc3.bin",KERNEL_HEIGHT5*KERNEL_WIDTH5*IN_CH5*OUT_CH5)
w_fc3=w_fc3.reshape((KERNEL_HEIGHT5,KERNEL_WIDTH5,IN_CH5,OUT_CH5))
for i in range(KERNEL_HEIGHT5):
    for j in range(KERNEL_WIDTH5):
        for k in range(IN_CH5):
            for l in range(OUT_CH5):
                W_fc3[i][j][k][l]=w_fc3[i][j][k][l]
print("finish w_fc3");
B_fc3=readbinfile("/home/xilinx/jupyter_notebooks/pynq_1/data_LeNet5_float16/b_fc3.bin",OUT_CH5)
for i in range(OUT_CH5):
    b_fc3[i]=B_fc3[i]
print("finish B_fc3");

print("Finish initial")



print('test_images shape:', test_images.shape)
print(test_images.shape[0], 'test samples')


#train_data training set features, train_target training set corresponding label, batch_sizedef next_batch(train_data, train_target, batch_size):  
    #Shuffle the data set
    index = [ i for i in range(0,len(train_target)) ]  
    np.random.shuffle(index);  
    #Create an empty list of batch_data and batch_target
    batch_data = []; 
    batch_target = [];  
    #Add training set and label to empty list
    for i in range(0,batch_size):  
        batch_data.append(train_data[index[i]]);  
        batch_target.append(train_target[index[i]])  
    return batch_data, batch_target #Return


while(1):
    g=input("input enter to continue")
    break
test_times = 100
correct = 0
wrong = 0
wrong_num = []
wrong_no = []
real_num = []

for y in range(1,test_times+1):
    
    (batch_data, batch_target) = next_batch(test_images,test_labels,1);
    batch_data = np.array(batch_data,dtype=np.float32)
   
    batch_data=((batch_data.reshape((IN_HEIGHT1,IN_WIDTH1,IN_CH1))))
    image[:]=batch_data[:]/255
    
    start = time.clock()
    #conv1
    RunConv(conv,KERNEL_WIDTH1,KERNEL_HEIGHT1,X_STRIDE1,Y_STRIDE1,MODE1,RELU_EN1,image,W_conv1,b_conv1,h_conv1)
    
    RunPool(pool, KERNEL_WIDTH11, KERNEL_HEIGHT11, MODE11, h_conv1, h_pool1)
    # conv2
    
    RunConv(conv, KERNEL_WIDTH2, KERNEL_HEIGHT2, X_STRIDE2, Y_STRIDE2, MODE2, RELU_EN2, h_pool1, W_conv2, b_conv2,
         h_conv2)
    
    RunPool(pool, KERNEL_WIDTH21, KERNEL_HEIGHT21, MODE21, h_conv2, h_pool2)
    # fc1
    RunConv(conv, KERNEL_WIDTH3, KERNEL_HEIGHT3, X_STRIDE3, Y_STRIDE3, MODE3, RELU_EN3, h_pool2, W_fc1, b_fc1,
         h_fc1)
    # fc2
    RunConv(conv, KERNEL_WIDTH4, KERNEL_HEIGHT4, X_STRIDE4, Y_STRIDE4, MODE4, RELU_EN4, h_fc1, W_fc2, b_fc2,
         h_fc2)
    # fc3
    RunConv(conv, KERNEL_WIDTH5, KERNEL_HEIGHT5, X_STRIDE5, Y_STRIDE5, MODE5, RELU_EN5, h_fc2, W_fc3, b_fc3,
         h_fc3)

    elapsed = (time.clock() - start)
    print("Time used per image:",float(elapsed)) 
    MAX = h_fc3[0][0][0]
    result=0
    for i in range(1,OUT_CH5):
        if(h_fc3[0][0][i]>MAX):
            MAX=h_fc3[0][0][i]
            result=i
    print(y," Inferenced Number: "+str(result))
    print("   Real Number:", batch_target[0])
    

    if(result == batch_target[0]):
        correct = correct + 1
    else:
        wrong = wrong + 1
        wrong_no.append(y)
        wrong_num.append(result)
        real_num.append(batch_target[0])

print('Accuracy:',(correct/test_times) * 100,'%')
if((correct + wrong) == test_times):
    print("Correct num:",correct,"Wrong num:",wrong)
else:
    print("Wrong calculation, Please check your code!!!")
    print("Correct num:",correct,"Wrong num:",wrong)
print("Hardware run finish")

for j in range (0,len(wrong_no)):
    print("No.%s : wrong number: %s, real number: %s" %(wrong_no[j], wrong_num[j], real_num[j]))
 
  
