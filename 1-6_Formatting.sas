/* Format, Label, Split PROC Format */
title "The First Five Observations Out of 322";
proc print data=sashelp.baseball(obs=5) noobs;
run;

PROC PRINT DATA = SASHELP.BASEBALL(obs=5) noobs;
FORMAT SALARY COMMA9.2;
RUN;

PROC PRINT DATA = SASHELP.BASEBALL(obs=5) noobs;
FORMAT SALARY DOLLAR9.2 NAME $4.;
RUN;


/* Format: Date */
title "Sashelp.buy";
proc print data=SASHELP.BUY(obs=5) noobs;
run;

title "Sashelp.buy";
proc print data=SASHELP.BUY(obs=5) noobs;
FORMAT DATE DATE9.;
run;

title "Sashelp.buy";
proc print data=SASHELP.BUY(obs=5) noobs;
FORMAT DATE DATE6.;
run;

title "Sashelp.buy";
proc print data=SASHELP.BUY(obs=5) noobs;
FORMAT DATE DDMMYY8.;
run;

title "Sashelp.buy";
proc print data=SASHELP.BUY(obs=5) noobs;
FORMAT DATE DDMMYY10.;
run;


/* Label */
title "The First Five Observations Out of 322";
proc print data=sashelp.baseball(obs=5) noobs;
run;

DATA WORK.BASEBALL;
SET SASHELP.BASEBALL;
LABEL
Name = "Last Name, First";
RUN;

PROC CONTENTS DATA = WORK.BASEBALL;
RUN;

DATA WORK.BASEBALL;
SET SASHELP.BASEBALL;
LABEL
Name = "Last Name, First Name";
RUN;

PROC CONTENTS DATA = SASHELP.BASEBALL;
RUN;

title "The First Five Observations Out of 322";
proc print data=sashelp.baseball(obs=5) noobs label;
run;

title "The First Five Observations Out of 322";
proc print data=work.baseball(obs=5) noobs label;
run;

/* Split */
PROC PRINT DATA = SASHELP.BASEBALL LABEL;
FORMAT NAME $4.;
LABEL
NAME = "Last Name, First Name";
RUN;

PROC PRINT DATA = SASHELP.BASEBALL LABEL SPLIT = "*";
FORMAT NAME $4.;
LABEL
NAME = "Last Name, Fi*rst Name";
RUN;

/* PROCD FORMAT */
