-- delete `flyway_test_schema`.`T_TEST_TXN`
DELETE FROM flyway_test_schema.T_TEST_TXN
WHERE TXN_NAME = '거래1';

-- drop table `flyway_test_schema`.`T_TEMP`
DROP TABLE flyway_test_schema.T_TEMP;

-- drop schema `temp_schema`
DROP SCHEMA `temp_schema`;