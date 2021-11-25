clc;
clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\text2.jpg');
img = im2bw(im,.3);
%img = imread('H:\4Y1S\Digital Image Processing\qrcode.jpg');
subplot(1,3,1)
imshow(img);
title('Original Image');
se = strel('line',11,90);
imgOpen = imopen(img,se);
subplot(1,3,2)
imshow(imgOpen);
title('After Opening');
imgClose = imclose(img,se);
subplot(1,3,3)
imshow(imgClose);
title('After Closeing');