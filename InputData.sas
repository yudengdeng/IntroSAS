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
