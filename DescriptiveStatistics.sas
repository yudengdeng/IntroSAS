/*Input a data set called "exam" manually*/
data exam;
label score = 'Exam Score';
input score @@;
datalines;
81 97 78 99 77 81 84 86 86 97
85 86 94 76 75 42 91 90 88 86
97 97 89 69 72 82 83 81 80 81
;

 
/*Input Sashelp.iris — Fisher’s Iris Data (1936)*/
TITLE "Fisher's Iris Data (1936)";



PROC PRINT DATA=sashelp.iris(obs=5);
RUN; 


PROC CONTENTS DATA=sashelp.iris varnum;
ods select position;
run;

title "The First Five Observations Out of 150";
proc print data=sashelp.iris(obs=5) noobs;
run;
title "The Species Variable";
proc freq data=sashelp.iris;
tables Species;
run;



PROC MEANS data = exam n mean median;
VAR score;
RUN;

 

PROC UNIVARIATE data = exam modes;

VAR score;

RUN;
