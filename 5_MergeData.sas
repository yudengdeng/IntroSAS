/* Match-Merging Observations Based on a BY Variable */
data animal;
input common $ animal $;
datalines;
a Ant
b Bird
c Cat
d Dog
e Eagle
f Frog
;

data plant;
input common $ plant $;
datalines;
a Apple
b Banana
c Coconut
d Dewberry
e Eggplant
f Fig
;

proc sort data=animal; by common; run;
proc sort data=plant; by common; run;

data matchmerge;
    merge animal plant;
    by common;
run;

proc print data=matchmerge; 
run;


/* Match-Merge Observations with Different Values of the BY Variable */

data animalMissing;
input common $ animal $;
datalines;
a Ant
c Cat
d Dog
e Eagle
;


data plantMissing2;
input common $ plant $;
datalines;
a Apple
b Banana
c Coconut
e Eggplant
f Fig
;


proc sort data=animalMissing; by common; run;
proc sort data=plantMissing2; by common; run;

data matchmerge;
   merge animalMissing plantMissing2;
   by common;
run;
proc print data=matchmerge; run;
