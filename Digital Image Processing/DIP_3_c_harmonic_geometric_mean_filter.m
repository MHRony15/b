
clear all;
close all;
im = imread('H:\4Y1S\Digital Image Processing\circuit.jpg');
subplot(2,3,1)
imshow(im);

img = rgb2gray(im);
subplot(2,3,2)
imshow(img);

nimg = imnoise(img,'gaussian');
subplot(2,3,3)
imshow(nimg);
dimg = im2double(nimg);
m=5;
n=5;
hmf =(m*n)./imfilter(1./(dimg+eps),ones(m,n),'replicate');

subplot(2,3,4)
%output_img = mat2gray(abs(hmf)); 
imshow(hmf);
title('Harmonic mean filter');

%gmf =(imfilter(nimg,ones(m,n),'replicate')).^1./(m*n);
gmf = exp(imfilter(log(dimg), ones(m, n), 'replicate')) .^ (1/(m*n));
subplot(2,3,5)
imshow(gmf);
title('Geometric mean filter');
