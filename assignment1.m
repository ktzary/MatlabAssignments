%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: (Kelsey Zary)
%
% Due: September 8, 2016
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'http://www.mathworks.com/help/matlab/index.html';

% 2. What does the command 'clear all' do?
%
% Answer: It clears the workspace
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.
A = [1 7 21 32 67 32453];
averageAnswer = mean(A);

% 4. What command would you type to see a list of all installed toolboxes?

ver

% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

help images

% 6. On the line below figure (line 44), write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
    plot(x,y);    %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: var
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: for statements: the loop runs for a set number of times
% while statements: the loop runs as long as the condition remains true
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: NaN means Not-A-Number, you might get it when performing any
% arithmetic operation on a non number
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A, 'omitnan');


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs

% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% commented out).

%
% Answer: why
% Some mathematician obeyed a kid.
% why
% For the love of Pete.
% why
% Some terrified hamster wanted it.
% why
% Why not?
%


%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line

prompt = 'Type "Hello World"';
str = input(prompt, 's');
Hello = msgbox(str);


%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)