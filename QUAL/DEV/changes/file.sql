--liquibase formatted sql

--changeset sivakanth.vabilishetty@invitationhomes.com:0849_MAINSTAY_SYNCUP_V2.sql

CREATE OR REPLACE TABLE ACTIVE_PRELISTINGS(
MS_ID VARCHAR(16777216),
ENDS_AT DATE,
CREATED_AT DATE,
UPDATED_AT DATE,
DELETED_AT DATE
);

ALTER TABLE HOA_FEE
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE LEADS
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE MLS_SALES_LISTINGS
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PROPERTY_CENSUS_DETAILS
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PROPERTY_DETAILS
ADD COLUMN MSA_NAME VARCHAR(16777216), CREATED_AT DATE, 
UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PROPERTY_PHOTO_LATEST
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PROPERTY_PROXIMITY_DETAILS
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PUBLIC_RENTAL_LISTINGS
ADD COLUMN LISTING_ID VARCHAR(16777216), CREATED_AT DATE, 
UPDATED_AT DATE, DELETED_AT DATE;

ALTER TABLE PUBLIC_RENTAL_LISTINGS_HISTORY
ADD COLUMN CREATED_AT DATE, UPDATED_AT DATE, DELETED_AT DATE;

GRANT SELECT ON ACTIVE_PRELISTINGS TO ROLE ANALYST;
