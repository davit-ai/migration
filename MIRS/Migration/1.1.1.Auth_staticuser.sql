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
       isnull(r.is_allow_2fa, 0)                                              as              isMfaEnabled,
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
        FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)                                 AS              LoginDaysInfo,
       force_pwd_change_in_days                                                               ForcePasswordChangeinDays,
       max_inactive_days                                                                      MaxInactiveDays,
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
        FOR JSON PATH, WITHOUT_ARRAY_WRAPPER)                                 AS              ContactInfo,
       NULL                                                                   AS              LastPasswordChangeDate,
       r.created_on                                                                           createdAT,
       r.modified_on                                                                          UpdatedAt,
       '12EE8A95-234E-4E92-BF02-57BF162D7348'                                 as              CreatedBy,
       '12EE8A95-234E-4E92-BF02-57BF162D7348'                                 as              UpdatedBy,
       CASE
           WHEN  RANK() OVER (PARTITION BY remit_user_cd ORDER BY parent_agent_cd) >= 2
               THEN concat(remit_user_cd,'_',parent_agent_cd)
           ELSE remit_user_cd end as                                                         UserName,
       UPPER(TRIM(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](CASE
           WHEN  RANK() OVER (PARTITION BY remit_user_cd ORDER BY parent_agent_cd) >= 2
               THEN concat(remit_user_cd,'_',parent_agent_cd)
           ELSE remit_user_cd end, 2), ' ',
                          '')))                                                               NormalizedUserName,
       UPPER(r.email_id)                                                                      NormalizedEmail,
       1                                                                      as              EmailConfirmed,
       'AQAAAAIAAYagAAAAEGy+TtCkmkHycZ6IDbeOpQ9erJfWlNpSkUKd1wUkBkdOXOqqI4UslnchgRfAhnytkw==' PasswordHash, --  Default Password: Admin@1234
       replace(newid(),'-','')                                                                                   SecurityStamp,
       null                                                                                   ConcurrencyStamp,

       case
           when len(phone_no_1) < 7 then NULL
           else
               concat('+', MIRS_RESTORE.dbo.StripNonNumerics(phone_no_1)) end as              PhoneNumber,
       0                                                                                      PhoneNumberConfirmed,
       0                                                                                      twoFactorEnabled,
       NULL                                                                                   LockoutEnd,
       CASE
           WHEN is_lock = 1
               THEN 0
           ELSE 1
           END                                                                                lockoutEnabled,
       isnull(failed_login_attempts, 0)                                       as              AccessFailedCount,
       null                                                                   as              LastLoginDate,
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
       1                                                                      as              IsFirstLogin
FROM mirs_restore.dbo.remit_user r
 where remit_user_cd in (
                        'MY0180001',
                        'MY0170041',
                        'UK080000101',
                        'NP0100001',
                        'KH010000201',
                        'MY0502006',
                        'MY0401001',
                        'CN0500001',
                        'ID0200014',
                        'BD0013480001001',
                        'MY0170001'
    )
and remit_user_cd not in (select UserName from Auth_M1.dbo.[User]);



WITH RankedRemitUsers AS (
    SELECT
        r.*,
        RANK() OVER (PARTITION BY r.remit_user_cd ORDER BY r.parent_agent_cd) AS rk
    FROM MIRS_RESTORE.dbo.remit_user r
)
INSERT INTO Auth_M1.dbo.UserRole(UserId, RoleId)
SELECT
    u.Id AS UserId,
    rm.Id AS RoleId
FROM RankedRemitUsers r
JOIN Auth_M1.dbo.[User] u
    ON u.UserName = CASE
                        WHEN r.rk >= 2 THEN CONCAT(r.remit_user_cd, '_', r.parent_agent_cd)
                        ELSE r.remit_user_cd
                   END
LEFT JOIN Auth_M1.dbo.Role rm
    ON rm.MIRS3RefNumber = r.remit_role_cd
WHERE u.Id NOT IN (
    SELECT UserId FROM Auth_M1.dbo.UserRole
);



WITH RankedRemitUsers AS (SELECT r.*,
                                 RANK() OVER (PARTITION BY r.remit_user_cd ORDER BY r.parent_agent_cd) AS rk
                          FROM MIRS_MigrationDB.dbo.remit_user r)
update u
set u.CreatedBy = c.id,
    u.UpdatedBy = m.id
FROM RankedRemitUsers r
         JOIN AuthServicePreprod.dbo.[User] u
              ON u.UserName = CASE
                                  WHEN r.rk >= 2 THEN CONCAT(r.remit_user_cd, '_', r.parent_agent_cd)
                                  ELSE r.remit_user_cd
                  END
         left join AuthServicePreprod.dbo.[User] c on c.UserName = r.created_by
         left join AuthServicePreprod.dbo.[User] m on m.UserName = r.modified_by;