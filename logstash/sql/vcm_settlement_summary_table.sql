
CREATE TABLE IF NOT EXISTS vcm_settlement_summary
(
    "VWS ID" VARCHAR,
    "Month" VARCHAR,
    "State" VARCHAR,
    "LGA" VARCHAR,
    "Ward" VARCHAR,
    "Name of VWS" VARCHAR,
    "Total number of VCMs under the VWS" VARCHAR,
    "Number of VCMs reported" VARCHAR,
    "Total number of children registered till end of previous month" VARCHAR,
    "Number of new children registered in the reporting month" VARCHAR,
    "Cumulative nos of children received Routine Immunization Card" VARCHAR,
    "BCG" VARCHAR,
    "OPV" VARCHAR,
    "Penta 1" VARCHAR,
    "OPV 1" VARCHAR,
    "Penta 2" VARCHAR,
    "OPV 2" VARCHAR,
    "Penta 3" VARCHAR,
    "OPV 3" VARCHAR,
    "IPV" VARCHAR,
    "Measles" VARCHAR,
     uniquekey VARCHAR NOT NULL
    CONSTRAINT vcm_settlement_summary_uniquekey_pk
    PRIMARY KEY
);
CREATE UNIQUE INDEX vcm_settlement_summary_uniquekey_uindex
  ON vcm_settlement_summary (uniquekey);
    
