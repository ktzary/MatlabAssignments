%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 3: Tic - Tac - Toe
%
% Submitted by: Kelsey Zary
%
% Due: September 27th
%
% The purpose of this code is to play a game of tic tac toe with the
% computer
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The code allows for one second attempt with the beginning instructions,
% if they still have trouble then they are told to read the instructions
% better next time
welcome = 'Welcome to Tic Tac Toe';
disp(welcome);

% GB is the gameboard, set up as a cell array
GB = {1 2 3; 4 5 6; 7 8 9};
disp(GB);

% This is to tell the user that the computer will take the first move
taunt = 'As I am but a simple machine, I shall go first against your superior intellect';
disp(taunt);

GB{1,1} = 'X';   % Computer's first move
disp(GB);

% The example is displayed to show the user how to input their selection
example = 'How to input a move: Select the number and type it in surrounded by apostrophes';
disp(example);

taken = 'This spot was already taken, why did you try to cheat';  % Displayed if the user selects a spot that is already occupied
invalid = 'This spot does not exist, are all humans this stubborn?';   % Displayed if the user does not input a spot on the board
invalid2 = 'Please read the instructions next time before challenging me'; % Displayed if user inputs incorrectly 2 times

CompWin = 'Perhaps I was the smarter one after all';  % Displayed if computer wins
UserWin = 'What? How? YOU MUST HAVE HACKED ME!';   % Displayed if user wins
Tie = 'Hmm, I seem to have met an equal opponent';  % Displayed if there is a tie

prompt = 'Where would you like to move?';
prompt2 = 'Please try again and make sure there are apostrophes included';
UserMove1 = input(prompt);
switch(UserMove1);  % User's first move, starts a series of nested moves
    case '1'
        disp(taken);
    case '2'
        GB{1,2} = 'O';
        disp(GB);
        GB{2,1} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                disp(taken);
            case '3'
                GB{1,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '4'
                disp(taken);
            case '5'
                GB{2,2} = 'O';
                disp(GB);
                GB{3,1} = 'X';  % Computer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{2,2} = 'X';  % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        GB{1,3} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '4'
                        disp(taken);
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        disp(taken);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '3'
        GB{1,3} = 'O';
        disp(GB);
        GB{2,1} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '3'
                disp(taken);
            case '4'
                disp(taken);
            case '5'
                GB{2,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Compuer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        GB{1,2} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '3'
                        disp(taken);
                    case '4'
                        disp(taken);
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        disp(taken);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '4'
        GB{2,1} = 'O';
        disp(GB);
        GB{1,2} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2)
            case '1'
                disp(taken);
            case '2'
                disp(taken);
            case '3'
                GB{1,3} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        disp(taken);
                    case '4'
                        disp(taken);
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        GB{3,1} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '4'
                disp(taken);
            case '5'
                GB{2,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1.3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '5'
        GB{2,2} = 'O';
        disp(GB);
        GB{1,2} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                disp(taken);
            case '3'
                GB{1,3} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        disp(taken);
                    case '4'
                        GB{2,1} = 'O';
                        disp(GB);
                        GB{2,3} = 'X'; % Computer Move
                        disp(GB);
                        UserMove4 = input(prompt);
                        switch(UserMove4);
                            case '1'
                                disp(taken);
                            case '2'
                                disp(taken);
                            case '3'
                                disp(taken);
                            case '4'
                                disp(taken);
                            case '5'
                                disp(taken);
                            case '6'
                                disp(taken);
                            case '7'
                                disp(taken);
                            case '8'
                                GB{3,2} = 'O';
                                disp(GB);
                                GB{3,3} = 'X'; % Computer Move
                                disp(GB);
                                disp(Tie);
                            case '9'
                                GB{3,3} = 'O';
                                disp(GB);
                                GB{3,2} = 'X'; % Computer Move
                                disp(GB);
                                disp(Tie);
                            otherwise
                                disp(invalid);
                        end
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{2,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        disp(taken);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{2,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{2,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '4'
                GB{2,1} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '5'
                disp(taken);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '6'
        GB{2,3} = 'O';
        disp(GB);
        GB{2,2} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{3,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '3'
                GB{1,3} = 'O';
                disp(GB);
                GB{3,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '4'
                GB{2,1} = 'O';
                disp(GB);
                GB{3,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '5'
                disp(taken);
            case '6'
                disp(taken);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{3,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{3,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        GB{1,2} = 'O';
                        disp(GB);
                        GB{3,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '3'
                        disp(taken);
                    case '4'
                        GB{2,1} = 'O';
                        disp(GB);
                        GB{1,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '5'
                        disp(taken);
                    case '6'
                        disp(taken);
                    case '7'
                        GB{3,1} = 'O';
                        disp(GB);
                        GB{1,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{1,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        disp(taken);
                    otherwise
                        disp(invalid);
                end
            otherwise
                disp(invalid);
        end
    case '7'
        GB{3,1} = 'O';
        disp(GB);
        GB{1,2} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                disp(taken);
            case '3'
                GB{1,3} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        disp(taken);
                    case '4'
                        GB{2,1} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        disp(taken);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{3,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '4'
                GB{2,1} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '5' 
                GB{2,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                disp(taken);
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '8'
        GB{3,2} = 'O';
        disp(GB);
        GB{1,3} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        disp(taken);
                    case '4'
                        GB{2,1} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '5'
                        disp(taken);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{3,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        GB{3,1} = 'O';
                        disp(GB);
                        GB{3,3} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '8'
                        disp(taken);
                    case '9'
                        GB{3,3} = 'O';
                        disp(GB);
                        GB{3,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    otherwise
                        disp(invalid);
                end
            case '3'
                disp(taken);
            case '4'
                GB{2,1} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '5'
                GB{2,2} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '8'
                disp(taken);
            case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            otherwise
                disp(invalid);
        end
    case '9'
        GB{3,3} = 'O';
        disp(GB);
        GB{1,3} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt);
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt);
                switch(UserMove3);
                    case '1'
                        disp(taken);
                    case '2'
                        disp(taken);
                    case '3'
                        disp(taken);
                    case '4'
                        GB{2,1} = 'O';
                        disp(GB);
                        GB{2,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '5'
                        GB{2,2} = 'O';
                        disp(GB);
                        GB{2,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '6'
                        GB{2,3} = 'O';
                        disp(GB);
                        GB{2,1} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '7'
                        disp(taken);
                    case '8'
                        GB{3,2} = 'O';
                        disp(GB);
                        GB{2,2} = 'X'; % Computer Move
                        disp(GB);
                        disp(CompWin);
                    case '9'
                        disp(taken);
                    otherwise
                        disp(invalid);
                end
            case '3'
                disp(taken);
            case '4'
                GB{2,1} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '5'
                GB{2,2} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                disp(CompWin);
            case '9'
                disp(taken);
            otherwise
                disp(invalid);
        end
    otherwise % This section of the code is to allow the user a second chance if they mess up
        UserMove1 = input(prompt2);
        switch(UserMove1);  % User's first move
             case '1'
                  disp(taken);
             case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{2,1} = 'X'; % Computer Move
                disp(GB);
                UserMove2 = input(prompt);
                switch(UserMove2);
                    case '1'
                       disp(taken);
                    case '2'
                       disp(taken);
                   case '3'
                       GB{1,3} = 'O';
                       disp(GB);
                       GB{3,1} = 'X'; % Computer Move
                       disp(GB);
                       disp(CompWin);
                   case '4'
                       disp(taken);
                   case '5'
                       GB{2,2} = 'O';
                       disp(GB);
                       GB{3,1} = 'X';  % Computer Move
                       disp(GB);
                       disp(CompWin);
                   case '6'
                       GB{2,3} = 'O';
                       disp(GB);
                       GB{3,1} = 'X'; % Computer Move
                       disp(GB);
                       disp(CompWin);
                   case '7'
                      GB{3,1} = 'O';
                      disp(GB);
                      GB{2,2} = 'X';  % Computer Move
                      disp(GB);
                      UserMove3 = input(prompt);
                      switch(UserMove3);
                          case '1'
                                disp(taken);
                          case '2'
                               disp(taken);
                          case '3'
                               GB{1,3} = 'O';
                               disp(GB);
                               GB{2,3} = 'X'; % Computer Move
                               disp(GB);
                               disp(CompWin);
                          case '4'
                                disp(taken);
                          case '5'
                                disp(taken);
                          case '6'
                                GB{2,3} = 'O';
                                disp(GB);
                                GB{3,3} = 'X'; % Computer Move
                                disp(GB);
                                disp(CompWin);
                          case '7'
                                disp(taken);
                          case '8'
                                GB{3,2} = 'O';
                                disp(GB);
                                GB{2,3} = 'X'; % Computer Move
                                disp(GB);
                                disp(CompWin);
                          case '9'
                                GB{3,3} = 'O';
                                disp(GB);
                                GB{2,3} = 'X'; % Computer Move
                                disp(GB);
                                disp(CompWin);
                          otherwise
                                disp(invalid2);
                      end
                  case '8'
                      GB{3,2} = 'O';
                      disp(GB);
                      GB{3,1} = 'X'; % Computer Move
                      disp(GB);
                      disp(CompWin);
                  case '9'
                      GB{3,3} = 'O';
                      disp(GB);
                      GB{3,1} = 'X'; % Computer Move
                      disp(GB);
                      disp(CompWin);
                  otherwise
                        disp(invalid2);
                end
         case '3'
              GB{1,3} = 'O';
              disp(GB);
              GB{2,1} = 'X'; % Computer Move
              disp(GB);
              UserMove2 = input(prompt);
              switch(UserMove2);
                   case '1'
                         disp(taken);
                   case '2'
                         GB{1,2} = 'O';
                         disp(GB);
                         GB{3,1} = 'X'; % Computer Move
                         disp(GB);
                         disp(CompWin);
                   case '3'
                         disp(taken);
                   case '4'
                         disp(taken);
                   case '5'
                         GB{2,2} = 'O';
                         disp(GB);
                         GB{3,1} = 'X'; % Compuer Move
                         disp(GB);
                         disp(CompWin);
                   case '6'
                         GB{2,3} = 'O';
                         disp(GB);
                         GB{3,1} = 'X'; % Computer Move
                         disp(GB);
                         disp(CompWin);
                   case '7'
                         GB{3,1} = 'O';
                         disp(GB);
                         GB{2,2} = 'X'; % Computer Move
                         disp(GB);
                         UserMove3 = input(prompt);
                         switch(UserMove3);
                             case '1'
                                   disp(taken);
                             case '2'
                                   GB{1,2} = 'O';
                                   disp(GB);
                                   GB{2,3} = 'X'; % Computer Move
                                   disp(GB);
                                   disp(CompWin);
                             case '3'
                                   disp(taken);
                             case '4'
                                   disp(taken);
                             case '5'
                                   disp(taken);
                             case '6'
                                   GB{2,3} = 'O';
                                   disp(GB);
                                   GB{3,3} = 'X'; % Computer Move
                                   disp(GB);
                                   disp(CompWin);
                             case '7'
                                   disp(taken);
                             case '8'
                                   GB{3,2} = 'O';
                                   disp(GB);
                                   GB{2,3} = 'X'; % Computer Move
                                   disp(GB);
                                   disp(CompWin);
                             case '9'
                                   GB{3,3} = 'O';
                                   disp(GB);
                                   GB{2,3} = 'X'; % Computer Move
                                   disp(GB);
                                   disp(CompWin);
                             otherwise
                                   disp(invalid2);
                         end
                   case '8'
                         GB{3,2} = 'O';
                         disp(GB);
                         GB{3,1} = 'X'; % Computer Move
                         disp(GB);
                         disp(CompWin);
                   case '9'
                         GB{3,3} = 'O';
                         disp(GB);
                         GB{3,1} = 'X'; % Computer Move
                         disp(GB);
                         disp(CompWin);
                  otherwise
                         disp(invalid2);
              end
         case '4'
               GB{2,1} = 'O';
               disp(GB);
               GB{1,2} = 'X'; % Computer Move
               disp(GB);
               UserMove2 = input(prompt);
               switch(UserMove2)
                    case '1'
                          disp(taken);
                    case '2'
                          disp(taken);
                    case '3'
                          GB{1,3} = 'O';
                          disp(GB);
                          GB{2,2} = 'X'; % Computer Move
                          disp(GB);
                          UserMove3 = input(prompt);
                          switch(UserMove3);
                               case '1'
                                     disp(taken);
                               case '2'
                                     disp(taken);
                               case '3'
                                     disp(taken);
                               case '4'
                                     disp(taken);
                               case '5'
                                     disp(taken);
                               case '6'
                                     GB{2,3} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '7'
                                     GB{3,1} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '8'
                                     GB{3,2} = 'O';
                                     disp(GB);
                                     GB{3,3} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '9'
                                     GB{3,3} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                              otherwise
                                     disp(invalid2);
                          end
                     case '4'
                           disp(taken);
                     case '5'
                           GB{2,2} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '6'
                           GB{2,3} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '7'
                           GB{3,1} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '8'
                           GB{3,2} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '9'
                           GB{3,3} = 'O';
                           disp(GB);
                           GB{1.3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                   otherwise
                           disp(invalid2);
               end
           case '5'
                 GB{2,2} = 'O';
                 disp(GB);
                 GB{1,2} = 'X'; % Computer Move
                 disp(GB);
                 UserMove2 = input(prompt);
                 switch(UserMove2);
                    case '1'
                          disp(taken);
                    case '2'
                          disp(taken);
                    case '3'
                          GB{1,3} = 'O';
                          disp(GB);
                          GB{3,1} = 'X'; % Computer Move
                          disp(GB);
                          UserMove3 = input(prompt);
                          switch(UserMove3);
                               case '1'
                                     disp(taken);
                               case '2'
                                     disp(taken);
                               case '3'
                                     disp(taken);
                               case '4'
                                     GB{2,1} = 'O';
                                     disp(GB);
                                     GB{2,3} = 'X'; % Computer Move
                                     disp(GB);
                                     UserMove4 = input(prompt);
                                     switch(UserMove4);
                                          case '1'
                                                disp(taken);
                                          case '2'
                                                disp(taken);
                                          case '3'
                                                disp(taken);
                                          case '4'
                                                disp(taken);
                                          case '5'
                                                disp(taken);
                                          case '6'
                                                disp(taken);
                                          case '7'
                                                disp(taken);
                                          case '8'
                                                GB{3,2} = 'O';
                                                disp(GB);
                                                GB{3,3} = 'X'; % Computer Move
                                                disp(GB);
                                                disp(Tie);
                                          case '9'
                                                GB{3,3} = 'O';
                                                disp(GB);
                                                GB{3,2} = 'X'; % Computer Move
                                                disp(GB);
                                                disp(Tie);
                                         otherwise
                                                disp(invalid2);
                                     end
                                 case '5'
                                       disp(taken);
                                 case '6'
                                       GB{2,3} = 'O';
                                       disp(GB);
                                       GB{2,1} = 'X'; % Computer Move
                                       disp(GB);
                                       disp(CompWin);
                                 case '7'
                                       disp(taken);
                                 case '8'
                                       GB{3,2} = 'O';
                                       disp(GB);
                                       GB{2,1} = 'X'; % Computer Move
                                       disp(GB);
                                       disp(CompWin);
                                 case '9'
                                       GB{3,3} = 'O';
                                       disp(GB);
                                       GB{2,1} = 'X'; % Computer Move
                                       disp(GB);
                                       disp(CompWin);
                              otherwise
                                       disp(invalid2);
                          end
                       case '4'
                             GB{2,1} = 'O';
                             disp(GB);
                             GB{1,3} = 'X'; % Computer Move
                             disp(GB);
                             disp(CompWin);
                       case '5'
                             disp(taken);
                       case '6'
                             GB{2,3} = 'O';
                             disp(GB);
                             GB{1,3} = 'X'; % Computer Move
                             disp(GB);
                             disp(CompWin);
                       case '7'
                             GB{3,1} = 'O';
                             disp(GB);
                             GB{1,3} = 'X'; % Computer Move
                             disp(GB);
                             disp(CompWin);
                       case '8'
                             GB{3,2} = 'O';
                             disp(GB);
                             GB{1,3} = 'X'; % Computer Move
                             disp(GB);
                             disp(CompWin);
                       case '9'
                             GB{3,3} = 'O';
                             disp(GB);
                             GB{1,3} = 'X'; % Computer Move
                             disp(GB);
                             disp(CompWin);
                     otherwise
                             disp(invalid2);
                 end
          case '6'
                GB{2,3} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove2 = input(prompt);
                switch(UserMove2);
                      case '1'
                            disp(taken);
                      case '2'
                            GB{1,2} = 'O';
                            disp(GB);
                            GB{3,3} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '3'
                            GB{1,3} = 'O';
                            disp(GB);
                            GB{3,3} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '4'
                            GB{2,1} = 'O';
                            disp(GB);
                            GB{3,3} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '5'
                            disp(taken);
                      case '6'
                            disp(taken);
                      case '7'
                            GB{3,1} = 'O';
                            disp(GB);
                            GB{3,3} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '8'
                            GB{3,2} = 'O';
                            disp(GB);
                            GB{3,3} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '9'
                            GB{3,3} = 'O';
                            disp(GB);
                            GB{1,3} = 'X'; % Computer Move
                            disp(GB);
                            UserMove3 = input(prompt);
                            switch(UserMove3);
                               case '1'
                                     disp(taken);
                               case '2'
                                     GB{1,2} = 'O';
                                     disp(GB);
                                     GB{3,1} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '3'
                                     disp(taken);
                               case '4'
                                     GB{2,1} = 'O';
                                     disp(GB);
                                     GB{1,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '5'
                                     disp(taken);
                               case '6'
                                     disp(taken);
                               case '7'
                                     GB{3,1} = 'O';
                                     disp(GB);
                                     GB{1,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '8'
                                     GB{3,2} = 'O';
                                     disp(GB);
                                     GB{1,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '9'
                                     disp(taken);
                                otherwise
                                     disp(invalid2);
                            end
                    otherwise
                         disp(invalid2);
                end
          case '7'
                GB{3,1} = 'O';
                disp(GB);
                GB{1,2} = 'X'; % Computer Move
                disp(GB);
                UserMove2 = input(prompt);
                switch(UserMove2);
                     case '1'
                           disp(taken);
                     case '2'
                           disp(taken);
                     case '3'
                           GB{1,3} = 'O';
                           disp(GB);
                           GB{2,2} = 'X'; % Computer Move
                           disp(GB);
                           UserMove3 = input(prompt);
                           switch(UserMove3);
                               case '1'
                                     disp(taken);
                               case '2'
                                     disp(taken);
                               case '3'
                                     disp(taken);
                               case '4'
                                     GB{2,1} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '5'
                                     disp(taken);
                               case '6'
                                     GB{2,3} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '7'
                                     disp(taken);
                               case '8'
                                     GB{3,2} = 'O';
                                     disp(GB);
                                     GB{3,3} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '9'
                                     GB{3,3} = 'O';
                                     disp(GB);
                                     GB{3,2} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               otherwise
                                     disp(invalid2);
                           end
                     case '4'
                           GB{2,1} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '5' 
                           GB{2,2} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '6'
                           GB{2,3} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '7'
                           disp(taken);
                     case '8'
                           GB{3,2} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '9'
                           GB{3,3} = 'O';
                           disp(GB);
                           GB{1,3} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                    otherwise
                           disp(invalid2);
                end
          case '8'
                GB{3,2} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                UserMove2 = input(prompt);
                switch(UserMove2);
                     case '1'
                           disp(taken);
                     case '2'
                           GB{1,2} = 'O';
                           disp(GB);
                           GB{2,2} = 'X'; % Computer Move
                           disp(GB);
                           UserMove3 = input(prompt);
                           switch(UserMove3);
                               case '1'
                                     disp(taken);
                               case '2'
                                     disp(taken);
                               case '3'
                                     disp(taken);
                               case '4'
                                     GB{2,1} = 'O';
                                     disp(GB);
                                     GB{3,3} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '5'
                                     disp(taken);
                               case '6'
                                     GB{2,3} = 'O';
                                     disp(GB);
                                     GB{3,1} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '7'
                                     GB{3,1} = 'O';
                                     disp(GB);
                                     GB{3,3} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               case '8'
                                     disp(taken);
                               case '9'
                                     GB{3,3} = 'O';
                                     disp(GB);
                                     GB{3,1} = 'X'; % Computer Move
                                     disp(GB);
                                     disp(CompWin);
                               otherwise
                                     disp(invalid2);
                           end
                      case '3'
                            disp(taken);
                      case '4'
                            GB{2,1} = 'O';
                            disp(GB);
                            GB{1,2} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '5'
                            GB{2,2} = 'O';
                            disp(GB);
                            GB{1,2} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '6'
                            GB{2,3} = 'O';
                            disp(GB);
                            GB{1,2} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '7'
                            GB{3,1} = 'O';
                            disp(GB);
                            GB{1,2} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                      case '8'
                            disp(taken);
                      case '9'
                            GB{3,3} = 'O';
                            disp(GB);
                            GB{1,2} = 'X'; % Computer Move
                            disp(GB);
                            disp(CompWin);
                    otherwise
                            disp(invalid2);
                end
          case '9'
                GB{3,3} = 'O';
                disp(GB);
                GB{1,3} = 'X'; % Computer Move
                disp(GB);
                UserMove2 = input(prompt);
                switch(UserMove2);
                    case '1'
                          disp(taken);
                    case '2'
                          GB{1,2} = 'O';
                          disp(GB);
                          GB{3,1} = 'X'; % Computer Move
                          disp(GB);
                          UserMove3 = input(prompt);
                          switch(UserMove3);
                              case '1'
                                    disp(taken);
                              case '2'
                                    disp(taken);
                              case '3'
                                    disp(taken);
                              case '4'
                                    GB{2,1} = 'O';
                                    disp(GB);
                                    GB{2,2} = 'X'; % Computer Move
                                    disp(GB);
                                    disp(CompWin);
                              case '5'
                                    GB{2,2} = 'O';
                                    disp(GB);
                                    GB{2,1} = 'X'; % Computer Move
                                    disp(GB);
                                    disp(CompWin);
                              case '6'
                                    GB{2,3} = 'O';
                                    disp(GB);
                                    GB{2,1} = 'X'; % Computer Move
                                    disp(GB);
                                    disp(CompWin);
                              case '7'
                                    disp(taken);
                              case '8'
                                    GB{3,2} = 'O';
                                    disp(GB);
                                    GB{2,2} = 'X'; % Computer Move
                                    disp(GB);
                                    disp(CompWin);
                              case '9'
                                    disp(taken);
                              otherwise
                                    disp(invalid2);
                          end
                     case '3'
                           disp(taken);
                     case '4'
                           GB{2,1} = 'O';
                           disp(GB);
                           GB{1,2} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '5'
                           GB{2,2} = 'O';
                           disp(GB);
                           GB{1,2} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '6'
                           GB{2,3} = 'O';
                           disp(GB);
                           GB{1,2} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '7'
                           GB{3,1} = 'O';
                           disp(GB);
                           GB{1,2} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '8'
                           GB{3,2} = 'O';
                           disp(GB);
                           GB{1,2} = 'X'; % Computer Move
                           disp(GB);
                           disp(CompWin);
                     case '9'
                           disp(taken);
                    otherwise
                           disp(invalid2);
                end
            otherwise
                disp(invalid2);
        end
end

