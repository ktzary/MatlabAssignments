function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Kelsey Zary
%
%         DUE: November 3
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

% I found this bug by testing to see what would happen if I put anything
% other than a number in. I fixed it so that it enters it as a string and
% then converts it to a double
level = input('Enter level (1-3): ','s'); 
level = str2double(level);

% I found this bug by attempting to run the program and getting stuck in a
% loop. I fixed it by changing the 'or' statements to 'and' statements so
% that if any of them are true the program moves on as you can only input
% one level.
while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ','s');
level = str2double(level);
end


% set highest secret number based on level selected

% I found this bug by scanning the code and comparing it to the moderate
% level, need a double equal sign here to check if true, I fixed the sign
% usage
if level == beginner                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
% I found this bug by scanning variable names throughout the code and
% checking them, I changed it to the correct variable name to match the
% other cases
highest = advancedHighest;          
end

% randomly select secret number between 1 and highest for level of play
% I found this error by scanning the program and seeing that this would
% always lead to the hightest number being used as the random number. I
% fixed it by taking out the + 1 portion and shifting it over, otherwise it
% would go down to zero.
secretNumber = floor((rand() * highest) + 1);     

% initialize number of guesses and User_guess
% I found this bug by running the program and realizing that the number of
% tries was one too high each time. I fixed it by initializing it at 0
% instead of 1
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

%I found this bug by checking to see if the same problem that existed
%above would exist here. I was unable to solve it in the time specified as
%all attempts failed to correct the issue
fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');

% Found this bug by getting stuck in a loop, it didn't allow the highest
% number to be a valid guess. I changed the sign so that the hightest
% number could be included.
while userGuess < 1 || userGuess > highest

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made
numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

% I found this bug by scanning the program. I changed the sign so that if
% the guess was below the number it would show the appropriate message.
if userGuess < secretNumber 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
% Found this bug by scanning the code. Added numOfTries to this statement
% so that it could show how many tries it took to guess the secret number
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries); 


% I found this bug by scanning the script and paying attention to the
% error codes at the side of the window. I fixed it by adding an end
% statement
end % of if statement loop

end  % of guessing while loop

% I found this bug by scanning the code. I moved this statement to be outside the while loop so that it wouldn't
% appear before the individual had guessed the secret number
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n'); 

% end of game