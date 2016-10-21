function [IndStrengthInc] = dayComparator(SubjectID, FirstDay, SecondDay)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function finds the subjects who had an increase in strength from the one session
% to the next 
%
% Input: SubjectID, First Day, Second Day
%
% Output: IndStrengthInc
%
% Created by Kelsey Zary in Matlab R2016a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First create an initial matrix and fill with zeros
StrengthMat = [SubjectID FirstDay SecondDay];
SubjectMat = zeros(size(StrengthMat));

% Next determine if the second day is greater than the first and replace
% the zeros with those values
for i = 1:length(StrengthMat)
    if StrengthMat(i,2) < StrengthMat(i,3)
        SubjectMat(i,:) = StrengthMat(i,:);
    end
end

% Finally create matrix of just the Subject ID's of subjects who fit the
% criteria
IndStrengthInc = SubjectMat(:,1);