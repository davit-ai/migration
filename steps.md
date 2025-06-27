Step 1
 - Migration of Auth Service -> 'User' , 'Department' , 'Role' , 'UserRole'
 - store procedure name : spMigrationAuthTables
 - 1.1.Auth.sql
 - script : All done 

Step 2
 - Migration of Configuration Service
 -store procedure name : 
 - 1.2.Configuration.sql

Step 3
 - Migration of Auth Service -> 'Partner', 'PartnerBranch','Setting'
 - 1.3.Auth.sql
 - store procedure name : spMigrationAuthTablesAfterConfiguration