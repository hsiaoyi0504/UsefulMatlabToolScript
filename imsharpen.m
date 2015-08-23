function [imgOut]=imsharpen(imgIn)
%Input Image
%Preallocate the matrices with zeros
I1=imgIn;
I=zeros(size(imgIn));
I2=zeros(size(imgIn));

%Filter Masks
F1=[0 1 0;1 -4 1; 0 1 0];
F2=[1 1 1;1 -8 1; 1 1 1];

%Padarray with zeros
imgIn=padarray(imgIn,[1,1]);
imgIn=double(imgIn);

%Implementation of the equation of Laplacian
for i=1:size(imgIn,1)-2
    for j=1:size(imgIn,2)-2
       
        I(i,j)=sum(sum(F1.*imgIn(i:i+2,j:j+2)));
       
    end
end
%filtered
figure,imshow(I);
%Sharpenend Image
imgOut=I1-I;