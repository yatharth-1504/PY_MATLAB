A = imread("pp.jpeg");
B = im2double(A);
gray_img = (...
 0.298936 * B(:,:,1) +...
 0.587043 * B(:,:,2) +...
 0.114021 * B(:,:,3));
figure(1),imshow(gray_img)
contour(gray_img,40)
%figure(2);
%open('output.ofig');
%a = get(gca,'Children');
%xdata = get(a, 'XData');
%ydata = get(a, 'YData');
%figure(3);
%plot(xdata,ydata)
