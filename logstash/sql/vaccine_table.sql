CREATE TABLE IF NOT EXISTS vaccine_data
(
  "ID"                VARCHAR,
  "State"             VARCHAR,
  "Lga"               VARCHAR,
  "Ward"              VARCHAR,
  "DateVac"           VARCHAR,
  "OPVvialsRced"      VARCHAR,
  "OPVVialsused"      VARCHAR,
  "DPTvials recd"     VARCHAR,
  "DPTvials Used"     VARCHAR,
  "HepBvials recd"    VARCHAR,
  "HepBvials Used"    VARCHAR,
  "Measlesvials Recd" VARCHAR,
  "MeaslesvialsUsed"  VARCHAR,
  "MESDiluentsRecd"   VARCHAR,
  "MESDiluentsUsed"   VARCHAR,
  "Yellowvials recd"  VARCHAR,
  "Yellowvials Used"  VARCHAR,
  "YFDiluentsRecd"    VARCHAR,
  "YFDiluentsUsed"    VARCHAR,
  "TTvials recd"      VARCHAR,
  "TTvials Used"      VARCHAR,
  "ADsyringeRecd"     VARCHAR,
  "ADsyringeUsed"     VARCHAR,
  "ReconsyringeRecd"  VARCHAR,
  "ReconsyringeUsed"  VARCHAR,
  "AEFI"              VARCHAR,
  uniqvac             VARCHAR NOT NULL
    CONSTRAINT vaccine_data_uniqvac_pk
    PRIMARY KEY,
  "IsmainRnd"         VARCHAR,
  "IPVVials Rced"     VARCHAR,
  "IPVVials Used"     VARCHAR,
  "PCVvials recd"     VARCHAR,
  "PCVvials Used"     VARCHAR
);

