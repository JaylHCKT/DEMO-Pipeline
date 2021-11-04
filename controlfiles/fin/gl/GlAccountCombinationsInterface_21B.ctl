-- +=========================================================================+
-- | $Header: fusionapps/fin/gl/bin/GlAccountCombinationsInterface.ctl /st_fusionapps_pt-v2mib/5 2020/10/29 09:53:16 jenchen Exp $ |
-- +=========================================================================+
-- | Copyright (c) 2017 Oracle Corporation Redwood City, California, USA |
-- | All rights reserved. |
-- |=========================================================================+
-- | |
-- | |
-- | FILENAME |
-- | |
-- | GlImportAccountCombinationsInterface.ctl
-- | |
-- | DESCRIPTION
-- | Uploads CSV file data into GL_BULK_COMBINATIONS_INT |
-- | Created by stadipar  02/01/2018
-- | Tested by stadipar
-- | History
-- | Initial version source controled via bug 27330378
load data
append into table GL_BULK_COMBINATIONS_INT
fields terminated by "," optionally enclosed by '"' trailing nullcols
(
   LOAD_REQUEST_ID                 CONSTANT '#LOADREQUESTID#',
   STATUS    	                   CONSTANT 'IN_PROGRESS',
   ROW_NUMBER                      SEQUENCE(1,1),
   STRUCTURE_INSTANCE_CODE,
   ENABLED_FLAG,
   OLD_MIDDLE_FILE2_1,
   SEGMENT1,
   SEGMENT2,
   SEGMENT3,
   SEGMENT4,
   SEGMENT5, 
   SEGMENT6,
   SEGMENT7,
   SEGMENT8,
   SEGMENT9,
   SEGMENT10,
   SEGMENT11,
   SEGMENT12,
   SEGMENT13,
   SEGMENT14,
   SEGMENT15,
   SEGMENT16,
   SEGMENT17,
   SEGMENT18,
   SEGMENT19,
   SEGMENT20,
   SEGMENT21,
   SEGMENT22,
   SEGMENT23,
   SEGMENT24,
   SEGMENT25,
   SEGMENT26,
   SEGMENT27,
   SEGMENT28,
   SEGMENT29,
   SEGMENT30,
   DETAIL_POSTING_ALLOWED_FLAG,
   START_DATE_ACTIVE    "to_date(decode(:START_DATE_ACTIVE,null,null,'$null$','4712/12/31',:START_DATE_ACTIVE),'YYYY/MM/DD')",
   END_DATE_ACTIVE      "to_date(decode(:END_DATE_ACTIVE,null,null,'$null$','4712/12/31',:END_DATE_ACTIVE),'YYYY/MM/DD')",
   PRESERVE_FLAG,
   ALTERNATE_ACCOUNT	CHAR(1000),
   GROUP_NUMBER,
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
   ATTRIBUTE_DATE1 "to_date(decode(trim(replace(replace(:ATTRIBUTE_DATE1,chr(13),' '),chr(10),' ')),'END',null,null,null,'$null$','4712/12/31',:ATTRIBUTE_DATE1),'YYYY/MM/DD')",
   ATTRIBUTE_DATE2 "to_date(decode(:ATTRIBUTE_DATE2,null,null,'$null$','4712/12/31',:ATTRIBUTE_DATE2),'YYYY/MM/DD')",
   ATTRIBUTE_DATE3 "to_date(decode(:ATTRIBUTE_DATE3,null,null,'$null$','4712/12/31',:ATTRIBUTE_DATE3),'YYYY/MM/DD')",
   ATTRIBUTE_DATE4 "to_date(decode(:ATTRIBUTE_DATE4,null,null,'$null$','4712/12/31',:ATTRIBUTE_DATE4),'YYYY/MM/DD')",
   ATTRIBUTE_DATE5 "to_date(decode(:ATTRIBUTE_DATE5,null,null,'$null$','4712/12/31',:ATTRIBUTE_DATE5),'YYYY/MM/DD')",
   ATTRIBUTE_NUMBER1 "decode(:ATTRIBUTE_NUMBER1,null,null,'$null$','-999999999999999999',:ATTRIBUTE_NUMBER1)",
   ATTRIBUTE_NUMBER2 "decode(:ATTRIBUTE_NUMBER2,null,null,'$null$','-999999999999999999',:ATTRIBUTE_NUMBER2)",
   ATTRIBUTE_NUMBER3 "decode(:ATTRIBUTE_NUMBER3,null,null,'$null$','-999999999999999999',:ATTRIBUTE_NUMBER3)",
   ATTRIBUTE_NUMBER4 "decode(:ATTRIBUTE_NUMBER4,null,null,'$null$','-999999999999999999',:ATTRIBUTE_NUMBER4)",
   ATTRIBUTE_NUMBER5 "decode(:ATTRIBUTE_NUMBER5,null,null,'$null$','-999999999999999999',:ATTRIBUTE_NUMBER5)",
   OLD_END_FILE2_1

 )

