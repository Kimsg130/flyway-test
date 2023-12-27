-- create table `flyway_test_schema`.`T_TEST_TXN2`
DROP TABLE IF EXISTS flyway_test_schema.T_TEST_TXN2;
CREATE TABLE flyway_test_schema.T_TEST_TXN2 (
	SYS_ID INT auto_increment NOT NULL COMMENT 'RID',
	TXN_NM varchar(100) NULL COMMENT '거래명',
    PRIMARY KEY (SYS_ID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci
COMMENT='TEST 거래 테이블2';

-- insert
INSERT flyway_test_schema.T_TEST_TXN2 (TXN_NM) VALUES ('1');
INSERT flyway_test_schema.T_TEST_TXN2 (TXN_NM) VALUES ('2');
INSERT flyway_test_schema.T_TEST_TXN2 (TXN_NM) VALUES ('3');
INSERT flyway_test_schema.T_TEST_TXN2 (TXN_NM) VALUES ('4');