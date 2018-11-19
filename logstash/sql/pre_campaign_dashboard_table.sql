CREATE TABLE IF NOT EXISTS pre_campaign
(
    "Id" VARCHAR NOT NULL
    CONSTRAINT pre_campaign_id_pk
    PRIMARY KEY,
    "Campaign Type" VARCHAR,
    "IPDs Round" VARCHAR,
    "Timeline" VARCHAR,
    "State" VARCHAR,
    "LGA" VARCHAR,
    "Social mobilization plan/implementation" VARCHAR,
    "High risk Operational Plan" VARCHAR,
    "Evidence of LGA task force meeting" VARCHAR,
    "Meeting of Ward selection Committees to review performance" VARCHAR,
    "Updated micro-plan" VARCHAR,
    "Training Plan implementation" VARCHAR,
    "Social mobilization funds received at LGA Level" VARCHAR,
    "Border synchronization planning meeting" VARCHAR,
    "Security agents conducted assessment" VARCHAR,
    "IPD plan adjusted based on security assessment (if applicable)" VARCHAR,
    "Logistics funds received" VARCHAR,
    "LGAs/State counterpart funding received" VARCHAR
);
CREATE UNIQUE INDEX pre_campaign_id_uindex
ON pre_campaign ("Id");