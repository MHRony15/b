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
n=4;
d0=50;

[h, w] = size(img);
[u,v] = meshgrid(-(w/2):(w-1)/2, -(h/2):(h-1)/2);

d = sqrt(u.^2+v.^2);

blf = 1./(1.+(d./d0).^(2*n));
fimg = fftshift(fft2(nimg));
fb_img = fimg.*blf;
ifb_img = ifft2(fb_img);
output_img = mat2gray(abs(ifb_img)); 
subplot(2,3,4)
imshow(output_img);
title('Image With Butterworth filter')

glf = exp(-((d.*d)./(2.*d0.^2)));
fg_img = fimg.*glf;
ifg_img = ifft2(fg_img);
output_img = mat2gray(abs(ifg_img)); 
subplot(2,3,5)
imshow(output_img);
title('Image With Gaussian filter')



