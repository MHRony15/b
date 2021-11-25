clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\flower.jpg');
subplot(2,3,1)
imshow(im);
title('Original Image')

img = rgb2gray(im);
subplot(2,3,2)
imshow(img);
title('Gray Scale Image')

nimg = imnoise(img,'gaussian');
subplot(2,3,3)
imshow(nimg);
title('Image With Gaussian Noise')