-- create table `flyway_test_schema`.`T_TEST_TXN3`
DROP TABLE IF EXISTS flyway_test_schema.T_TEST_TXN3;
CREATE TABLE flyway_test_schema.T_TEST_TXN3 (
	SYS_ID INT auto_increment NOT NULL COMMENT 'RID',
	TXN_NM varchar(100) NULL COMMENT '거래명',
    PRIMARY KEY (SYS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci
COMMENT='TEST 거래 테이블3';


-- update
UPDATE flyway_test_schema.T_TEST_TXN2
SET TXN_NM = '9999'
WHERE TXN_NM = '2';


-- insert
INSERT flyway_test_schema.T_TEST_TXN3 (TXN_NM) VALUES ('1');
INSERT flyway_test_schema.T_TEST_TXN3 (TXN_NM) VALUES ('2');
-- error occur!
INSERT flyway_test_schema.T_TEST_TXN3 (TXN_N) VALUES ('3');
INSERT flyway_test_schema.T_TEST_TXN3 (TXN_NM) VALUES ('4');