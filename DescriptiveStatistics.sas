/*Input Sashelp.iris — Fisher’s Iris Data (1936)*/
/*Get the variable names and types*/
title "Sashelp.iris --- Fisher's Iris Data (1936)";
proc contents data=sashelp.iris varnum;
ods select position;
run;

/*Get the first 5 observations from the complete data*/
title "The First Five Observations Out of 150";
PROC PRINT DATA=sashelp.iris(obs=5) noob;
RUN; 

/*Get the frequency table by Species*/
title "The Species Variable";
proc freq data=sashelp.iris;
tables Species;
run;

title "Through the MEANS Procedure: Mean and Median";
PROC MEANS DATA = SASHELP.IRIS N MEAN MEDIAN;
VAR SepalLength;
RUN;	

title "Through the MEANS Procedure: Standard Deviation, Range and Interquartile Range";
PROC MEANS data = SASHELP.IRIS std range qrange;
VAR SepalLength;
RUN;

TITLE "Through the MEANS Procedure: Standard Deviation, Range and Interquartile Range categorized by Species";
PROC MEANS data = SASHELP.IRIS std range qrange;
CLASS Species;
VAR SepalLength;
RUN;

ODS GRAPHIC ON;

TITLE "Historgram and Probability plots for SepalLength by Species";
PROC UNIVARIATE DATA = SASHELP.IRIS;
CLASS Species;
VAR SepalLength;
HISTOGRAM SepalLength;
INSET SKENEWSS KURTOSIS;
PROBPLOT SepalLength;
INSET SKENEWSS KURTOSIS;
RUN;

ODS GRAPHIC OFF;

