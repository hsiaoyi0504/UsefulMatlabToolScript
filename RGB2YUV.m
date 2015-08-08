function YUV=RGB2YUV(img)
%transform uint8 RGB image to uint8 YUV image
r=double(img(:,:,1));
g=double(img(:,:,2));
b=double(img(:,:,3));
YUV(:,:,1)=uint8(0.299*r+0.587*g+0.114*b);
YUV(:,:,2)=uint8(-0.168736*r-0.331264*g+0.5*b+128);
YUV(:,:,3)=uint8(0.5*r-0.418688*g-0.081312*b+128);
end