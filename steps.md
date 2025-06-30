Step 0

- Update the phone number which are max length then actual column size

select phone_no_1,user_name,(concat('+',MIRS_RESTORE.dbo.StripNonNumerics(phone_no_1))) from MIRS_RESTORE.dbo.remit_user where len(concat('+',MIRS_RESTORE.dbo.StripNonNumerics(phone_no_1))) > 15

Step 1

- Migration of Auth Service -> 'User' , 'Department' , 'Role' , 'UserRole'
- store procedure name : spMigrationAuthTables
- 1.1.Auth.sql
- 1.1.1.Auth_staticuser.sql
- script : All done

step 2

- Run the update scripts that is provided
- 1.2.1.Before_Configuration_Migration.sql

Step 3

- Migration of Configuration Service
  -store procedure name :
- 1.2.Configuration.sql

Step 4

- Migration of Auth Service -> 'Partner', 'PartnerBranch','Setting'
- 1.3.Auth.sql
- store procedure name : spMigrationAuthTablesAfterConfiguration
