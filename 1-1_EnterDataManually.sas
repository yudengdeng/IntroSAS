DATA FIRSTLESSON;
	X = 1;
	A = X*2;
RUN;

PROC PRINT DATA = WORK.FIRSTLESSON;
RUN;

DATA INTROSAS.FIRSTLESSON;
	X = 1;
	A = X*2;
RUN;

PROC PRINT DATA = INTROSAS.FIRSTLESSON;
RUN;

DATA INTROSAS.FIRSTLESSON;
	INPUT A B C $;
	DATALINES;
	1.0 0.5 1st
	0.5 1.0 2nd
	;
RUN;

PROC PRINT DATA = INTROSAS.FIRSTLESSON;
RUN;
