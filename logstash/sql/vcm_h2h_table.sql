
CREATE TABLE IF NOT EXISTS vcm_h2h
(
    "IPD Month" VARCHAR,
    "Submission time" VARCHAR,
    "MST Designation" VARCHAR,
    "Other Designation" VARCHAR,
    "State" VARCHAR,
    "LGA" VARCHAR,
    "Ward" VARCHAR,
    "Team Number" VARCHAR,
    "Team has Micro-plan" VARCHAR,
    "Is the micro plan updated" VARCHAR,
    "Are team members listed in the micro plan" VARCHAR,
    "Is team mentioned in the daily implementation plan" VARCHAR,
    "Are team members from the same area" VARCHAR,
    "Did team members receive training" VARCHAR,
    "Is there a teenager in the team" VARCHAR,
    "Are teams entering HHs as planned" VARCHAR,
    "Are team marking HHs correctly" VARCHAR,
    "Are teams marking HHs separately" VARCHAR,
    "Is the team immunizing children seen outside" VARCHAR,
    "Is the team entering missed children correctly" VARCHAR,
    "Is the community leader accompanying the team" VARCHAR,
    "Is the community leader same as micro plan" VARCHAR,
    "Is the community leader accompanying team to Non-compliance HHs" VARCHAR,
    "Is the community leader helping with solving non-compliance" VARCHAR,
    "Is the team provided markers" VARCHAR,
    "Is the team provided pluses" VARCHAR,
    "Is this a VCM area" VARCHAR,
    "Is the VCM accompanying the team" VARCHAR,
    "VCM had register" VARCHAR,
    "Is the VCM cross-checking the register" VARCHAR,
    "Is the VCM updating the register" VARCHAR,
    "Is the VCM helping in resolving Non-compliance" VARCHAR,
    "Is the VCM updating the U5 register" VARCHAR,
    "Team location" VARCHAR,
    "Team location latitude" VARCHAR,
    "Team location longitude" VARCHAR,
    "Team location altitude" VARCHAR,
    "Team location precision" VARCHAR,
    uniquekey VARCHAR NOT NULL
    CONSTRAINT vcm_h2h_uniquekey_pk
    PRIMARY KEY
);
CREATE UNIQUE INDEX vcm_h2h_uniquekey_uindex
  ON vcm_h2h (uniquekey);
