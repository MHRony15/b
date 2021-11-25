clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\flower.jpg');
subplot(2,2,1)
imshow(im);
title('Original Image')

img = rgb2gray(im);
subplot(2,2,2)
imshow(img);
title('Gray Scale Image')

nimg = imnoise(img,'gaussian');
subplot(2,2,3)
imshow(nimg);
title('Image With Gaussian Noise')
[h,w] = size(img);
d0 = 200;
[u,v] = meshgrid(-(w/2):(w-1)/2, -(h/2):(h-1)/2 );
d =sqrt(u.^2+v.^2);
ilf = d<d0;
f_img = fftshift(fft2(nimg));
fi_img = f_img.*ilf;
ifi_img = ifft2(fi_img);
output_img = mat2gray(abs(ifi_img));
subplot(2,2,4)
imshow(output_img);
title('Image With Gaussian Noise')


