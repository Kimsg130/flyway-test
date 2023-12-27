-- create table `flyway_test_schema`.`T_TEST_TXN`
CREATE TABLE flyway_test_schema.T_TEST_TXN (
	SYS_ID INT auto_increment NOT NULL COMMENT 'RID',
	TXN_NM varchar(100) NULL COMMENT '거래명',
    CUST_RID INT NOT NULL COMMENT '고객RID',
    PRIMARY KEY (SYS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci
COMMENT='TEST 거래 테이블';

-- create table `flyway_test_schema`.`T_TEST_CUST`
CREATE TABLE flyway_test_schema.T_TEST_CUST (
    SYS_ID INT auto_increment NOT NULL COMMENT 'RID',
    SYS_FLAG varchar(1) NOT NULL COMMENT 'SYS_FLAG',
	CUST_NM varchar(100) NULL COMMENT '거래명',
    PRIMARY KEY (SYS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci
COMMENT='TEST 고객 테이블';

-- insert `flyway_test_schema`.`T_TEST_CUST`
INSERT INTO flyway_test_schema.T_TEST_CUST (SYS_FLAG, CUST_NM) VALUES ('1', '김고객'), ('1', '이고객');