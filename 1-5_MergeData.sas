/* Match-Merging Observations Based on a BY Variable */
DATA ANIMAL;
INPUT common $ animal $;
DATALINES;
a Ant
b Bird
c Cat
d Dog
e Eagle
f Frog
;

DATA PLANT;
INPUT common $ plant $;
DATALINES;
a Apple
b Banana
c Coconut
d Dewberry
f Fig
e Eggplant
;


DATA MATCHMERGE;
    merge ANIMAL PLANT;
    by common;
RUN;

PROC PRINT DATA=MATCHMERGE; 
RUN;

/* Match-Merge Observations with Different Values of the BY Variable */
DATA ANIMALMISSING;
INPUT common $ animal $;
DATALINES;
a Ant
c Cat
d Dog
e Eagle
;


DATA PLANTMISSING;
INPUT common $ plant $;
DATALINES;
a Apple
b Banana
c Coconut
e Eggplant
f Fig
;


PROC SORT DATA = ANIMALMISSING; 
	by common; 
RUN;

PROC SORT DATA = PLANTMISSING; 
	by common; 
RUN;

DATA MATCHMERGE;
    merge ANIMALMISSING PLANTMISSING;
    by common;
RUN;

PROC PRINT DATA=MATCHMERGE; 
RUN;
