/*Input a data set called "exam" manually*/
data exam;
label score = 'Exam Score';
input score @@;
datalines;
81 97 78 99 77 81 84 86 86 97
85 86 94 76 75 42 91 90 88 86
97 97 89 69 72 82 83 81 80 81
;

 
/*Check if the input adjacency data set exists or not*/
PROC MEANS data = exam n mean median;
VAR score;
RUN;

 

PROC UNIVARIATE data = exam modes;

VAR score;

RUN;
