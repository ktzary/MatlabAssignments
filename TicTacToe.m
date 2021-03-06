%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 3: Tic - Tac - Toe
%
% Submitted by: Kelsey Zary
%
% Due: October 6th
%
% The purpose of this code is to play a game of tic tac toe with the
% computer, utilizing loops for greater efficiency
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The code allows for one second attempt with the beginning instructions,
% if they still have trouble then they are told to read the instructions
% better next time
welcome = 'Welcome to Tic Tac Toe';
disp(welcome);

GameTime = input('Are you sure you want to play against me?','s');
Yes = 'yes';
GoTime = strcmpi(GameTime,Yes);
if GoTime == 0;
    disp('Then why did you wake me up?');
end
i = 1; % This counter is in place for break statement
j = 0; 
k = 0;
while GoTime == 1;

% GB is the gameboard, set up as a cell array
GB = {1 2 3; 4 5 6; 7 8 9};
disp(GB);

% This is to tell the user that the computer will take the first move
taunt = 'As I am but a simple machine, I shall go first against your superior intellect';
disp(taunt);

GB{1,1} = 'X';   % Computer's first move
disp(GB);

% The example is displayed to show the user how to input their selection
example = 'How to input a move: Select the number and type it in';
disp(example);

taken = 'This spot was already taken, why did you try to cheat';  % Displayed if the user selects a spot that is already occupied
invalid = 'This spot does not exist, are all humans this stubborn?';   % Displayed if the user does not input a spot on the board
invalid2 = 'Please read the instructions next time before challenging me'; % Displayed if user inputs incorrectly 2 times

CompWin = 'Perhaps I was the smarter one after all';  % Displayed if computer wins
UserWin = 'What? How? YOU MUST HAVE HACKED ME!';   % Displayed if user wins
Tie = 'Hmm, I seem to have met an equal opponent';  % Displayed if there is a tie

prompt = 'Where would you like to move?';
UserMove1 = input(prompt,'s');
switch(UserMove1);  % User's first move, starts a series of nested moves
    case '1'
        disp(taken);
    case '2'
        GB{1,2} = 'O';
        disp(GB);
        GB{2,1} = 'X'; % Computer Move
        disp(GB);
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
                GB{1,3} = 'X'; % Computer Move
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
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
                        UserMove4 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
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
                UserMove3 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{2,2} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt,'s');
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
        UserMove2 = input(prompt,'s');
        switch(UserMove2);
            case '1'
                disp(taken);
            case '2'
                GB{1,2} = 'O';
                disp(GB);
                GB{3,1} = 'X'; % Computer Move
                disp(GB);
                UserMove3 = input(prompt,'s');
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
    otherwise % This section of the code is to allow the user a another chance if they mess up
          disp(invalid);
          i = i + 1;
          if i > 3;
              disp(invalid2);
              break
          end
end
j = j + 1;
k = k + 1;
for j = 2:50;
    if k == 50; % This tells users to take a break after 50 games
    disp('Maybe you should take a break, but I am just a machine');
        j = 1;
        k = 1;
    end
end
% This bit of code allows the users to either opt into playing again or opt
% out and leave the game
PlayAgain = input('Want to try again?','s');
Yes = 'yes';
GoTime = strcmpi(PlayAgain,Yes);
if GoTime == 1;
   continue
else
   disp('See you later, alligator');
   break
end
end



