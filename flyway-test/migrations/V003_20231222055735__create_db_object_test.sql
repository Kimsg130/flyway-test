-- create index `flyway_test_schema`.`T_TEST_TXN_SYS_ID_IDX`
CREATE INDEX T_TEST_TXN_SYS_ID_IDX USING BTREE ON flyway_test_schema.T_TEST_TXN (SYS_ID, CUST_RID);


-- create function `flyway_test_schema`.`FUNC_TEST`
DROP FUNCTION IF EXISTS flyway_test_schema.FUNC_TEST;
DELIMITER $$
$$
CREATE FUNCTION flyway_test_schema.FUNC_TEST() 
	RETURNS VARCHAR(20) 
BEGIN 
	DECLARE Result VARCHAR(10); 
	SET Result = 'OK'; 
	RETURN Result; 
END;$$
DELIMITER ;


-- create view `flyway_test_schema`.`VW_TEST_CUST`
CREATE OR REPLACE VIEW flyway_test_schema.VW_TEST_CUST
AS -- flyway_test_schema.VW_TEST_CUST source
SELECT *
FROM flyway_test_schema.T_TEST_CUST ttc
WHERE SYS_FLAG = '1';

-- for test
CREATE TABLE flyway_test_schema.T_TEMP (
	TEMP INT NOT NULL COMMENT 'TEMP'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE SCHEMA temp_schema
