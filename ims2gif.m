function []=ims2gif(fileList,fileName,duration)
	%this function create a gif from a series of images with equal duration
	fileListLength=size(fileList);
	for i=1:fileListLength
		img=imread(fileList{i});
    	[X,map]=rgb2ind(img,256);
    	if i==1
        	imwrite(X,map,[fileName '.gif'],'gif','writeMode','overwrite','delaytime',duration,'loopcount',inf);
    	else
        	imwrite(X,map,[fileName '.gif'],'gif','writeMode','append','delaytime',duration);
    	end
	end
end