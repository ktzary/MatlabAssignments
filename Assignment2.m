%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2: Textbook Exercises
%
% Submitted by: Kelsey Zary
%
% Due: September 15th
%
% There are 3 sections to this assignment, one for Chapters 1-3 in the
% textbook. 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Chapter 1 Exercises
%
% Complete Exercises 1-6, 11-15, 22, 24-27
%
% 1.)
Copper = 63.55;

% 2.)
myage = 25;
myage = myage - 2;
myage = myage + 1;

% 3.)
A = namelengthmax;

% 4.)
lbs = 2;
oz = 32;
who
whos
clear oz
who
whos

% 5.)
min32 = intmin('uint32');
max32 = intmax('uint32');
min64 = intmin('uint64');
max64 = intmax('uint64');

% 6.)
val6 = 24;
val6i = int32(val6);

% 11.)
pounds = 6;
kilos = pounds/2.2;

% 12.)
ftemp = 72;
ctemp = (ftemp - 32) * (5/9);

% 13.)
inch = 12;
cm = 2.54 * inch;

% 14.)
val14 = sind(90);
val14i = sin(1.5707);

% 15.)
R1 = .2;
R2 = 3;
R3 = .8;
RT = (1/((1/R1) + (1/R2) + (1/R3)));

% 22.) 
% Uppercase

% 24.)
% 'b' >= 'c' - 1 would equal 1
% 3 == 2 + 1 would equal 1
% (3 ==2) + 1 would equal 0
% xor(5 < 6, 8 > 4) would equal 0

% 25.)
x = 3;
y = 7;
val25 = xor(x > 5, y < 10);

% 26.)
val26 = (3*10^5 == 3e5);

% 27.)
val27 = log10(10000);

%% Chapter 2 Exercises

% Complete exercises 1-4, 6-10, 12, 23, 26, 30, 31

% 1.)
vec1a = 2:7;
vec1b = 1.1000:.2000:1.7000;
vec1c = 8:-2:2;

% 2.)
vec2 = linspace(0,2*pi,50);

% 3.)
vec3 = linspace(2,3,6);

% 4.)
vec4a1 = linspace(-5,-1,5);
vec4a2 = -5:1:-1;

vec4b1 = linspace(5,9,3);
vec4b2 = 5:2:9;

vec4c1 = linspace(8,4,3);
vec4c2 = 8:-2:4;

% 6.)
vec6r = -1:.5:1;
vec6c = vec6r';

% 7.)
x = 1:7;
odd = x(1:2:end);

% 8.)
mat8 = [7:10;12:-2:6];
val8a = mat8(1,3);
val8b = mat8(2,:);
val8c = mat8(:,1:2);

% 9.)
mat9 = rand(2,4);
num9 = numel(mat9);

% 10.)
mat10 = randi(10,2,4);
mat10(1,:) = [1:4];
mat10(:,3) = [6:7];

% 12.)
rows12 = randi(5,1);
cols12 = randi(5,1);
mat12 = zeros(rows12,cols12);

% 23.)
vec23 = 3:2:11;
val23 = sum(vec23);

% 26.)
num26 = 3:2:9;
den26 = 1:4;
vec26 = num26 ./ den26;

% 30.)
vec30 = randi([-10,10],1,5);
val30a = vec30 - 3;
val30 = find(vec30 >= 0);
    val30b = numel(val30);
val30c = abs(vec30);
val30d = max(vec30);

% 31.)
vec31 = randi([-10,10],3,5);
val31a = max(vec31);  %this is max for each col
val31b = max(vec31,[],2);    % this is max for each row
val31c = max(max(vec31));    % this is max for the entire matrix

%% Chapter 3 Exercises

% Complete Exercises 1, 4, 6, 8, 13

% 1.)  This findsthe volume of a hollow sphere using any unit of measurement
inrad = 3;
% inrad is the inner radius of the sphere
outrad = 4;
% outrad is the outer radius of the sphere
sphvol = ((4*pi)/3)*(outrad^3 - inrad^3);
% sphvol is the volume of the hollow sphere

% 4.) This allows a user to input a matrix when prompted
mat4 = input('Enter a matrix:');

% 6.) This demonstrates usage of the fprintf function
Ques6a = fprintf('%f\n', 12345.6789);
Ques6b = fprintf('%10.4f\n', 12345.6789);
Ques6c = fprintf('%10.2f\n', 12345.6789);
Ques6d = fprintf('%6.4f\n', 12345.6789);
Ques6e = fprintf('%2.4f\n', 12345.6789);

% 8.) This is a formula to calculate flowrate in cubic feet
% per second when inputed as cubic meters per second
flowm = input('Enter the flow in m^3/s:'); 
flowf = flowm/.028;  %This converts the flow rate in cubic meters to cubic feet
fprintf('A flow rate of %2.3f meters per sec\nis equivalent to %3.3f feet per sec \n',flowm,flowf);

% 13.) This calculates a unit vector in three dimensional space
x = input('What is the x value:');
y = input('What is the y value:');
z = input('What is the z value:');
uvec = [x,y,z]./ sqrt(x.^2 + y.^2 + z.^2);
% uvec gives the unit vector