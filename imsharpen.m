%sharpening the image by minus the laplacian (second derivative)
function [imgOut]=imsharpen(imgIn,method)
I1=imgIn;

%Preallocate the matrices with zeros
I=zeros(size(imgIn));

%Filter Masks
if method==1
	F=[0 1 0; 1 -4 1; 0 1 0];
elseif method==2
	F=[1 1 1; 1 -8 1; 1 1 1];
end


%Padarray with zeros
imgIn=padarray(imgIn,[1,1]);
imgIn=double(imgIn);

%Implementation of the equation of Laplacian
for i=1:size(imgIn,1)-2
    for j=1:size(imgIn,2)-2
        I(i,j)=sum(sum(F.*imgIn(i:i+2,j:j+2)));
    end
end
%filtered Image
I=uint8(I);
%Sharpenend Image
imgOut=I1-I;