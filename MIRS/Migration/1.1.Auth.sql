CREATE or alter procedure spMigrationAuthTables
AS

BEGIN


    DECLARE @MigratedRows bigint = 0;

    begin
        --- Department Table
        set identity_insert [Auth_M1].dbo.Department ON
        insert into [Auth_M1].dbo.Department
        (Id, Name)

        select ref_code, ref_desc
        from MIRS_RESTORE.dbo.ref_code_table_dtl
        where ref_rec_type = 'DEPARTMENT'
-- and ref_code != 1  -- if already insert discard from this condition
        set identity_insert [Auth_M1].dbo.Department OFf

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'Department', @MigratedRows)

    end

    begin
        INSERT INTO [Auth_M1].[dbo].[User]
        ( [Id]
        , [Email]
        , [PartnerCode]
        , [PartnerBranchCode]
        , [IsMfaEnabled]
        , [LoginDaysInfo]
        , [ForcePasswordChangeInDays]
        , [MaxInactiveDays]
        , [ContactInfo]
        , [LastPasswordChangeDate]
        , [CreatedAt]
        , [UpdatedAt]
        , [CreatedBy]
        , [UpdatedBy]
        , [UserName]
        , [NormalizedUserName]
        , [NormalizedEmail]
        , [EmailConfirmed]
        , [PasswordHash]
        , [SecurityStamp]
        , [ConcurrencyStamp]
        , [PhoneNumber]
        , [PhoneNumberConfirmed]
        , [TwoFactorEnabled]
        , [LockoutEnd]
        , [LockoutEnabled]
        , [AccessFailedCount]
        , [LastLoginDate]
        , [IdCardNumber]
        , [IdCardType]
        , [MaxIdleTimeInMinutes]
        , [FullName]
        , [DepartmentId]
        , [UserStatus]
        , [IsFirstLogin])

        SELECT NEWID()                                                                                id,
               r.email_id                                                                             email,
               CASE
                   WHEN r.parent_agent_cd = '000000'
                       THEN NULL
                   ELSE r.parent_agent_cd
                   END                                                                                partnerCode,
               r.sub_agent_cd                                                                         PartnerBranchCode,
               isnull(r.is_allow_2fa, 0)              as                                              isMfaEnabled,
               (SELECT JSON_QUERY(
                               (SELECT CASE
                                           WHEN Sunday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Sunday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Monday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Monday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Tuesday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Tuesday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Wednesday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Wednesday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Thursday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Thursday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Friday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Friday,
                       JSON_QUERY(
                               (SELECT CASE
                                           WHEN Saturday = 'y'
                                               THEN 'true'
                                           ELSE 'false'
                                           END AS                 IsAllowed,
                                       r.login_start_time + ':00' LoginStartTime,
                                       r.login_end_time + ':00'   LoginEndTime
                                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)) AS Saturday
                FROM mirs_restore.dbo.remit_user ru
                WHERE ru.parent_agent_cd = r.parent_agent_cd
                  AND ru.remit_user_cd = r.remit_user_cd
                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER) AS                                              LoginDaysInfo,
               force_pwd_change_in_days                                                               ForcePasswordChnageinDays,
               max_inactive_days                                                                      MaxInactivdeDays,
               (SELECT email_id                                                   AS Email,
                       JSON_QUERY('[' + COALESCE(QUOTENAME(phone_no_1, '"'), '') + IIF(phone_no_1 IS NOT NULL
                                                                                           AND phone_no_2 IS NOT NULL,
                                                                                       ',', '') +
                                  COALESCE(QUOTENAME(phone_no_2, '"'), '') + ']') AS Phones,
                       JSON_QUERY('[' + COALESCE(QUOTENAME(fax_no_1, '"'), '') + IIF(fax_no_1 IS NOT NULL
                                                                                         AND fax_no_2 IS NOT NULL, ',',
                                                                                     '') +
                                  COALESCE(QUOTENAME(fax_no_2, '"'), '') + ']')   AS Faxes
                FROM mirs_restore.dbo.remit_user ru
                WHERE ru.parent_agent_cd = r.parent_agent_cd
                  AND ru.remit_user_cd = r.remit_user_cd
                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER) AS                                              ContactInfo,
               NULL                                   AS                                              LastPasswordChangeDate,
               r.created_on                                                                           createdAT,
               r.modified_on                                                                          UpdatedAt,
               '12EE8A95-234E-4E92-BF02-57BF162D7348' as                                              CreatedBy,
               '12EE8A95-234E-4E92-BF02-57BF162D7348' as                                              UpdatedBy,
               r.[remit_user_cd]                                                                      UserName,
               UPPER(TRIM(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](r.[remit_user_cd], 2), ' ',
                                  '')))                                                               NormalizedUserName,
               UPPER(r.email_id)                                                                      NormalizedEmail,
               1                                      as                                              EmailConfirmed,
               'AQAAAAIAAYagAAAAEIrCq4l5xE0TiDzIX/ptgl2Ere05nBk7lqVKP0pFS+BpXrRCVHLAk0UH412DRHUuvQ==' PasswordHash, --  Default Password: P@ssword
               null                                                                                   SecurityStamp,
               null                                                                                   ConcurrencyStamp,
               phone_no_1                                                                             PhoneNumber,
               0                                                                                      PhoneNumberConfirmed,
               0                                                                                      twoFactorEnabled,
               NULL                                                                                   LockoutEnd,
               CASE
                   WHEN is_lock = 1
                       THEN 0
                   ELSE 1
                   END                                                                                lockoutEnabled,
               isnull(failed_login_attempts, 0)       as                                              AccessFailedCount,
               null                                   as                                              LastLoginDate,
               mykad_passportno                                                                       idCardNumber, -- Required mapping
               id_card_type_cd                                                                        idCardType,   -- Required mapping
               max_idle_time_in_min                                                                   MaxIdleTimeInMinutes,
               UPPER(TRIM([user_name]))                                                               FullName,
               department                                                                             DepartmentId,
               case
                   when del_flag = 'Y' then 5
                   when is_lock = 1 then 4
                   when remit_user_status = 'A' then 1
                   when remit_user_status = 'I' then 2
                   end                                                                                UserStatus,   -- required mapping
               1                                      as                                              IsFirstLogin
        FROM mirs_restore.dbo.remit_user r
                 left join Auth_M1.dbo.[User] cre on cre.UserName = r.created_by
                 left join Auth_M1.dbo.[User] mod on mod.UserName = r.modified_by;

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'User', @MigratedRows);


        begin tran
            update u
            set u.CreatedBy = c.id,
                u.UpdatedBy = m.id
            from Auth_M1.dbo.[User] u
                     join MIRS_RESTORE.dbo.remit_user r on r.remit_user_cd = u.UserName
                     left join Auth_M1.dbo.[User] c on c.UserName = r.created_by
                     left join Auth_M1.dbo.[User] m on m.UserName = r.modified_by
        commit
    END

    begin
        insert into Auth_M1.dbo.Role(Id, Portal, IsActive, CreatedAt, UpdatedAt, CreatedBy, UpdatedBy, DeletedBy,
                                     DeletedAt,
                                     Name, NormalizedName, ConcurrencyStamp, MIRS3RefNumber)

        select newid()                                                      as Id,
               aor.Portal,
               case when del_flag = 'N' then 1 else 2 end                   as 'IsActive',
               coalesce(created_on, getdate())                              as createdAt,
               coalesce(modified_on, getdate())                             as updatedAt,
               cre.id                                                       as CreatedBy,
               mod.id                                                       as UpdatedBy,
               ''                                                           as DeletedBy,
               case when del_flag = 'Y' then modified_on else getdate() end as DeletedOn,
               aor.Name,
               aor.NormalizedName,
               aor.ConcurrencyStamp,
               r.remit_role_cd                                              as 'MIRS3RefNumber'
        from MIRS_RESTORE.dbo.remit_role r
                 left join Auth_M1.dbo.[User] cre on cre.UserName = r.created_by
                 left join Auth_M1.dbo.[User] mod on mod.UserName = r.modified_by
                 left join AuthServiceSIT.dbo.Role aor on aor.Name = r.remit_role_name;
        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'Role', @MigratedRows)

    end

    BEGIN

        INSERT INTO Auth_M1.dbo.UserRole(UserId, RoleId)
        select u.Id  as UserId,
               rm.Id as RoleId
        FROM MIRS_RESTORE.dbo.remit_user r
                 join Auth_M1.dbo.[User] u on u.UserName = r.remit_user_cd
                 join Auth_M1.dbo.Role rm on rm.MIRS3RefNumber = r.remit_role_cd
        --where r.parent_agent_cd in ('000000', 'MY0001')
        -- and r.remit_role_cd in ('00', '07')
        -- and u.id not in (select Userid from Auth_M1.dbo.UserRole);

        SET @MigratedRows = @@ROWCOUNT;

        insert into [Auth_M1].dbo.MigratedReport(DatabaseName, TableName, MigratedRow)
        values ('Auth', 'UserRole', @MigratedRows)
    END
END
go
