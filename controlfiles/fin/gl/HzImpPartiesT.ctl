   LOAD DATA
   APPEND
   INTO TABLE HZ_IMP_PARTIES_T   
   FIELDS TERMINATED BY ','
   OPTIONALLY ENCLOSED BY '"'
   TRAILING NULLCOLS
   (
        BATCH_ID,
        PARTY_ORIG_SYSTEM,
        PARTY_ORIG_SYSTEM_REFERENCE,
        INSERT_UPDATE_FLAG,
        PARTY_TYPE,
        PARTY_NUMBER,
        SALUTATION,
        PARTY_USAGE_CODE,
        JGZZ_FISCAL_CODE,
        ORGANIZATION_NAME CHAR(360),
        DUNS_NUMBER_C,
        PERSON_FIRST_NAME,
        PERSON_LAST_NAME,
        PERSON_LAST_NAME_PREFIX,
        PERSON_SECOND_LAST_NAME,
        PERSON_MIDDLE_NAME,
        PERSON_NAME_SUFFIX,
        PERSON_TITLE,
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
        ATTRIBUTE16,
        ATTRIBUTE17,
        ATTRIBUTE18,
        ATTRIBUTE19,
        ATTRIBUTE20,
        ATTRIBUTE21,
        ATTRIBUTE22,
        ATTRIBUTE23,
        ATTRIBUTE24,
        ATTRIBUTE25,
        ATTRIBUTE26,
        ATTRIBUTE27,
        ATTRIBUTE28,
        ATTRIBUTE29,
        ATTRIBUTE30,
        LOAD_REQUEST_ID                  constant '#LOADREQUESTID#'

)