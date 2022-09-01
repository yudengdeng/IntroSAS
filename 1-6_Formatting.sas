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

title "Sashelp.baseball --- 1986 Baseball Data";
proc contents data=sashelp.baseball varnum;
ods select position;
run;

title "The First Five Observations Out of 322";
proc print data=sashelp.baseball(obs=5) noobs;
run;


