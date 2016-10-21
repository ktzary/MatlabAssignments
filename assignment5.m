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
close all
% Now the script can run with no other variables or files being accessed on
% accident

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

% This fills in the rest of the column vectors with zero so it can be
% included in the table with the others
maleGroupIsoMean(2:25,1) = 0;
femaleGroupIsoMean(2:25,1) = 0;
normDay1mean(2:25,1) = 0;
normDay2mean(2:25,1) = 0;
normDay3mean(2:25,1) = 0;

% This puts all the calculated/variable data in one table and exports it as
% a csv
AllData = table(SubjectID, Age, Gender, Weight, Day1, Day2, Day3, maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
writetable(AllData, 'iso_results.csv');
