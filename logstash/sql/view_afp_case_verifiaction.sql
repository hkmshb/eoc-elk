DROP VIEW IF EXISTS afp_case_verification_calc;

CREATE OR REPLACE VIEW afp_case_verification_calc AS
WITH calc AS (
  SELECT 
    epid_num,
    date_case_verified,
    states as province,
    "inv1stDate" as inv_1st_date,
    "inv1stTitle" as inv_1st_title,
    (
      (date_case_verified::date - "inv1stDate"::date) + 1
    ) as days_to_verify
  FROM afp_case_verification
  WHERE "starttime" != 'starttime'
)
SELECT 
  epid_num,
  province,
  date_case_verified,
  inv_1st_date,
  inv_1st_title,
  days_to_verify,
  (
    CASE
      WHEN days_to_verify <= 7 THEN 'Within 7 days'
      ELSE 'After 7 days'
    END
  ) as verification
FROM calc;