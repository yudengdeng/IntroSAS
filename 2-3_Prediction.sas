/* Linear Regression*/
 data measurement;
	infile "H:\sas\data\measurement.csv" dlm=',' firstobs=2;
	input gender $ height weight age;
    run;
    
proc Reg data=measurement;
	title "Example of linear regression";
	model weight = height;
	run;
  
/* Logistic Regression*/
PROC LOGISTIC DATA=SAS-data-set ;
CLASS variables ;
MODEL response=predictors ;
UNITS independent1=list;
ODDSRATIO <‘label’> variable ;
OUTPUT OUT=SAS-data-set keyword=name ;

RUN;
/* An example*/
proc logistic data=sasuser.Titanic alpha=.05 plots(only)=(effect oddsratio);
model Survived(event='1')=Age / clodds=pl:
Survived=Age;
run;
