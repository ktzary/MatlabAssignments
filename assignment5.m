%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 5: Analyzing Isometric Strength Data
%
% Submitted By: Kelsey Zary
%
% Due: October 20th
%
% The purpose of this code is to
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This imports the file and sets the variables as column vectors
filename = 'C:\Users\Kelsey\Documents\Matlab Course\isok_data_6803.csv';
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile(filename, 2, inf);

% Function to calculate male and female individual means and group means
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(SubjectID, Gender, Day1, Day2, Day3);

% Function to find subjects who had increases in strength from day 1 to day
% 2 and day 2 to day 3
[day1toDay2] = dayComparator(SubjectID, Day1, Day2);

[day2toDay3] = dayComparator(SubjectID, Day2, Day3);

% Function to find the normalized group data for each day based on weight
[normDay1mean, normDay2mean, normDay3mean] = normalizeIsoCalc( Weight, Day1, Day2, Day3);

fileID = fopen('iso_results.csv', 'w');
fprintf(fileID, '%1s %11s %21s %31s %41s %51s %61s\n', 'SubjectID', 'Age', 'Gender', 'Weight', 'Day1', 'Day2', 'Day3');
fprintf(fileID, 



