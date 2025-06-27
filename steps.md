Step 1
 - Migration of Auth Service -> 'User' , 'Department' , 'Role' , 'UserRole'
 - store procedure name : spMigrationAuthTables
 - 1.1.Auth.sql
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