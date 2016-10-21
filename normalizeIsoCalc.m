function [Norm1, Norm2, Norm3] = normalizeIsoCalc(Weight, Day1, Day2, Day3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function normalizes mean data of each day by weight, no matter which
% gender
%
% Inputs: SubjectID, Weight, Day1, Day2, Day3
%
% Outputs: Norm1, Norm2, Norm3
%
% Created by Kelsey Zary in Matlab2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First initialize the vectors
WeightMat1 = zeros(size(Day1));
WeightMat2 = zeros(size(Day2));
WeightMat3 = zeros(size(Day3));

% Next calculate individual normalized values for each day
for i = 1:length(Weight)
    WeightMat1(i,1) = Day1(i) / Weight(i);
    WeightMat2(i,1) = Day2(i) / Weight(i);
    WeightMat3(i,1) = Day3(i) / Weight(i);
end

% Next calculate group means of individual normalized values for each day
Norm1 = mean(WeightMat1);
Norm2 = mean(WeightMat2);
Norm3 = mean(WeightMat3);
