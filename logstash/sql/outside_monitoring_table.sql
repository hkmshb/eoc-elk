CREATE TABLE IF NOT EXISTS outside_monitoring
(
  "State"                   VARCHAR,
  "LGA"                     VARCHAR,
  "Ward"                    VARCHAR,
  "OUTRnd"                  VARCHAR,
  "Settlementno"            VARCHAR,
  "Settlement1"             VARCHAR,
  "Settlement2"             VARCHAR,
  "Settlement3"             VARCHAR,
  "totSeet3"                VARCHAR,
  "totMist3"                VARCHAR,
  "totSeet1"                VARCHAR,
  "totSeet2"                VARCHAR,
  "totMist1"                VARCHAR,
  "totMist2"                VARCHAR,
  "OutCode"                 VARCHAR NOT NULL
    CONSTRAINT outside_monitoring_outcode_pk
    PRIMARY KEY,
  "numberof Locations"      VARCHAR,
  "Unvaccinated this round" VARCHAR,
  "0to9mth Seen"            VARCHAR,
  "0to9mth notMarked"       VARCHAR,
  "0to23mth Seen"           VARCHAR,
  "0to23mth notMarked"      VARCHAR,
  "24to59mth Seen"          VARCHAR,
  "24to59mth notMarked"     VARCHAR,
  "TOTAL Seen"              VARCHAR,
  "TOTAL Notmarked"         VARCHAR,
  "IsmainRnd"               VARCHAR,
  "Settlement4"             VARCHAR,
  "Settlement5"             VARCHAR,
  "Settlement6"             VARCHAR,
  "totSeet4"                VARCHAR,
  "totMist4"                VARCHAR,
  "totSeet5"                VARCHAR,
  "totSeet6"                VARCHAR,
  "totMist5"                VARCHAR,
  "totMist6"                VARCHAR
);

CREATE UNIQUE INDEX outside_monitoring_outcode_uindex
  ON outside_monitoring ("OutCode");

