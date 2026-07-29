/* Update paths for your SAS Studio Files directory. */
%let raw=/home/USERNAME/clinical-trial/data/raw;
%let out=/home/USERNAME/clinical-trial/outputs/sas-validation;

libname raw xport "&raw./adsl.xpt" access=readonly;
data work.adsl; set raw.adsl; run;
libname raw clear;

libname raw xport "&raw./adae.xpt" access=readonly;
data work.adae; set raw.adae; run;
libname raw clear;

libname raw xport "&raw./adqsadas.xpt" access=readonly;
data work.adqsadas; set raw.adqsadas; run;
libname raw clear;

proc contents data=work._all_ nods; run;

