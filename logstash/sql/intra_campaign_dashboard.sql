-- Table: public.intra_campaign

CREATE TABLE IF NOT EXISTS intra_campaign
(
    "Id" VARCHAR NOT NULL
    CONSTRAINT intra_campaign_id_pk
    PRIMARY KEY,
    "Campaign Type" VARCHAR,
    "IPDs Round" VARCHAR,
    "Day" VARCHAR,
    "State" VARCHAR,
    "LGA" VARCHAR,
    "Daily Review Meeting Chaired by LGA Chaiman" VARCHAR,
    "Proportion of teams visited by supervisor (%)" VARCHAR,
    "Proportion of teams with VVM in Stage 3 or 4 (%)" VARCHAR,
    "Number of Missed Settlements based on Daily plan" VARCHAR,
    "Proportion of wards >10% missed children (%)" VARCHAR,
    "Proportion of wards with >10% households NOT marked correctly" VARCHAR,
    "Proportion of children NOT finger marked" VARCHAR
);
CREATE UNIQUE INDEX intra_campaign_id_uindex
ON intra_campaign ("Id");