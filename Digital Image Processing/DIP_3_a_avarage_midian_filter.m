im = imread('H:\4Y1S\Digital Image Processing\originalImage.jpg');
subplot(2,3,1)
imshow(im);
title('Original image')

img = rgb2gray(im);
subplot(2,3,2)
imshow(img);
title('Gray Scale Image')

Nimg = imnoise(img,'salt & pepper');
subplot(2,3,3)
imshow(Nimg)
title('Image with solt and pepper Noise')

filter = ones(5,5)/20;

AverageFiltered = imfilter(Nimg, filter, 'symmetric');
subplot(2,3,4)
imshow(AverageFiltered);
title('AverageFiltered')

MedianFiltered = imfilter(Nimg, [5,5]);
subplot(2,3,5)
imshow(MedianFiltered);
title('MedianFiltered')