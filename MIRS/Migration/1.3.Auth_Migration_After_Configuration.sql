CREATE procedure spMigrationAuthTablesAfterConfiguration
AS

BEGIN


    DECLARE @MigratedRows bigint = 0;

    begin


        INSERT INTO Auth_M1.dbo.Partner
        (Code,
         Name,
         Collecting,
         Paying,
         Status,
         Type)
        select Code,
               Name,
               Collecting,
               Paying,
               Status,
               Type
        from ConfigurationService_Migration.dbo.Partner

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'Partner', @MigratedRows)

    end

    begin

        INSERT INTO Auth_M1.dbo.PartnerBranch
        (Code,
         Name,
         BranchType,
         AgentType,
         PartnerCode,
         OutletCode,
         AlphaCode,
         Status)
        select Code,
               Name,
               BranchType,
               AgentType,
               PartnerCode,
               OutletCode,
               AlphaCode,
               Status
        from ConfigurationService_Migration.dbo.PartnerBranch

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'PartnerBranch', @MigratedRows)

    end

    begin


        INSERT INTO Auth_M1.dbo.Setting
        ([Key],
         Value,
         CreatedAt,
         UpdatedAt,
         CreatedBy,
         CreatedByName,
         UpdatedBy,
         UpdatedByName)
        select [Key],
               Value,
               CreatedAt,
               UpdatedAt,
               CreatedBy,
               CreatedByName,
               UpdatedBy,
               UpdatedByName
        from ConfigurationService_Migration.dbo.Setting;

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'PartnerBranch', @MigratedRows)

    end
END