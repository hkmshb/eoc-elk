CREATE TABLE IF NOT EXISTS redo_data
(
   "RevisitID"            VARCHAR
 , "State"                VARCHAR
 , "Lga"                  VARCHAR
 , "Ward"                 VARCHAR
 , "DateImpR"             VARCHAR
 , "TargetRedo"           VARCHAR
 , "SettlementsRedo"      VARCHAR
 , "NoHHRedo"             VARCHAR
 , "NoNCShools"           VARCHAR
 , "NoNOCOther"           VARCHAR
 , "MissedRedo"           VARCHAR
 , "ChildNCShool"         VARCHAR
 , "ChildNCOther"         VARCHAR
 , "ChildAbsent"          VARCHAR
 , "NonCompliance"        VARCHAR
 , "Reason1ABS"           VARCHAR
 , "Reason2ABS"           VARCHAR
 , "Reason3ABS"           VARCHAR
 , "Reason4ABS"           VARCHAR
 , "Reason5ABS"           VARCHAR
 , "Reason6ABS"           VARCHAR
 , "OpvSafety"            VARCHAR
 , "ChildSick"            VARCHAR
 , "ReligiousBelief"      VARCHAR
 , "NoNeedFelt"           VARCHAR
 , "PoliticalDifferences" VARCHAR
 , "NoCaregiver"          VARCHAR
 , "UnhappyWith"          VARCHAR
 , "TooManyRounds"        VARCHAR
 , "ReasonNotGiven"       VARCHAR
 , "HHRevisited"          VARCHAR
 , "SCRevisited"          VARCHAR
 , "OTRevisited"          VARCHAR
 , "ImmRedo"              VARCHAR
 , "ImmRedoABSENT"        VARCHAR
 , "RELImmRedo"           VARCHAR
 , "RELImmRedoABSENT"     VARCHAR
 , "COMImmRedo"           VARCHAR
 , "COMImmRedoABSENT"     VARCHAR
 , "OTHERImRedo"          VARCHAR
 , "OTHERImRedoABSENT"    VARCHAR
 , "IMMSCTradNC"          VARCHAR
 , "IMMSCRelNC"           VARCHAR
 , "IMMSCCommNC"          VARCHAR
 , "IMMSCOtherNC"         VARCHAR
 , "IMMOTTradNC"          VARCHAR
 , "IMMOTRelNC"           VARCHAR
 , "IMMOTCommNC"          VARCHAR
 , "IMMOTOtherNC"         VARCHAR
 , "NotImmRedo"           VARCHAR
 , "NotImmRedoABSENT"     VARCHAR
 , "UniqueKey"            VARCHAR
 , "REDO"                 VARCHAR
 , "IsmainRnd"            VARCHAR
 , CONSTRAINT redo_data_uniquekey_ux UNIQUE("UniqueKey")
);
