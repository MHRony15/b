clc;
clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\pattarn.jpg');
img = im2bw(im,.5);
%img = imread('H:\4Y1S\Digital Image Processing\qrcode.jpg');
subplot(1,3,1)
imshow(img);
title('Original Image');
se = strel('line',11,90);
imgE = imerode(img,se);
boundC = img - imgE;
subplot(1,3,2)
imshow(boundC);

imgD = imdilate(img,se);
boundD = imgD-img;
subplot(1,3,3)
imshow(boundD);

