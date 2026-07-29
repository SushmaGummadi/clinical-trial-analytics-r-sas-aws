/* Run after 01_import_data.sas. Confirm treatment and population variables. */
proc freq data=work.adsl;
  tables TRT01P SEX RACE / missing;
run;

proc means data=work.adsl n mean std median min max;
  class TRT01P;
  var AGE;
run;

proc sql;
  create table work.participant_counts as
  select TRT01P, count(distinct USUBJID) as participants
  from work.adsl
  group by TRT01P;
quit;

