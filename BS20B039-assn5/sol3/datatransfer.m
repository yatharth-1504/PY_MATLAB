fid = fopen("mydata.dat");
readdata = textscan(fid,"%s %s %s",'Delimiter','|');
readdata{1,1}(1,1),readdata{1,2}(1, 1), readdata{1,3}(1,1)
readdata{1,1}(2,1),readdata{1,2}(2,1), readdata{1,3}(2,1)
readdata{1,1}(3,1),readdata{1,2}(3,1), readdata{1,3}(3,1)
readdata{1,1}(4,1),readdata{1,2}(4,1), readdata{1,3}(4,1)