** Phone number consisting more than 16 digits
- update MIRS_MigrationDB.dbo.remit_user set phone_no_1 = '+8802988714652' where phone_no_1 = '+88 02 9887146-52';

- update MIRS_MigrationDB.dbo.remit_user set phone_no_1 = '+442031370708' where phone_no_1 = '+44 203 137 0708';

- update MIRS_MigrationDB.dbo.remit_user
set email_id ='grp@premierbankltd.com'
where remit_user_cd = 'BD0012959101'
  and email_id = 'grpsadekkhanwholesalemarketsubbr@premierbankltd.com';

- update MIRS_MigrationDB.dbo.remit_user
set email_id ='mgr.lalmonirhat@aibl.com.bd'
where remit_user_cd = 'BD150019401'
  and email_id = 'mgr.lalmonirhat@aibl.com.bd
opmgr.lalmonirhat@aibl.com.bd';

- update MIRS_MigrationDB.dbo.remit_user set phone_no_1 = '8801717785613'  where phone_no_1 = '008801717785613' and remit_user_cd = 'BD01114602301';



- UPDATE AuthServicePreprod.dbo.[User]
SET FullName = N'Admin'
WHERE Id = N'12EE8A95-234E-4E92-BF02-57BF162D7348'; for user made through code