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

PROC SORT DATA = ANIMAL;
	BY common;
RUN;

PROC SORT DATA = PLANT;
	BY common;
RUN;


DATA MATCHMERGE;
	MERGE ANIMAL PLANT;
	BY common;
RUN;

PROC PRINT DATA = MATCHMERGE;
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
	BY common;
RUN;


PROC SORT DATA = PLANTMISSING;
	BY common;
RUN;

DATA MATCHMERGE;
	MERGE ANIMALMISSING PLANTMISSING;
	BY common;
RUN;

PROC PRINT DATA = MATCHMERGE;
RUN;
