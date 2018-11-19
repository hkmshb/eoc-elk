CREATE TABLE IF NOT EXISTS "lqas_opv"
(
  "LQASId"                  VARCHAR,
  "IPDMonth"                VARCHAR,
  states                    VARCHAR,
  lgas                      VARCHAR,
  "Wards"                   VARCHAR,
  "Starting_settlement"     VARCHAR,
  "GoodData"                VARCHAR,
  "DataComment"             VARCHAR,
  "Source"                  VARCHAR,
  starttime                 VARCHAR,
  endtime                   VARCHAR,
  "Today"                   VARCHAR,
  deviceid                  VARCHAR,
  "Name"                    VARCHAR,
  "Lot"                     VARCHAR,
  "Cluster"                 VARCHAR,
  "Settlement_size"         VARCHAR,
  note1                     VARCHAR,
  "GPS_h1"                  VARCHAR,
  "GPS_h1_latitude"         VARCHAR,
  "GPS_h1_longitude"        VARCHAR,
  "GPS_h1_altitude"         VARCHAR,
  "GPS_h1_precision"        VARCHAR,
  "Children_seen_h1"        VARCHAR,
  "Age_Child1"              VARCHAR,
  "Sex_Child1"              VARCHAR,
  "FM_Child1"               VARCHAR,
  "Reason_Not_FM1"          VARCHAR,
  "Caregiver_Aware_h1"      VARCHAR,
  "Total_OPVdoses_Child1"   VARCHAR,
  note1a                    VARCHAR,
  "Reason_Underimm_Child1"  VARCHAR,
  "PrevOPV_Child1"          VARCHAR,
  note2                     VARCHAR,
  "Children_seen_h2"        VARCHAR,
  "Age_Child2"              VARCHAR,
  "Sex_Child2"              VARCHAR,
  "FM_Child2"               VARCHAR,
  "Reason_Not_FM2"          VARCHAR,
  "Caregiver_Aware_h2"      VARCHAR,
  "Total_OPVdoses_Child2"   VARCHAR,
  note2a                    VARCHAR,
  "Reason_Underimm_Child2"  VARCHAR,
  "PrevOPV_Child2"          VARCHAR,
  note3                     VARCHAR,
  "Children_seen_h3"        VARCHAR,
  "Age_Child3"              VARCHAR,
  "Sex_Child3"              VARCHAR,
  "FM_Child3"               VARCHAR,
  "Reason_Not_FM3"          VARCHAR,
  "Caregiver_Aware_h3"      VARCHAR,
  "Total_OPVdoses_Child3"   VARCHAR,
  note3a                    VARCHAR,
  "Reason_Underimm_Child3"  VARCHAR,
  "PrevOPV_Child3"          VARCHAR,
  note4                     VARCHAR,
  "Children_Seen_h4"        VARCHAR,
  "Age_Child4"              VARCHAR,
  "Sex_Child4"              VARCHAR,
  "FM_Child4"               VARCHAR,
  "Reason_Not_FM4"          VARCHAR,
  "Caregiver_Aware_h4"      VARCHAR,
  "Total_OPVdoses_Child4"   VARCHAR,
  note4a                    VARCHAR,
  reason_underimm_child4    VARCHAR,
  "PrevOPV_child4"          VARCHAR,
  note5                     VARCHAR,
  "Children_Seen_h5"        VARCHAR,
  "Age_Child5"              VARCHAR,
  "Sex_Child5"              VARCHAR,
  "FM_Child5"               VARCHAR,
  "Reason_Not_FM5"          VARCHAR,
  "Caregiver_Aware_h5"      VARCHAR,
  "Total_OPVdoses_Child5"   VARCHAR,
  note5a                    VARCHAR,
  "Reason_Underimm_Child5"  VARCHAR,
  "PrevOPV_Child5"          VARCHAR,
  "GPS_h5"                  VARCHAR,
  "GPS_h5_latitude"         VARCHAR,
  "GPS_h5_longitude"        VARCHAR,
  "GPS_h5_altitude"         VARCHAR,
  "GPS_h5_precision"        VARCHAR,
  note6                     VARCHAR,
  "Children_Seen_h6"        VARCHAR,
  "Age_Child6"              VARCHAR,
  "Sex_Child6"              VARCHAR,
  "FM_Child6"               VARCHAR,
  "Reason_Not_FM6"          VARCHAR,
  "Caregiver_Aware_h6"      VARCHAR,
  "Total_OPVdoses_Child6"   VARCHAR,
  note6a                    VARCHAR,
  "Reason_Underimm_Child6"  VARCHAR,
  "PrevOPV_Child6"          VARCHAR,
  note7                     VARCHAR,
  "Children_Seen_h7"        VARCHAR,
  "Age_Child7"              VARCHAR,
  "Sex_Child7"              VARCHAR,
  "FM_Child7"               VARCHAR,
  "Reason_Not_FM7"          VARCHAR,
  "Caregiver_Aware_h7"      VARCHAR,
  "Total_OPVdoses_Child7"   VARCHAR,
  note7a                    VARCHAR,
  "Reason_Underimm_Child7"  VARCHAR,
  "PrevOPV_Child7"          VARCHAR,
  note8                     VARCHAR,
  "Children_Seen_h8"        VARCHAR,
  "Age_Child8"              VARCHAR,
  "Sex_Child8"              VARCHAR,
  "FM_Child8"               VARCHAR,
  "Reason_Not_FM8"          VARCHAR,
  "Caregiver_Aware_h8"      VARCHAR,
  "Total_OPVdoses_Child8"   VARCHAR,
  note8a                    VARCHAR,
  "Reason_Underimm_Child8"  VARCHAR,
  "PrevOPV_Child8"          VARCHAR,
  note9                     VARCHAR,
  "Children_Seen_h9"        VARCHAR,
  "Age_Child9"              VARCHAR,
  "Sex_Child9"              VARCHAR,
  "FM_Child9"               VARCHAR,
  "Reason_Not_FM9"          VARCHAR,
  "Caregiver_Aware_h9"      VARCHAR,
  "Total_OPVdoses_Child9"   VARCHAR,
  note9a                    VARCHAR,
  "Reason_Underimm_Child9"  VARCHAR,
  "PrevOPV_Child9"          VARCHAR,
  note10                    VARCHAR,
  "Children_Seen_h10"       VARCHAR,
  "Age_Child10"             VARCHAR,
  "Sex_Child10"             VARCHAR,
  "FM_Child10"              VARCHAR,
  "Reason_Not_FM10"         VARCHAR,
  "Caregiver_Aware_h10"     VARCHAR,
  "Total_OPVdoses_Child10"  VARCHAR,
  note10a                   VARCHAR,
  "Reason_Underimm_Child10" VARCHAR,
  "PrevOPV_Child10"         VARCHAR,
  note11                    VARCHAR,
  "GPS_h10"                 VARCHAR,
  "GPS_h10_latitude"        VARCHAR,
  "GPS_h10_longitude"       VARCHAR,
  "GPS_h10_altitude"        VARCHAR,
  "GPS_h10_precision"       VARCHAR,
  "Total_households"        VARCHAR,
  comments                  VARCHAR,
  add_settlements           VARCHAR,
  note12                    VARCHAR,
  "meta/instanceID"         VARCHAR,
  id                        VARCHAR,
  uuid                      VARCHAR,
  submission_time           VARCHAR,
  index                     VARCHAR,
  parent_table_name         VARCHAR,
  parent_index              VARCHAR,
  tags                      VARCHAR,
  notes                     VARCHAR,
  version                   VARCHAR,
  duration                  VARCHAR,
  submitted_by              VARCHAR,
  "Campaign"                VARCHAR,
  phone_number              VARCHAR
);

CREATE UNIQUE INDEX "lqas_opv_LQASId_uindex"
  ON "lqas_opv" ("LQASId");

