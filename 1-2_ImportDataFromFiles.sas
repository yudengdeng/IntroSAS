/* Import .txt data from files directly*/
DATA [name of the data set];
INFLE "[the path and the file name with extension .txt]"
DELIMITER = [the delimiter];
INPUT [variable name];
RUN;

/* An example */
DATA NAIVESAMPLE;
INFLE "/home/u59261703/Data/naivesample.txt"
DELIMITER = " ";
INPUT A B;
RUN;

/* Import .txt data from files directly with Tab delimited*/
PROC IMPORT OUT = [name of the data set]
DATAFILE =  "[the path and the file name with extension .txt]"
DBMS = TAB REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
RUN;

/* An example */
PROC IMPORT OUT = production
DATAFILE =  "/home/u59261703/Data/production.txt"
DBMS = TAB REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
RUN;

/* Import .csv data from files directly*/
PROC IMPORT OUT = [name of the data set]
DATAFILE =  "[the path and the file name with extension .csv]"
DBMS = CSV REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
DATAROW = 2; /*From which row the data starts*/
RUN;

/* An example */
PROC IMPORT OUT = HoustonRealEstateCSV
DATAFILE =  "/home/u59261703/Data/HoustonRealEstate.csv"
DBMS = CSV REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
DATAROW = 2; /*From which row the data starts*/
RUN;

/* Import .xls or .xlsx data from files directly*/
PROC IMPORT OUT = [name of the data set]
DATAFILE =  "[the path and the file name with extension .xls or .xlsx]"
DBMS = XLSX REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
SHEET = "[Name of the sheet]"
RANGE = "[Name of the sheet or range. Sheets end with $]"
RUN;

/* An example */
PROC IMPORT OUT = HoustonRealEstateXLSX
DATAFILE =  "/home/u59261703/Data/HoustonRealEstate.xlsx"
DBMS = XLSX REPLACE;
GETNAMES = YES; /*YES if the first row is the header*/
SHEET = "Sheet1";
RANGE = "A1:D4";
RUN;
