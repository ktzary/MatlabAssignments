function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(SubjectID, Gender, Day1, Day2, Day3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The genderIsoCalc function takes collected subject data and calculates
% individual isometric means across 3 days, separating males and females
% into 2 vectors. It also calculates the male and female group means.
%
% Inputs: SubjectID, Gender, Day1, Day2, Day3
%
% Outputs: maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,
% femaleGroupIsoMean
%
% Created by Kelsey Zary in Matlab R2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First need to convert gender into a matrix format so it can be used
Gender = cell2mat(Gender);

% This makes a matrix of the 3 days and finds the mean for each individual
%across the 3 days
DayMat = [Day1 Day2 Day3];
IndMean = mean(DayMat,2);

% Table creates a matrix so that SubjectID, Gender, and the Individual
% Means can all be checked
Table = [SubjectID Gender IndMean];

% Initializing the matrices
maleIsoIndMeans = zeros(size(Table));
femaleIsoIndMeans = zeros(size(Table));

% Sorting the subjects into groups of males and females
for i = 1:length(Gender)
    if Table(i,2) == 'M'
        maleIsoIndMeans(i,:) = (Table(i,:));
    elseif Gender(i) == 'F'
        femaleIsoIndMeans(i,:) = (Table(i,:));
    else
        disp('Invalid Gender, please input correct');
    end
end

% Calculating the group mean for males and females
maleGroupIsoMean = mean(maleIsoIndMeans(:,3));
femaleGroupIsoMean = mean(femaleIsoIndMeans(:,3));