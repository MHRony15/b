clc;
clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\qrcode.jpg');
subplot(1,3,1)
imshow(im);
title('Original Image');
se = strel('line',11,90);
img = imdilate(im,se);
 subplot(1,3,2)
imshow(img);
title('After dilation');

imgE = imerode(im,se);
subplot(1,3,3)
imshow(imgE);
title('After Erosion');