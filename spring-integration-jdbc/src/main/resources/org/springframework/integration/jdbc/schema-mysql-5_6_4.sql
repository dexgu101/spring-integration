-- Autogenerated: do not edit this file

CREATE TABLE INT_MESSAGE  (
	MESSAGE_ID CHAR(36),
	REGION VARCHAR(100),
	CREATED_DATE DATETIME(6) NOT NULL,
	MESSAGE_BYTES BLOB,
	constraint MESSAGE_PK primary key (MESSAGE_ID, REGION)
) ENGINE=InnoDB;

CREATE INDEX INT_MESSAGE_IX1 ON INT_MESSAGE (CREATED_DATE);

CREATE TABLE INT_GROUP_TO_MESSAGE  (
	GROUP_KEY CHAR(36),
	MESSAGE_ID CHAR(36),
	REGION VARCHAR(100),
	constraint GROUP_TO_MESSAG_PK primary key (GROUP_KEY, MESSAGE_ID, REGION)
) ENGINE=InnoDB;

CREATE TABLE INT_MESSAGE_GROUP  (
	GROUP_KEY CHAR(36),
	REGION VARCHAR(100),
	MARKED BIGINT,
	COMPLETE BIGINT,
	LAST_RELEASED_SEQUENCE BIGINT,
	CREATED_DATE DATETIME(6) NOT NULL,
	UPDATED_DATE DATETIME(6) DEFAULT NULL,
	constraint MESSAGE_GROUP_PK primary key (GROUP_KEY, REGION)
) ENGINE=InnoDB;