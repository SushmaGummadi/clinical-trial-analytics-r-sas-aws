/* Replace endpoint and visit values after inspecting metadata. */
%let endpoint=ADASCOG;
%let finalvisit=Week 24;

proc sql;
  create table work.efficacy as
  select q.*, s.TRT01P, s.AGE, s.SEX
  from work.adqsadas q inner join work.adsl s
    on q.USUBJID=s.USUBJID
  where q.PARAMCD="&endpoint" and q.AVISIT="&finalvisit";
quit;

proc means data=work.efficacy n mean std stderr clm;
  class TRT01P;
  var CHG;
run;

/* Set placebo as the reference using the exact formatted value in your data. */
proc glm data=work.efficacy;
  class TRT01P SEX;
  model CHG = TRT01P BASE AGE SEX / solution clparm;
  lsmeans TRT01P / pdiff cl;
run;
quit;

