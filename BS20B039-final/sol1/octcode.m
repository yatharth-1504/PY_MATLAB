pkg load image;
I  = imread('FLOWER.jpg');
BW = im2bw(I);
binaryImage = BW;
binaryImage = imfill(binaryImage, 'holes'); 
binaryImage = bwareaopen(binaryImage, 2000);
boundaries = bwboundaries(binaryImage);
a = boundaries{1, 1};
figure(1)
plot(a(:,2),a(:,1))
a = get(gca,'Children');
xdata = get(a, 'XData');
xdata = xdata - 550;
ydata = get(a, 'YData');
ydata = ydata - 400;
figure(2)
hold on;
grid on
plot(xdata, ydata)
[THETA, RHO] = cart2pol(xdata,ydata);
figure(3)
polar(THETA,RHO)
