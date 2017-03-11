ALTER TABLE HOSPITAL.T_APPOINTMENT
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_APPOINTMENT CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_APPOINTMENT
(
  PK                    INTEGER                 NOT NULL,
  APPOINTMENT_DATE      TIMESTAMP(6),
  APPOINTMENT_STATUS    VARCHAR2(20 BYTE),
  CREATION_TIME         TIMESTAMP(6)            DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME         TIMESTAMP(6)            DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE             CHAR(1 BYTE)            DEFAULT 1,
  FK_PATIENT            INTEGER,
  FK_APPOINTMENT_CHART  INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


DROP TABLE HOSPITAL.T_BRANCH CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_BRANCH
(
  PK             INTEGER,
  BRANCH_NAME    VARCHAR2(30 BYTE),
  CREATION_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE      CHAR(1 BYTE)                   DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_CITY
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_CITY CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_CITY
(
  PK             INTEGER                        NOT NULL,
  CITY_NAME      VARCHAR2(30 BYTE),
  CREATION_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE      CHAR(1 BYTE)                   DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_DISTRICT
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_DISTRICT CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_DISTRICT
(
  PK             INTEGER                        NOT NULL,
  DISTRICT_NAME  VARCHAR2(30 BYTE),
  CREATION_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  FK_CITY        INTEGER,
  IS_ACTIVE      CHAR(1 BYTE)                   DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_DOCTOR
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_DOCTOR CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_DOCTOR
(
  PK                  INTEGER                   NOT NULL,
  FIRST_NAME          VARCHAR2(30 BYTE),
  LAST_NAME           VARCHAR2(60 BYTE),
  DATE_OF_BIRTH       DATE,
  RECORD_NUMBER       VARCHAR2(10 BYTE),
  QUESTION_ANSWER     VARCHAR2(20 BYTE),
  PASSWORD            VARCHAR2(128 BYTE),
  CREATION_TIME       TIMESTAMP(6)              DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME       TIMESTAMP(6)              DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE           CHAR(1 BYTE)              DEFAULT 1,
  GENDER              VARCHAR2(10 BYTE),
  FK_SECRET_QUESTION  INTEGER,
  FK_BRANCH           INTEGER,
  DOCTOR_LEVEL        VARCHAR2(30 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_HOSPITAL
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_HOSPITAL CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_HOSPITAL
(
  PK                INTEGER                     NOT NULL,
  HOSPITAL_NAME     VARCHAR2(100 BYTE),
  HOSPITAL_ADDRESS  VARCHAR2(250 BYTE),
  CREATION_TIME     TIMESTAMP(6)                DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME     TIMESTAMP(6)                DEFAULT CURRENT_TIMESTAMP,
  HOSPITAL_TYPE     VARCHAR2(30 BYTE),
  FK_DISTRICT       INTEGER,
  IS_ACTIVE         CHAR(1 BYTE)                DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_INSPECTION_PLACE
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_INSPECTION_PLACE CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_INSPECTION_PLACE
(
  PK                          INTEGER           NOT NULL,
  PLACE_NAME                  VARCHAR2(50 BYTE),
  CREATION_TIME               TIMESTAMP(6)      DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME               TIMESTAMP(6)      DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE                   CHAR(1 BYTE)      DEFAULT 1,
  FK_HOSPITAL_POLICLINIC_REL  INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_PATIENT
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_PATIENT CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_PATIENT
(
  PK                  INTEGER                   NOT NULL,
  FIRST_NAME          VARCHAR2(30 BYTE),
  LAST_NAME           VARCHAR2(60 BYTE),
  DATE_OF_BIRTH       DATE,
  PLACE_OF_BIRTH      VARCHAR2(30 BYTE),
  TC_NUMBER           VARCHAR2(11 BYTE),
  PASSWORD            VARCHAR2(128 BYTE),
  EMAIL               VARCHAR2(255 BYTE),
  PHONE_NUMBER        VARCHAR2(30 BYTE),
  ADDRESS             VARCHAR2(250 BYTE),
  FATHER_NAME         VARCHAR2(30 BYTE),
  MOTHER_NAME         VARCHAR2(30 BYTE),
  QUESTION_ANSWER     VARCHAR2(20 BYTE),
  CREATION_TIME       TIMESTAMP(6)              DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME       TIMESTAMP(6)              DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE           CHAR(1 BYTE)              DEFAULT 1,
  GENDER              VARCHAR2(10 BYTE),
  BLOOD_GROUP         VARCHAR2(10 BYTE),
  FK_SECRET_QUESTION  INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_POLICLINIC
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_POLICLINIC CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_POLICLINIC
(
  PK               INTEGER                      NOT NULL,
  POLICLINIC_NAME  VARCHAR2(60 BYTE),
  CREATION_TIME    TIMESTAMP(6)                 DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME    TIMESTAMP(6)                 DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE        CHAR(1 BYTE)                 DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


DROP TABLE HOSPITAL.T_SECRET_QUESTION CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_SECRET_QUESTION
(
  PK             INTEGER,
  QUESTION       VARCHAR2(100 BYTE),
  CREATION_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME  TIMESTAMP(6)                   DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE      CHAR(1 BYTE)                   DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


ALTER TABLE HOSPITAL.T_TREATMENT
 DROP PRIMARY KEY CASCADE;

DROP TABLE HOSPITAL.T_TREATMENT CASCADE CONSTRAINTS;

CREATE TABLE HOSPITAL.T_TREATMENT
(
  PK              INTEGER                       NOT NULL,
  TREATMENT_NAME  VARCHAR2(1 BYTE),
  CREATION_TIME   TIMESTAMP(6)                  DEFAULT CURRENT_TIMESTAMP,
  MODIFIED_TIME   TIMESTAMP(6)                  DEFAULT CURRENT_TIMESTAMP,
  IS_ACTIVE       NCHAR(1)                      DEFAULT 1
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING
NOCOMPRESS
NOCACHE
MONITORING;


CREATE UNIQUE INDEX HOSPITAL.T_APPOINTMENT_PK ON HOSPITAL.T_APPOINTMENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_CITY_PK ON HOSPITAL.T_CITY
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_DISTRICT_PK ON HOSPITAL.T_DISTRICT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_DOCTOR_PK ON HOSPITAL.T_DOCTOR
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_HOSPITAL_PK ON HOSPITAL.T_HOSPITAL
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_INSPECTION_PLACE_PK ON HOSPITAL.T_INSPECTION_PLACE
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_PATIENT_PK ON HOSPITAL.T_PATIENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_POLICLINIC_PK ON HOSPITAL.T_POLICLINIC
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX HOSPITAL.T_TREATMENT_PK ON HOSPITAL.T_TREATMENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_APPOINTMENT
BEFORE INSERT
ON HOSPITAL.T_APPOINTMENT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_APPOINTMENT_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_BRANCH
BEFORE INSERT
ON HOSPITAL.T_BRANCH
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_BRANCH_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_CITY
BEFORE INSERT
ON HOSPITAL.T_CITY
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_CITY_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_DISTRICT
BEFORE INSERT
ON HOSPITAL.T_DISTRICT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_DISTRICT_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_DOCTOR
BEFORE INSERT
ON HOSPITAL.T_DOCTOR
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_DOCTOR_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_HOSPITAL
BEFORE INSERT
ON HOSPITAL.T_HOSPITAL
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_HOSPITAL_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_INSPECTION_PLACE
BEFORE INSERT
ON HOSPITAL.T_INSPECTION_PLACE
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_INSPECTION_PLACE_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_PATIENT
BEFORE INSERT
ON HOSPITAL.T_PATIENT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_PATIENT_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_POLICLINIC
BEFORE INSERT
ON HOSPITAL.T_POLICLINIC
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_POLICLINIC_PK.nextval;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_SECRET_QUESTION
BEFORE INSERT
ON HOSPITAL.T_SECRET_QUESTION
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_SECRET_QUESTION_PK.nextval;
    END IF;
END;
/


ALTER TABLE HOSPITAL.T_APPOINTMENT ADD (
  CONSTRAINT T_APPOINTMENT_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_APPOINTMENT_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_CITY ADD (
  CONSTRAINT T_CITY_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_CITY_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_DISTRICT ADD (
  CONSTRAINT T_DISTRICT_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_DISTRICT_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_DOCTOR ADD (
  CONSTRAINT T_DOCTOR_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_DOCTOR_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_HOSPITAL ADD (
  CONSTRAINT T_HOSPITAL_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_HOSPITAL_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_INSPECTION_PLACE ADD (
  CONSTRAINT T_INSPECTION_PLACE_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_INSPECTION_PLACE_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_PATIENT ADD (
  CONSTRAINT T_PATIENT_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_PATIENT_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_POLICLINIC ADD (
  CONSTRAINT T_POLICLINIC_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_POLICLINIC_PK
  ENABLE VALIDATE);

ALTER TABLE HOSPITAL.T_TREATMENT ADD (
  CONSTRAINT T_TREATMENT_PK
  PRIMARY KEY
  (PK)
  USING INDEX HOSPITAL.T_TREATMENT_PK
  ENABLE VALIDATE);
DROP TRIGGER HOSPITAL.TRG_NEW_APPOINTMENT;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_APPOINTMENT
BEFORE INSERT
ON HOSPITAL.T_APPOINTMENT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_APPOINTMENT_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_BRANCH;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_BRANCH
BEFORE INSERT
ON HOSPITAL.T_BRANCH
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_BRANCH_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_CITY;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_CITY
BEFORE INSERT
ON HOSPITAL.T_CITY
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_CITY_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_DISTRICT;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_DISTRICT
BEFORE INSERT
ON HOSPITAL.T_DISTRICT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_DISTRICT_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_DOCTOR;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_DOCTOR
BEFORE INSERT
ON HOSPITAL.T_DOCTOR
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_DOCTOR_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_HOSPITAL;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_HOSPITAL
BEFORE INSERT
ON HOSPITAL.T_HOSPITAL
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_HOSPITAL_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_INSPECTION_PLACE;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_INSPECTION_PLACE
BEFORE INSERT
ON HOSPITAL.T_INSPECTION_PLACE
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_INSPECTION_PLACE_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_PATIENT;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_PATIENT
BEFORE INSERT
ON HOSPITAL.T_PATIENT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_PATIENT_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_POLICLINIC;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_POLICLINIC
BEFORE INSERT
ON HOSPITAL.T_POLICLINIC
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_POLICLINIC_PK.nextval;
    END IF;
END;
/


DROP TRIGGER HOSPITAL.TRG_NEW_SECRET_QUESTION;

CREATE OR REPLACE TRIGGER HOSPITAL.TRG_NEW_SECRET_QUESTION
BEFORE INSERT
ON HOSPITAL.T_SECRET_QUESTION
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
BEGIN
    IF :new.PK IS NULL THEN
        :new.PK := SEQ_SECRET_QUESTION_PK.nextval;
    END IF;
END;
/
DROP SEQUENCE HOSPITAL.SEQ_APPOINTMENT_CHART_PK;

CREATE SEQUENCE HOSPITAL.SEQ_APPOINTMENT_CHART_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_APPOINTMENT_PK;

CREATE SEQUENCE HOSPITAL.SEQ_APPOINTMENT_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_BRANCH_PK;

CREATE SEQUENCE HOSPITAL.SEQ_BRANCH_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_CITY_PK;

CREATE SEQUENCE HOSPITAL.SEQ_CITY_PK
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_DISTRICT_PK;

CREATE SEQUENCE HOSPITAL.SEQ_DISTRICT_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_DOCTOR_PK;

CREATE SEQUENCE HOSPITAL.SEQ_DOCTOR_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_HOSPITAL_PK;

CREATE SEQUENCE HOSPITAL.SEQ_HOSPITAL_PK
  START WITH 6
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_INSPECTION_PLACE_PK;

CREATE SEQUENCE HOSPITAL.SEQ_INSPECTION_PLACE_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_PATIENT_PK;

CREATE SEQUENCE HOSPITAL.SEQ_PATIENT_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_POLICLINIC_PK;

CREATE SEQUENCE HOSPITAL.SEQ_POLICLINIC_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_SECRET_QUESTION_PK;

CREATE SEQUENCE HOSPITAL.SEQ_SECRET_QUESTION_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;


DROP SEQUENCE HOSPITAL.SEQ_TREATMENT_PK;

CREATE SEQUENCE HOSPITAL.SEQ_TREATMENT_PK
  START WITH 0
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER
  NOKEEP
  GLOBAL;
ALTER TABLE HOSPITAL.T_APPOINTMENT MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_APPOINTMENT
  DROP CONSTRAINT T_APPOINTMENT_PK;

ALTER TABLE HOSPITAL.T_APPOINTMENT MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_APPOINTMENT ADD (
  CONSTRAINT T_APPOINTMENT_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_CITY MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_CITY
  DROP CONSTRAINT T_CITY_PK;

ALTER TABLE HOSPITAL.T_CITY MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_CITY ADD (
  CONSTRAINT T_CITY_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_DISTRICT MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_DISTRICT
  DROP CONSTRAINT T_DISTRICT_PK;

ALTER TABLE HOSPITAL.T_DISTRICT MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_DISTRICT ADD (
  CONSTRAINT T_DISTRICT_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_DOCTOR MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_DOCTOR
  DROP CONSTRAINT T_DOCTOR_PK;

ALTER TABLE HOSPITAL.T_DOCTOR MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_DOCTOR ADD (
  CONSTRAINT T_DOCTOR_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_HOSPITAL MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_HOSPITAL
  DROP CONSTRAINT T_HOSPITAL_PK;

ALTER TABLE HOSPITAL.T_HOSPITAL MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_HOSPITAL ADD (
  CONSTRAINT T_HOSPITAL_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_INSPECTION_PLACE MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_INSPECTION_PLACE
  DROP CONSTRAINT T_INSPECTION_PLACE_PK;

ALTER TABLE HOSPITAL.T_INSPECTION_PLACE MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_INSPECTION_PLACE ADD (
  CONSTRAINT T_INSPECTION_PLACE_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_PATIENT MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_PATIENT
  DROP CONSTRAINT T_PATIENT_PK;

ALTER TABLE HOSPITAL.T_PATIENT MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_PATIENT ADD (
  CONSTRAINT T_PATIENT_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_POLICLINIC MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_POLICLINIC
  DROP CONSTRAINT T_POLICLINIC_PK;

ALTER TABLE HOSPITAL.T_POLICLINIC MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_POLICLINIC ADD (
  CONSTRAINT T_POLICLINIC_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);


ALTER TABLE HOSPITAL.T_TREATMENT MODIFY
  PK NULL;

ALTER TABLE HOSPITAL.T_TREATMENT
  DROP CONSTRAINT T_TREATMENT_PK;

ALTER TABLE HOSPITAL.T_TREATMENT MODIFY
  PK NOT NULL
  ENABLE VALIDATE;

ALTER TABLE HOSPITAL.T_TREATMENT ADD (
  CONSTRAINT T_TREATMENT_PK
  PRIMARY KEY
  (PK)
  ENABLE VALIDATE);
DROP INDEX HOSPITAL.T_APPOINTMENT_PK;

CREATE UNIQUE INDEX HOSPITAL.T_APPOINTMENT_PK ON HOSPITAL.T_APPOINTMENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_CITY_PK;

CREATE UNIQUE INDEX HOSPITAL.T_CITY_PK ON HOSPITAL.T_CITY
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_DISTRICT_PK;

CREATE UNIQUE INDEX HOSPITAL.T_DISTRICT_PK ON HOSPITAL.T_DISTRICT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_DOCTOR_PK;

CREATE UNIQUE INDEX HOSPITAL.T_DOCTOR_PK ON HOSPITAL.T_DOCTOR
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_HOSPITAL_PK;

CREATE UNIQUE INDEX HOSPITAL.T_HOSPITAL_PK ON HOSPITAL.T_HOSPITAL
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_INSPECTION_PLACE_PK;

CREATE UNIQUE INDEX HOSPITAL.T_INSPECTION_PLACE_PK ON HOSPITAL.T_INSPECTION_PLACE
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_PATIENT_PK;

CREATE UNIQUE INDEX HOSPITAL.T_PATIENT_PK ON HOSPITAL.T_PATIENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_POLICLINIC_PK;

CREATE UNIQUE INDEX HOSPITAL.T_POLICLINIC_PK ON HOSPITAL.T_POLICLINIC
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

DROP INDEX HOSPITAL.T_TREATMENT_PK;

CREATE UNIQUE INDEX HOSPITAL.T_TREATMENT_PK ON HOSPITAL.T_TREATMENT
(PK)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            MAXSIZE          UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );
