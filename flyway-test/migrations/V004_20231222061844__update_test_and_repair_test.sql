-- update `flyway_test_schema`.`T_TEST_CUST`
UPDATE flyway_test_schema.T_TEST_CUST
SET SYS_FLAG = '0'
WHERE SYS_ID = '1';

-- alter `flyway_test_schema`.`T_TEST_TXN`.`TXN_NM` -> `TXN_NAME`
ALTER TABLE flyway_test_schema.T_TEST_TXN CHANGE TXN_NM TXN_NAME varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '거래명';

-- fail occur!! TXN_NM(X) -> TXN_NAME(O)
INSERT INTO flyway_test_schema.T_TEST_TXN (TXN_NAME, CUST_RID) VALUES ('거래1', '2');