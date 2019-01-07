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
    "DateStoolSentolab" as date_stool_sent_to_lab,
    "DateLabSentRestodistrict" as date_lab_sent_rest_to_district,
    "DateSpecRecbyNatLab" as date_spec_rec_by_natlab,
    "DateOfOnset" as date_of_onset,
    "DateFollowupExamine" as date_followup_examine,
    (
      ("DateCaseinvestigated"::date - "DateNotified"::date) * 24
    ) as hrs_of_notification,
    (
      ("DateLabSentRestodistrict"::date - "DateStoolSentolab"::date) + 1
    ) as lab_result_feedback,
    (
      (("DateSpecRecbyNatLab"::date - "DateStoolSentolab"::date) + 1) * 24
    ) as specimen_arrival
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
  date_stool_sent_to_lab::date,
  date_lab_sent_rest_to_district::date,
  date_spec_rec_by_natlab::date,
  date_of_onset::date,
  date_followup_examine::date,
  hrs_of_notification,
  lab_result_feedback,
  specimen_arrival,
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
  ) as specimen_condition,
  (
    CASE 
      WHEN specimen_arrival <= 72 THEN 'Specimen arrived with 72 hours'
      ELSE 'Speciment arrived later than 72 hours'
    END
  ) as specimen_arrival_timeliness,
  (
    (date_followup_examine::date - date_of_onset::date) + 1
  ) as days_of_followup
  FROM calc;