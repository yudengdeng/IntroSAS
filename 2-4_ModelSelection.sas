proc reg data=a outest=est;
 model y=x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 / selection=adjrsq sse aic ;
 output out=out p=p r=r; run; quit;
 proc reg data=a outest=est0;
 model y=x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 / noint selection=adjrsq sse aic ;
 output out=out0 p=p r=r; run; quit;
 data estout;
 set est est0; run;
 proc sort data=estout; by _aic_;
 proc print data=estout(obs=8); run; 