clc
clear all
close all
AA = imread('color_wheel.png');
A = im2double(AA);
BB = imread('Mario.jpg');
B = im2double(BB);
imshow (A);
title('First Image')
figure
imshow(B);
title('Second Image')

% creating the alpha image
[m n d] = size(A);
C = m/2;
alphaA = zeros(m, n , d);

for i = 1:m
    for j = 1:n
        distance = sqrt(((C-i)^2) + ((C-j)^2));
        if (distance< (C/2))
            alphaA(i , j, :) = 1;
        elseif (distance > C)
            alphaA(i , j, :) = 0;
        else
            alphaA(i, j, :) = ((C - distance)/100);
        end
    end
end
figure 
imshow(alphaA)
title('Alpha Image')

%matting
C1(m,n,d) = zeros();
for k = 1:3
    C1(:,:,k) = (((1-alphaA(:,:,k)).*A(:,:,k))+(alphaA(:,:,k).*B(:,:,k)));
end
C = C1;
figure
imshow(C)
title('Effect of compositing and matting');
