     -- This control file loads third party Project plan Data. It populates into staging table PJO_PLAN_VERSION_XFACE.
       -- This control file reads from user generated .csv data file from third party source and insert into interface table.
       -- Once interface table gets populated, user can submit the ESS job 'Import project plan using open interface table'
       -- to get the project plan data populated into transaction tables.
       
       LOAD DATA
       INFILE * 
       APPEND
       INTO TABLE PJO_PLAN_VERSIONS_XFACE
      FIELDS TERMINATED BY ','
      OPTIONALLY ENCLOSED BY '"'
      TRAILING NULLCOLS 
      (
      PLAN_VERSION_XFACE_ID   expression "PJO_INTERFACE_S.nextval",
      LOAD_REQUEST_ID         constant    '#LOADREQUESTID#',
      PROCESS_CODE	      constant "IMPORT_PROJECT_PLAN",
      PROJECT_NUMBER   		,
      PROJECT_NAME              ,
      TASK_NUMBER               ,
      TASK_NAME                 ,
      RESOURCE_NAME             ,
      LINE_TYPE 		,
      PERIOD_NAME		,
      PLANNING_START_DATE       "to_date(:PLANNING_START_DATE, 'YYYY/MM/DD')",
      PLANNING_END_DATE         "to_date(:PLANNING_END_DATE, 'YYYY/MM/DD')",
      PLANNING_CURRENCY         ,
      TOTAL_QUANTITY            ,
      TOTAL_TC_RAW_COST         ,
      TOTAL_TC_BRDND_COST       ,
      SRC_BUDGET_LINE_REFERENCE ,
      ATTRIBUTE_CATEGORY        ,
      ATTRIBUTE1                ,
      ATTRIBUTE2                ,
      ATTRIBUTE3                ,
      ATTRIBUTE4                ,
      ATTRIBUTE5                ,
      ATTRIBUTE6                ,
      ATTRIBUTE7                ,
      ATTRIBUTE8                ,
      ATTRIBUTE9                ,
      ATTRIBUTE10               ,
      ATTRIBUTE11               ,
      ATTRIBUTE12               ,
      ATTRIBUTE13               ,
      ATTRIBUTE14               ,
      ATTRIBUTE15               ,
      ATTRIBUTE16               ,
      ATTRIBUTE17               ,
      ATTRIBUTE18               ,
      ATTRIBUTE19               ,
      ATTRIBUTE20               ,
      ATTRIBUTE21               ,
      ATTRIBUTE22               ,
      ATTRIBUTE23               ,
      ATTRIBUTE24               ,
      ATTRIBUTE25               ,
      ATTRIBUTE26               ,
      ATTRIBUTE27               ,
      ATTRIBUTE28               ,
      ATTRIBUTE29               ,
      ATTRIBUTE30               ,
      REQUEST_ID                ,                       
      -- load_status column modified to 'COMPLETE' due to uptake issues from fin job-LoadinterfaceFileForImport. Original Value 'ON HOLD'. See ER#17190279
      LOAD_STATUS               constant "COMPLETE",
      CREATION_DATE             expression  "systimestamp",
      LAST_UPDATE_DATE          expression  "systimestamp" ,
      CREATED_BY                constant    '#CREATEDBY#' ,
      LAST_UPDATED_BY           constant    '#LASTUPDATEDBY#',
      LAST_UPDATE_LOGIN         constant    '#LASTUPDATELOGIN#',
      OBJECT_VERSION_NUMBER     constant    1
     )
