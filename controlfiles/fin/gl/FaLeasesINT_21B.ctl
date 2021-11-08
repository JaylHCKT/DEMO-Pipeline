LOAD DATA
append
 
INTO TABLE fa_leases_int
fields terminated by ','   optionally enclosed by '"' trailing nullcols
(NEW_LINE
,CREATION_DATE	                      expression "systimestamp"
,CREATED_BY	                          constant '#CREATEDBY#'
,LAST_UPDATE_DATE	                    expression "systimestamp"
,LAST_UPDATE_LOGIN	                  constant '#LASTUPDATELOGIN#'
,LAST_UPDATED_BY	                    constant '#LASTUPDATEDBY#'
,LOAD_REQUEST_ID	                    constant '#LOADREQUESTID#'
,OBJECT_VERSION_NUMBER                constant 0
,POSTING_STATUS                       constant 'NEW'
,BATCH_NAME
,TRANSACTION_TYPE_CODE
,LEASE_NUMBER
,DESCRIPTION
,CATEGORY_SEGMENT1
,CATEGORY_SEGMENT2
,CATEGORY_SEGMENT3
,CATEGORY_SEGMENT4
,CATEGORY_SEGMENT5
,CATEGORY_SEGMENT6
,CATEGORY_SEGMENT7
,CONTRACT_NUMBER
,BU_NAME
,LESSOR_NAME CHAR(360)
,LESSOR_NUMBER                    
,LESSOR_SITE_NAME
,LEASE_START_DATE	                     "to_date(:LEASE_START_DATE, 'YYYY/MM/DD')"
,PAYMENT_FREQUENCY_CODE                   
,PAYMENT_OPTION_TYPE_CODE                 
,GENERATE_PAYMENT_INVOICE_CODE       
,ATTRIBUTE1
,ATTRIBUTE2
,ATTRIBUTE3
,ATTRIBUTE4
,ATTRIBUTE5
,ATTRIBUTE6
,ATTRIBUTE7
,ATTRIBUTE8
,ATTRIBUTE9
,ATTRIBUTE10
,ATTRIBUTE11
,ATTRIBUTE12
,ATTRIBUTE13
,ATTRIBUTE14
,ATTRIBUTE15
,ATTRIBUTE16	
,ATTRIBUTE17
,ATTRIBUTE18
,ATTRIBUTE19
,ATTRIBUTE20
,ATTRIBUTE21
,ATTRIBUTE22
,ATTRIBUTE23
,ATTRIBUTE24
,ATTRIBUTE25
,ATTRIBUTE26
,ATTRIBUTE27
,ATTRIBUTE28
,ATTRIBUTE29
,ATTRIBUTE30
,ATTRIBUTE_NUMBER1                     "fun_load_interface_utils_pkg.replace_decimal_char(:ATTRIBUTE_NUMBER1)"
,ATTRIBUTE_NUMBER2                     "fun_load_interface_utils_pkg.replace_decimal_char(:ATTRIBUTE_NUMBER2)"
,ATTRIBUTE_NUMBER3                     "fun_load_interface_utils_pkg.replace_decimal_char(:ATTRIBUTE_NUMBER3)"
,ATTRIBUTE_NUMBER4                     "fun_load_interface_utils_pkg.replace_decimal_char(:ATTRIBUTE_NUMBER4)"
,ATTRIBUTE_NUMBER5                     "fun_load_interface_utils_pkg.replace_decimal_char(:ATTRIBUTE_NUMBER5)"
,ATTRIBUTE_DATE1                       "to_date(:ATTRIBUTE_DATE1, 'YYYY/MM/DD')"
,ATTRIBUTE_DATE2                       "to_date(:ATTRIBUTE_DATE2, 'YYYY/MM/DD')"
,ATTRIBUTE_DATE3                       "to_date(:ATTRIBUTE_DATE3, 'YYYY/MM/DD')"
,ATTRIBUTE_DATE4                       "to_date(:ATTRIBUTE_DATE4, 'YYYY/MM/DD')"
,ATTRIBUTE_DATE5                       "to_date(:ATTRIBUTE_DATE5, 'YYYY/MM/DD')"
,ATTRIBUTE_CATEGORY
,LEASE_INTERFACE_ID	                   "FA_INTERFACE_UTILS_PKG.create_parent_key4('ASSETLEASE', :LEASE_NUMBER, '-X', '-Y', '-Z', '#LOADREQUESTID#')"
)
