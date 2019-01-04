DROP VIEW IF EXISTS afp_case_based_calc;

CREATE OR REPLACE VIEW afp_case_based_calc AS
WITH calc AS (
  SELECT 
    "EpidNumber" as epid_number,
    "Province" as province,
    "DateNotified" as date_notified,
    "DateCaseinvestigated" as date_case_investigated,
    "FinalCellCultureResult" as final_cell_culture_result,
    "StoolCondition" as stool_condition,
    (
      (("DateCaseinvestigated"::date) - ("DateNotified"::date)) * 24
    ) as hrs_of_notification,
    (
      (("DateStoolSentolab"::date) - ("DateLabSentRestodistrict"::date)) + 1
    ) as lab_result_feedback
  FROM afp_case_based
  WHERE "DateReceived" != 'DateReceived'
) 
SELECT 
  epid_number,
  province,
  date_notified::date,
  date_case_investigated::date,
  final_cell_culture_result,
  stool_condition,
  hrs_of_notification,
  lab_result_feedback,
  (
    CASE
      WHEN hrs_of_notification < 48 THEN 'Within 48 hours'
      ELSE 'Later than 48 hours'
    END
  ) as investigation_by_dsno,
  (
    CASE
      WHEN lab_result_feedback <= 14 THEN 'Lab result is timely'
      ELSE 'Lab result is untimely'
    END
  ) as timeliness_of_feedback,
  (
    CASE stool_condition
      WHEN '1' THEN 'Speciment in good condition'
      ELSE 'Speciment not in good condition'
    END
  ) as specimen_condition
  FROM calc;