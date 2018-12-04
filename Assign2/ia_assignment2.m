%% Q1 b 

x = [2 3; 4 5];
h = [1 2; 2 1];

y = conv2(x,h);

disp('convolution gives output as = ')
disp(y);

%% Q3 b

r = [0 1];
pr = [0.8 0.2];
z = [1 2];
pz = [0.3 0.7];

s0 = tr(pr,1);
s0 = round(s0);
s1 = tr(pr,2);
s1 = round(s1);

gz1 = gz(pz,1);
%gz1 = round(gz1);
gz2 = gz(pz,2);
%gz2 = round(gz2);

gz_ = [gz1 gz2];

map_s0 = find_mapping(s0,gz_);
map_s1 = find_mapping(s1,gz_);

s00 = [r(1) map_s0];
s11 = [r(2) map_s1];

disp('Mapping are as follows = ')
disp('     r --> z')
disp(s00);
disp(s11);

