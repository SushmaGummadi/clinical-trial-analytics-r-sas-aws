/* Participant-level AE frequencies; raw AE row counts must not be percentages. */
proc sql;
  create table work.safety_denoms as
  select TRT01A, count(distinct USUBJID) as denominator
  from work.adsl
  where SAFFL='Y'
  group by TRT01A;

  create table work.ae_subjects as
  select distinct s.TRT01A, a.USUBJID, a.AEDECOD, a.AEBODSYS, a.AESER
  from work.adae a inner join work.adsl s
    on a.USUBJID=s.USUBJID
  where s.SAFFL='Y' and a.TRTEMFL='Y';

  create table work.common_ae as
  select a.TRT01A, a.AEDECOD,
         count(distinct a.USUBJID) as participants,
         d.denominator,
         100*calculated participants/d.denominator as percent format=6.1
  from work.ae_subjects a inner join work.safety_denoms d
    on a.TRT01A=d.TRT01A
  group by a.TRT01A, a.AEDECOD, d.denominator
  order by a.AEDECOD, a.TRT01A;
quit;

proc print data=work.common_ae; run;

