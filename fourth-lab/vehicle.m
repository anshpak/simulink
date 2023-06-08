hole_depth = 0.15;
V = 20;
hole_start = 450;
hole_width = 1;
m = 1000;
k = inputdlg('Input stiffness', 'k');
k = string(k);
k = double(k);
% k = 1000;
c = inputdlg('Input damping coefficient', 'c');
c = string(c);
c = double(c);
hstart = 22.5;
hend = 22.55;
sim('L0401')
load disp.mat
load input_disp.mat
f = figure;
subplot(2, 1, 1);
plot(disp)
subplot(2, 1, 2);
plot(input_disp)