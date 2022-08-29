/* Create a data set at Libraries -> Work */
DATA FIRSTLESSON;
X = 1;
A = X*2;
RUN;

PROC PRINT DATA = FIRSTLESSON;
RUN;

/* Create a data set to a different Library */
DATA INTROSAS.FIRSTLESSON;
X = 1;
A = X*2;
RUN;

DATA INTROSAS.FIRSTLESSON;
INPUT A B C $;
datalines;
1.0 0.5 1st
0.5 1.0 2nd
;
RUN;

PROC PRINT DATA = INTROSAS.FIRSTLESSON;
RUN;
