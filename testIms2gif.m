fileList = cell(3,1);
fileList{1}='../HDR_Dataset/stack/venice_canal_exp_0.jpg';
fileList{2}='../HDR_Dataset/stack/venice_canal_exp_1.jpg';
fileList{3}='../HDR_Dataset/stack/venice_canal_exp_2.jpg';
ims2gif(fileList,'test',0.5);