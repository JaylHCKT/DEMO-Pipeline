LOAD DATA
APPEND
INTO TABLE EGP_CATEGORY_SETS_INT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(TRANSACTION_TYPE		char(10) "decode(:TRANSACTION_TYPE, '#NULL', chr(0),  :TRANSACTION_TYPE)",
BATCH_ID,
CATALOG_NAME char(30) "decode(:CATALOG_NAME, '#NULL', chr(0),  :CATALOG_NAME)",
CATALOG_CODE char(30) "decode(:CATALOG_CODE, '#NULL', chr(0),  :CATALOG_CODE)",
NEW_CATALOG_CODE char(30) "decode(:NEW_CATALOG_CODE, '#NULL', chr(0),  :NEW_CATALOG_CODE)",
DESCRIPTION char(240) "decode(:DESCRIPTION, '#NULL', chr(0),  :DESCRIPTION)",
DEFAULT_CATEGORY_CODE char(820) "decode(:DEFAULT_CATEGORY_CODE, '#NULL', chr(0), :DEFAULT_CATEGORY_CODE)",
CONTROL_LEVEL char(1) "decode(:CONTROL_LEVEL, '#NULL', chr(0), 'Y', 1, 'N', 2, :CONTROL_LEVEL)",
START_DATE "decode(:START_DATE, '#NULL', TO_DATE('1', 'j'), TO_DATE(:START_DATE, 'YYYY/MM/DD'))", 
END_DATE "decode(:END_DATE, '#NULL', TO_DATE('1', 'j'), TO_DATE(:END_DATE, 'YYYY/MM/DD'))",
CATALOG_CONTENT_CODE char(30) "decode(:CATALOG_CONTENT_CODE, '#NULL', chr(0), 'Y', 'LEAF_ITEMS', 'N', 'ALL_ITEMS', :CATALOG_CONTENT_CODE)",
MULT_ITEM_CAT_ASSIGN_FLAG  char(1) "decode(:MULT_ITEM_CAT_ASSIGN_FLAG, '#NULL', chr(0),  :MULT_ITEM_CAT_ASSIGN_FLAG)",
PUBLIC_CATALOG char(1) "decode(:PUBLIC_CATALOG, '#NULL', chr(0),  :PUBLIC_CATALOG)",

ATTRIBUTE_CATEGORY		char(30) "decode(:ATTRIBUTE_CATEGORY, '#NULL', chr(0),  :ATTRIBUTE_CATEGORY)",
NEW_MIDDLE_FILE2,
ATTRIBUTE1			char(150) "decode(:ATTRIBUTE1, '#NULL', chr(0),  :ATTRIBUTE1)",
ATTRIBUTE2			char(150) "decode(:ATTRIBUTE2, '#NULL', chr(0),  :ATTRIBUTE2)",
ATTRIBUTE3			char(150) "decode(:ATTRIBUTE3, '#NULL', chr(0),  :ATTRIBUTE3)",
ATTRIBUTE4			char(150) "decode(:ATTRIBUTE4, '#NULL', chr(0),  :ATTRIBUTE4)",
ATTRIBUTE5			char(150) "decode(:ATTRIBUTE5, '#NULL', chr(0),  :ATTRIBUTE5)",
ATTRIBUTE6			char(150) "decode(:ATTRIBUTE6, '#NULL', chr(0),  :ATTRIBUTE6)",
ATTRIBUTE7			char(150) "decode(:ATTRIBUTE7, '#NULL', chr(0),  :ATTRIBUTE7)",
ATTRIBUTE8			char(150) "decode(:ATTRIBUTE8, '#NULL', chr(0),  :ATTRIBUTE8)",
ATTRIBUTE9			char(150) "decode(:ATTRIBUTE9, '#NULL', chr(0),  :ATTRIBUTE9)",
ATTRIBUTE10			char(150) "decode(:ATTRIBUTE10, '#NULL', chr(0),  :ATTRIBUTE10)",
ATTRIBUTE11			char(150) "decode(:ATTRIBUTE11, '#NULL', chr(0),  :ATTRIBUTE11)",
ATTRIBUTE12			char(150) "decode(:ATTRIBUTE12, '#NULL', chr(0),  :ATTRIBUTE12)",
ATTRIBUTE13			char(150) "decode(:ATTRIBUTE13, '#NULL', chr(0),  :ATTRIBUTE13)",
ATTRIBUTE14			char(150) "decode(:ATTRIBUTE14, '#NULL', chr(0),  :ATTRIBUTE14)",
ATTRIBUTE15			char(150) "decode(:ATTRIBUTE15, '#NULL', chr(0),  :ATTRIBUTE15)",
ATTRIBUTE_NUMBER1       "decode(:ATTRIBUTE_NUMBER1, '#NULL',9.99E125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER1))",
ATTRIBUTE_NUMBER2       "decode(:ATTRIBUTE_NUMBER2, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER2))",
ATTRIBUTE_NUMBER3       "decode(:ATTRIBUTE_NUMBER3, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER3))",
ATTRIBUTE_NUMBER4       "decode(:ATTRIBUTE_NUMBER4, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER4))",
ATTRIBUTE_NUMBER5       "decode(:ATTRIBUTE_NUMBER5, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER5))",
ATTRIBUTE_NUMBER6       "decode(:ATTRIBUTE_NUMBER6, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER6))",
ATTRIBUTE_NUMBER7       "decode(:ATTRIBUTE_NUMBER7, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER7))",
ATTRIBUTE_NUMBER8       "decode(:ATTRIBUTE_NUMBER8, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER8))",
ATTRIBUTE_NUMBER9       "decode(:ATTRIBUTE_NUMBER9, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER9))",
ATTRIBUTE_NUMBER10       "decode(:ATTRIBUTE_NUMBER10, '#NULL',9.99E+125, FUN_LOAD_INTERFACE_UTILS_PKG.REPLACE_DECIMAL_CHAR(:ATTRIBUTE_NUMBER10))",
ATTRIBUTE_DATE1       "decode(:ATTRIBUTE_DATE1, '#NULL', TO_DATE('1', 'j'), TO_DATE(:ATTRIBUTE_DATE1, 'YYYY/MM/DD'))",
ATTRIBUTE_DATE2       "decode(:ATTRIBUTE_DATE2, '#NULL', TO_DATE('1', 'j'), TO_DATE(:ATTRIBUTE_DATE2, 'YYYY/MM/DD'))",
ATTRIBUTE_DATE3       "decode(:ATTRIBUTE_DATE3, '#NULL', TO_DATE('1', 'j'), TO_DATE(:ATTRIBUTE_DATE3, 'YYYY/MM/DD'))",
ATTRIBUTE_DATE4       "decode(:ATTRIBUTE_DATE4, '#NULL', TO_DATE('1', 'j'), TO_DATE(:ATTRIBUTE_DATE4, 'YYYY/MM/DD'))",
ATTRIBUTE_DATE5       "decode(:ATTRIBUTE_DATE5, '#NULL', TO_DATE('1', 'j'), TO_DATE(:ATTRIBUTE_DATE5, 'YYYY/MM/DD'))",
ATTRIBUTE_TIMESTAMP1     "decode(:ATTRIBUTE_TIMESTAMP1, '#NULL', TO_TIMESTAMP('1', 'j'), TO_TIMESTAMP(:ATTRIBUTE_TIMESTAMP1, 'YYYY/MM/DD HH24:MI:SS:FF'))",
ATTRIBUTE_TIMESTAMP2     "decode(:ATTRIBUTE_TIMESTAMP2, '#NULL', TO_TIMESTAMP('1', 'j'), TO_TIMESTAMP(:ATTRIBUTE_TIMESTAMP2, 'YYYY/MM/DD HH24:MI:SS:FF'))",
ATTRIBUTE_TIMESTAMP3     "decode(:ATTRIBUTE_TIMESTAMP3, '#NULL', TO_TIMESTAMP('1', 'j'), TO_TIMESTAMP(:ATTRIBUTE_TIMESTAMP3, 'YYYY/MM/DD HH24:MI:SS:FF'))",
ATTRIBUTE_TIMESTAMP4     "decode(:ATTRIBUTE_TIMESTAMP4, '#NULL', TO_TIMESTAMP('1', 'j'), TO_TIMESTAMP(:ATTRIBUTE_TIMESTAMP4, 'YYYY/MM/DD HH24:MI:SS:FF'))",
ATTRIBUTE_TIMESTAMP5     "decode(:ATTRIBUTE_TIMESTAMP5, '#NULL', TO_TIMESTAMP('1', 'j'), TO_TIMESTAMP(:ATTRIBUTE_TIMESTAMP5, 'YYYY/MM/DD HH24:MI:SS:FF'))",

CREATED_BY			  CONSTANT    '#CREATEDBY#',
LAST_UPDATED_BY	                  CONSTANT    '#LASTUPDATEDBY#',
LAST_UPDATE_LOGIN		  CONSTANT    '#LASTUPDATELOGIN#',
CREATION_DATE			  EXPRESSION  "SYSTIMESTAMP",
LAST_UPDATE_DATE		  EXPRESSION  "SYSTIMESTAMP",
OBJECT_VERSION_NUMBER	  CONSTANT    1,
LOAD_REQUEST_ID	          CONSTANT    '#LOADREQUESTID#',
NEW_END_FILE2)