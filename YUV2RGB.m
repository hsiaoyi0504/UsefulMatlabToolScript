function RGB=YUV2RGB(img)
%transform uint8 YUV image to uint8 RGB image
y=double(img(:,:,1));
u=double(img(:,:,2));
v=double(img(:,:,3));
RGB(:,:,1)=uint8(y+1.402*(v-128));
RGB(:,:,2)=uint8(y-0.34414*(u-128)-0.71414*(v-128));
RGB(:,:,3)=uint8(y+1.772*(u-128));
end