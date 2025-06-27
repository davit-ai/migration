-- Before Migration

update MIRS_RESTORE.dbo.parent_agent
set agent_type = 'MMTO'
where parent_agent_cd = 'MY0007'


update MIRS_RESTORE.dbo.parent_agent
set agent_type = 'DMTO'
where parent_agent_cd in
('MY0014'
,'MY0018'
,'MY0020'
,'MY0021')


update MIRS_RESTORE.dbo.parent_agent
set agent_type = 'IMTO'
where (agent_type is null Or agent_type = '')
and parent_agent_cd != '000000'

update MIRS_RESTORE.dbo.parent_agent
set agent_type = 'MMTO'
where parent_agent_cd = '000000'


CREATE INDEX IX_sub_agent_tag_dtl_charge_rule_tag_no
ON MIRS_RESTORE.dbo.sub_agent_tag_dtl(charge_rule_tag_no);
CREATE INDEX IX_grp_charge_rule_business_tag_no
ON MIRS_RESTORE.dbo.grp_charge_rule_business(tag_no);
