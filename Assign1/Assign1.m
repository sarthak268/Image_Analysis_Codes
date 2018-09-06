clear all;
close all;
clc;
%% Q4 a

clc;

input_image = [[6,7; 8,9]];
disp('Input = ')
disp(input_image);
output_image = zeros(4,4);

for i=1:4
    for j=1:4
        l = round(i/2);
        b = round(j/2);
        output_image(i,j) = input_image(l,b);
    end
end

disp('Output = ')
disp(output_image)

%% Q4 b

clc

image_input = imread('cameraman.tif');
size1 = size(image_input);
output_image = zeros(2.*size1);

[l1, b1] = size(image_input);
[l, b] = size(output_image);

for i=1:l1
   for j=1:b1
       output_image(2*i,2*j) = image_input(i,j);
       output_image(2*i,2*j-1) = image_input(i,j);
       output_image(2*i-1,2*j) = image_input(i,j);
       output_image(2*i-1,2*j-1) = image_input(i,j);
   end
end

%imshow(image_input)
imshow(output_image, [])
