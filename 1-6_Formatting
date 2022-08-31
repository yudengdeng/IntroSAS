/* Format, Label, Splitm PROC Format */
title "Sashelp.baseball --- 1986 Baseball Data";
proc contents data=sashelp.baseball varnum;
ods select position;
run;

title "The First Five Observations Out of 322";
proc print data=sashelp.baseball(obs=5) noobs;
run;
