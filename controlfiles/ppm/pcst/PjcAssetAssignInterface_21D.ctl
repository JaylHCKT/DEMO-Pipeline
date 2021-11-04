      --  This control file loads project asset assignments into staging table PJC_ASSET_ASSIGN_INT. 
      --  This table can be populated with named columns (Project Name or Project Number and so on) their corresponding ID columns, or both. 
      --  ID columns will take precedence over Name columns while Name columns will take precedence over Number columns.
      --  Sequence of columns in CSV is defined as per following order. 
     
     LOAD DATA
     INFILE *
     APPEND
     INTO TABLE PJC_ASSET_ASSIGN_INT 
     FIELDS TERMINATED BY ','
     OPTIONALLY ENCLOSED BY '"'
     TRAILING NULLCOLS 
     (                                                                        
     BATCH_NAME,
     PROCESSING_MODE,
     ASSET_ASSIGNMENT_ID,
     PROJECT_ASSET_ID,     
     ASSET_NAME,
     ASSET_NUMBER,      
     ASSET_ASSIGNMENT_LEVEL,
     PROJECT_ID,
     PROJECT_NAME,
     PROJECT_NUMBER,
     TASK_ID,
     TASK_NAME,
     TASK_NUMBER,
     ATTRIBUTE_CATEGORY,
     ATTRIBUTE1,
     ATTRIBUTE2,
     ATTRIBUTE3,
     ATTRIBUTE4,
     ATTRIBUTE5,
     ATTRIBUTE6,
     ATTRIBUTE7,
     ATTRIBUTE8,
     ATTRIBUTE9,
     ATTRIBUTE10,
     ATTRIBUTE11,
     ATTRIBUTE12,
     ATTRIBUTE13,
     ATTRIBUTE14,
     ATTRIBUTE15,
     ASSET_ASGN_INTERFACE_ID EXPRESSION "S_ROW_ID_SEQ.nextval",
     STATUS_CODE CONSTANT 'P',     
     LOAD_REQUEST_ID  CONSTANT '#LOADREQUESTID#',
     CREATION_DATE EXPRESSION "SYSTIMESTAMP",
     CREATED_BY CONSTANT '#CREATEDBY#',
     LAST_UPDATE_DATE EXPRESSION "SYSTIMESTAMP",
     LAST_UPDATED_BY CONSTANT '#LASTUPDATEDBY#',
     LAST_UPDATE_LOGIN CONSTANT '#LASTUPDATELOGIN#'
)
