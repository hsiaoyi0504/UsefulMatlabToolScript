clc;
clear;
close all;
rgb1 = imread('coloredChips.png');
imshow(rgb1);
yuv=RGB2YUV(rgb1);
figure;
imshow(yuv(:,:,1));
rgb2 = YUV2RGB(yuv);
figure;
imshow(rgb2);