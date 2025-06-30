duplicate remit_user_cd
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

use following script to check authenticity
select remit_user_cd,
       parent_agent_cd,
       CASE
           WHEN  RANK() OVER (PARTITION BY remit_user_cd ORDER BY parent_agent_cd) = 2
               THEN concat(remit_user_cd,'_',parent_agent_cd)
           ELSE remit_user_cd
           END AS second_parent_agent_cd
from MIRS_RESTORE.dbo.remit_user
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



-- no role assign to user
MY0160058