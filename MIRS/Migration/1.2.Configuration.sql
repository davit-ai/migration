
INSERT INTO ConfigurationService_Migration.dbo.[User]
(UserName,
 Name,
 PartnerBranchCode,
 Status,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 Id,
 PartnerCode,
 Portal,
 IsDeleted)
select u.UserName          as UserName,
       u.FullName          as Name,
       u.PartnerBranchCode as PartnerBranchCode,
       u.UserStatus        as Status,
       u.CreatedAt         as CreatedAt,
       u.UpdatedAt         as UpdatedAt,
       u.CreatedBy         as CreatedBy,
       c.FullName          as CreatedByName,
       u.UpdatedBy         as UpdatedBy,
       m.FullName          as UpdatedByName,
       u.Id                as Id,
       u.PartnerCode       as PartnerCode,
       r.portal                   as Portal,
       0                   as IsDeleted
from AuthService_Migration.dbo.[User] u
left join AuthService_Migration.dbo.[User] c on c.Id = u.CreatedBy
left join AuthService_Migration.dbo.[User] m on m.Id = u.UpdatedBy
inner join Auth_M1.dbo.UserRole ur on ur.userid  = u.id
inner join Auth_M1.dbo.Role r on r.id = ur.roleid

----------- ################ User Migration   ################ -------------



----------- ################ Currency Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'UAE DIRHAM', N'AED', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'UAE Dirham', N'784', 0, 1, N'{"CurrencyCode":"AED","IsoCountryCode":"AE","CurrencyName":"Utd. Arab Emir. Dirham","Equivalence":"100 fils = dirham","PrefixFormat":"Dhs.","DecimalPlaces":"2","CurrencyRegime":"US-$ (lim.flex)","MajorUnit":"Dirham","MinorUnit":"Fil","MajorUnitPlural":"Dirhams","MinorUnitPlural":"Fils","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'AFGHAN AFGHANI', N'AFN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Afghan Afghani', N'971', 0, 1, N'[{"CurrencyCode":"AFN","IsoCountryCode":"AF","CurrencyName":"Afghanistan Afghani","Equivalence":"100 puls = afghani","PrefixFormat":"Af","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Afghani","MinorUnit":"Pul","MajorUnitPlural":"Afghanis","MinorUnitPlural":"Puls","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"},{"CurrencyCode":"USD","IsoCountryCode":"AF","CurrencyName":"US Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}]');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ALBANIAN LEK', N'ALL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Albanian Lek', N'008', 0, 1, N'{"CurrencyCode":"ALL","IsoCountryCode":"AL","CurrencyName":"Albanian Lek","Equivalence":"100 qindarka = Lek","PrefixFormat":"L","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Lek","MinorUnit":"Qindarka","MajorUnitPlural":"Leks","MinorUnitPlural":"Qindarkas","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ARMENIAN DRAM', N'AMD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Armenian Dram', N'051', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NETHERLANDS ANTILLEAN GUILDER', N'ANG', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Netherlands Antillean Guilder', N'532', 0, 1, N'{"CurrencyCode":"ANG","IsoCountryCode":"S1","CurrencyName":"Netherlands Antilles Guilder","Equivalence":"100 cents = N.A. guilder","PrefixFormat":"NAf.","DecimalPlaces":"2","CurrencyRegime":"US-$ (1.79)","MajorUnit":"Guilder","MinorUnit":"Cent","MajorUnitPlural":"Guilders","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ANGOLAN KWANZA', N'AOA', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Angolan Kwanza', N'973', 0, 1, N'{"CurrencyCode":"AOA","IsoCountryCode":"AO","CurrencyName":"Angolan  Kwanza","Equivalence":"100 c\\u00EAntimos = kwanza","PrefixFormat":"Kz","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Kwanza","MinorUnit":"C\\u00EAntimo","MajorUnitPlural":"Kwanzas","MinorUnitPlural":"C\\u00EAntimos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ARGENTINE PESO', N'ARS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Argentine Peso', N'032', 0, 1, N'{"CurrencyCode":"ARS","IsoCountryCode":"AR","CurrencyName":"Argentine Peso","Equivalence":"100 centavos = nuevo peso","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"US-$ (1.0)","MajorUnit":"Peso","MinorUnit":"Centavo","MajorUnitPlural":"Pesos","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'AUSTRALIAN DOLLAR', N'AUD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Australian Dollar', N'036', 0, 1, N'{"CurrencyCode":"AUD","IsoCountryCode":"TV","CurrencyName":"Australian Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"AU$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ARUBAN FLORIN', N'AWG', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Aruban Florin', N'533', 0, 1, N'{"CurrencyCode":"AWG","IsoCountryCode":"AW","CurrencyName":"Aruban Florin","Equivalence":"100 cents = florin","PrefixFormat":"Af.","DecimalPlaces":"2","CurrencyRegime":"US-$ (1.79)","MajorUnit":"Florin","MinorUnit":"Cent","MajorUnitPlural":"Florins","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'AZERBAIJANI MANAT', N'AZN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Azerbaijani Manat', N'944', 0, 1, N'{"CurrencyCode":"AZN","IsoCountryCode":"AZ","CurrencyName":"Azerbaijani Manat","Equivalence":"100 Q\\u0259pik = Manat","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Manat","MinorUnit":"Q\\u0259pik","MajorUnitPlural":"Manats","MinorUnitPlural":"Q\\u0259piks","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BOSNIA-HERZEGOVINA DINAR (OLD)', N'BAD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bosnia-Herzegovina Dinar (old)', N'070', 0, 1, N'[{"CurrencyCode":"BAD","IsoCountryCode":"BA","CurrencyName":"Convertible  Mark","Equivalence":null,"PrefixFormat":"KM","DecimalPlaces":"0","CurrencyRegime":"Euro (1.95583)","MajorUnit":"Conv Mark","MinorUnit":null,"MajorUnitPlural":"Conv Marks","MinorUnitPlural":null,"Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"},{"CurrencyCode":"EUR","IsoCountryCode":"BA","CurrencyName":"Euro","Equivalence":"100 cents = euro","PrefixFormat":"\\u20AC","DecimalPlaces":"2","CurrencyRegime":null,"MajorUnit":"Euro","MinorUnit":"Cent","MajorUnitPlural":"Euros","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}]');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BARBADIAN DOLLAR', N'BBD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Barbadian Dollar', N'052', 0, 1, N'{"CurrencyCode":"BBD","IsoCountryCode":"BB","CurrencyName":"Barbados Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"Bds$","DecimalPlaces":"2","CurrencyRegime":"US-$ (2.0)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BANGLADESHI TAKA', N'BDT', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bangladeshi Taka', N'050', 0, 1, N'{"CurrencyCode":"BDT","IsoCountryCode":"BD","CurrencyName":"Bangladeshi Taka","Equivalence":"100 paisa = taka","PrefixFormat":"Bt.","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Taka","MinorUnit":"Paisa","MajorUnitPlural":"Takas","MinorUnitPlural":"Paisas","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BULGARIAN LEV', N'BGN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bulgarian Lev', N'975', 0, 1, N'{"CurrencyCode":"BGN","IsoCountryCode":"BG","CurrencyName":"Bulgarian New Lev","Equivalence":"100 stotinki = lev","PrefixFormat":"Lv","DecimalPlaces":"2","CurrencyRegime":"Euro (1.95583)","MajorUnit":"Lev","MinorUnit":"Stotinki","MajorUnitPlural":"Levs","MinorUnitPlural":"Stotinkis","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BAHRAINI DINAR', N'BHD', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bahraini Dinar', N'048', 0, 1, N'{"CurrencyCode":"BHD","IsoCountryCode":"BH","CurrencyName":"Bahraini Dinar","Equivalence":"1000 fils = dinar","PrefixFormat":"BD","DecimalPlaces":"3","CurrencyRegime":"US-$ (lim.flex.)","MajorUnit":"Dinar","MinorUnit":"Fil","MajorUnitPlural":"Dinars","MinorUnitPlural":"Fils","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BURUNDIAN FRANC', N'BIF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Burundian Franc', N'108', 0, 1, N'{"CurrencyCode":"BIF","IsoCountryCode":"BI","CurrencyName":"Burundi Franc","Equivalence":"100 centimes = franc","PrefixFormat":"FBu","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BERMUDIAN DOLLAR', N'BMD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bermudian Dollar', N'060', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BRUNEI DOLLAR', N'BND', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Brunei Dollar', N'096', 0, 1, N'{"CurrencyCode":"BND","IsoCountryCode":"BN","CurrencyName":"Brunei Dollar","Equivalence":"100 cents = dollar (a.k.a. ringitt)","PrefixFormat":"B$","DecimalPlaces":"2","CurrencyRegime":"S$ (1.0)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BOLIVIAN BOLIVIANO', N'BOB', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bolivian Boliviano', N'068', 0, 1, N'{"CurrencyCode":"BOB","IsoCountryCode":"BO","CurrencyName":"Bolivian Boliviano","Equivalence":"100 centavos = boliviano","PrefixFormat":"Bs","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Boliviano","MinorUnit":"Centavo","MajorUnitPlural":"Bolivianos","MinorUnitPlural":"Centavos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BRAZILIAN REAL', N'BRL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Brazilian Real', N'986', 0, 1, N'{"CurrencyCode":"BRL","IsoCountryCode":"BR","CurrencyName":"Brazilian Real","Equivalence":"100 centavos = real","PrefixFormat":"R$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Real","MinorUnit":"Centavo","MajorUnitPlural":"Reals","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BAHAMIAN DOLLAR', N'BSD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bahamian Dollar', N'044', 0, 1, N'{"CurrencyCode":"BSD","IsoCountryCode":"BS","CurrencyName":"Bahamian Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"US-$ (1.0)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BHUTANESE NGULTRUM', N'BTN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Bhutanese Ngultrum', N'064', 0, 1, N'{"CurrencyCode":"BTN","IsoCountryCode":"BT","CurrencyName":"Bhutan Ngultrum","Equivalence":"100 chetrum = ngultrum","PrefixFormat":"Nu","DecimalPlaces":"2","CurrencyRegime":"Indian Rupee (1.0)","MajorUnit":"Ngultrum","MinorUnit":"Chetrum","MajorUnitPlural":"Ngultrums","MinorUnitPlural":"Cheltrums","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BOTSWANA PULA', N'BWP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Botswana Pula', N'072', 0, 1, N'{"CurrencyCode":"BWP","IsoCountryCode":"BW","CurrencyName":"Botswana Pula","Equivalence":"100 thebe = pula","PrefixFormat":"P","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Pula","MinorUnit":"Thebe","MajorUnitPlural":"Pulas","MinorUnitPlural":"Thebe","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BELARUSIAN RUBLE', N'BYN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Belarusian Ruble', N'933', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BELIZE DOLLAR', N'BZD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Belize Dollar', N'084', 0, 1, N'{"CurrencyCode":"BZD","IsoCountryCode":"BZ","CurrencyName":"Belize Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"US-$ (2.0)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CANADIAN DOLLAR', N'CAD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Canadian Dollar', N'124', 0, 1, N'{"CurrencyCode":"CAD","IsoCountryCode":"CA","CurrencyName":"Canadian Dollar","Equivalence":"100 cents = dollar","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SWISS FRANC', N'CHF', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Swiss Franc', N'756', 0, 1, N'{"CurrencyCode":"CHF","IsoCountryCode":"CH","CurrencyName":"Swiss Franc","Equivalence":"100 centimes = franc","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CHILEAN PESO', N'CLP', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Chilean Peso', N'152', 0, 1, N'{"CurrencyCode":"CLP","IsoCountryCode":"CL","CurrencyName":"Chilean Peso","Equivalence":"100 centavos = new peso","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"indicators","MajorUnit":"New Peso","MinorUnit":"Centavo","MajorUnitPlural":"New Pesos","MinorUnitPlural":"Centavos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CHINESE YUAN', N'CNY', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Chinese Yuan', N'156', 0, 1, N'{"CurrencyCode":"CNY","IsoCountryCode":"CN","CurrencyName":"Chinese Yuan Renminbi","Equivalence":"10 jiao = yuan renminbi","PrefixFormat":"Y","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Yuan Renminbi","MinorUnit":"Jiao","MajorUnitPlural":"Yuan Renminbis","MinorUnitPlural":"Jiao","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'COLOMBIAN PESO', N'COP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Colombian Peso', N'170', 0, 1, N'{"CurrencyCode":"COP","IsoCountryCode":"CO","CurrencyName":"Colombian Peso","Equivalence":"100 centavos = peso","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Peso","MinorUnit":"Centavo","MajorUnitPlural":"Pesos","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'COSTA RICAN COLÓN', N'CRC', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Costa Rican Colón', N'188', 0, 1, N'{"CurrencyCode":"CRC","IsoCountryCode":"CR","CurrencyName":"Costa Rican Colon","Equivalence":"100 centimos = colon","PrefixFormat":"\\u20A1","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Colon","MinorUnit":"Centimo","MajorUnitPlural":"Colons","MinorUnitPlural":"Centimos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CUBAN PESO', N'CUP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Cuban Peso', N'192', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CAPE VERDEAN ESCUDO', N'CVE', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Cape Verdean Escudo', N'132', 0, 1, N'{"CurrencyCode":"CVE","IsoCountryCode":"CV","CurrencyName":"Cape Verde Escudo","Equivalence":"100 centavos = escudo","PrefixFormat":"C.V.E","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Escudo","MinorUnit":"Centavo","MajorUnitPlural":"Escudos","MinorUnitPlural":"Centavos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CZECH KORUNA', N'CZK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Czech Koruna', N'203', 0, 1, N'{"CurrencyCode":"CZK","IsoCountryCode":"CZ","CurrencyName":"Czech Koruna","Equivalence":"100 haler = koruna","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Koruna","MinorUnit":"Haler","MajorUnitPlural":"Korunas","MinorUnitPlural":"Haler","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'DJIBOUTIAN FRANC', N'DJF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Djiboutian Franc', N'262', 0, 1, N'{"CurrencyCode":"DJF","IsoCountryCode":"DJ","CurrencyName":"Djibouti Franc","Equivalence":"100 centimes = franc","PrefixFormat":"DF","DecimalPlaces":"2","CurrencyRegime":"US-$ (177.72)","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'DANISH KRONE', N'DKK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Danish Krone', N'208', 0, 1, N'{"CurrencyCode":"DKK","IsoCountryCode":"DK","CurrencyName":"Danish Krone","Equivalence":"100 ore = krone","PrefixFormat":"kr.","DecimalPlaces":"2","CurrencyRegime":"ESM","MajorUnit":"Krone","MinorUnit":"Ore","MajorUnitPlural":"Kroner","MinorUnitPlural":"Ore","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'DOMINICAN PESO', N'DOP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Dominican Peso', N'214', 0, 1, N'{"CurrencyCode":"DOP","IsoCountryCode":"DO","CurrencyName":"Dominican Peso","Equivalence":"100 centavos = peso","PrefixFormat":"RD$","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Peso","MinorUnit":"Centavo","MajorUnitPlural":"Pesos","MinorUnitPlural":"Centavos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ALGERIAN DINAR', N'DZD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Algerian Dinar', N'012', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ESTONIAN KROON (DISCONTINUED)', N'EEK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Estonian Kroon (discontinued)', N'233', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'EGYPTIAN POUND', N'EGP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Egyptian Pound', N'818', 0, 1, N'{"CurrencyCode":"EGP","IsoCountryCode":"EG","CurrencyName":"Egyptian Pound","Equivalence":"1000 milliemes = pound,100 piasters = pound","PrefixFormat":"L.E.","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Pound","MinorUnit":"Millieme","MajorUnitPlural":"Pounds","MinorUnitPlural":"Milliemes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ERITREAN NAKFA', N'ERN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Eritrean Nakfa', N'232', 0, 1, N'{"CurrencyCode":"ERN","IsoCountryCode":"ER","CurrencyName":"Eritrean Nakfa","Equivalence":"100 cents = nakfa","PrefixFormat":"Nfa","DecimalPlaces":"2","CurrencyRegime":"US-$ (15.0)","MajorUnit":"Nakfa","MinorUnit":"Cent","MajorUnitPlural":"Nakfas","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ETHIOPIAN BIRR', N'ETB', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Ethiopian Birr', N'230', 0, 1, N'{"CurrencyCode":"ETB","IsoCountryCode":"ET","CurrencyName":"Ethiopian Birr","Equivalence":"100 cents = birr","PrefixFormat":"Br","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Birr","MinorUnit":"Cent","MajorUnitPlural":"Birrs","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'EURO', N'EUR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Euro', N'978', 0, 1, N'[{"CurrencyCode":"BAD","IsoCountryCode":"BA","CurrencyName":"Convertible  Mark","Equivalence":null,"PrefixFormat":"KM","DecimalPlaces":"0","CurrencyRegime":"Euro (1.95583)","MajorUnit":"Conv Mark","MinorUnit":null,"MajorUnitPlural":"Conv Marks","MinorUnitPlural":null,"Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"},{"CurrencyCode":"EUR","IsoCountryCode":"BA","CurrencyName":"Euro","Equivalence":"100 cents = euro","PrefixFormat":"\\u20AC","DecimalPlaces":"2","CurrencyRegime":null,"MajorUnit":"Euro","MinorUnit":"Cent","MajorUnitPlural":"Euros","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}]');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'FIJIAN DOLLAR', N'FJD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Fijian Dollar', N'242', 0, 1, N'{"CurrencyCode":"FJD","IsoCountryCode":"FJ","CurrencyName":"Fiji Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"F$","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'FALKLAND ISLANDS POUND', N'FKP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Falkland Islands Pound', N'238', 0, 1, N'{"CurrencyCode":"FKP","IsoCountryCode":"FK","CurrencyName":"Falkland Islands Pound","Equivalence":"100 pence = pound","PrefixFormat":"LF","DecimalPlaces":"2","CurrencyRegime":"British Pound (1.0)","MajorUnit":"Pound","MinorUnit":"Pence","MajorUnitPlural":"Pounds","MinorUnitPlural":"Pence","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'BRITISH POUND STERLING', N'GBP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'British Pound Sterling', N'826', 0, 1, N'{"CurrencyCode":"GBP","IsoCountryCode":"XR","CurrencyName":"British Pound","Equivalence":"100 pence = pound","PrefixFormat":"\\u00A3","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Pound","MinorUnit":"Pence","MajorUnitPlural":"Pounds","MinorUnitPlural":"Pence","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GEORGIAN LARI', N'GEL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Georgian Lari', N'981', 0, 1, N'{"CurrencyCode":"GEL","IsoCountryCode":"GE","CurrencyName":"Georgian Lari","Equivalence":"100 tetri = lari","PrefixFormat":"GEL","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Lari","MinorUnit":"Tetri","MajorUnitPlural":"Laris","MinorUnitPlural":"Tetri","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GHANAIAN CEDI', N'GHS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Ghanaian Cedi', N'936', 0, 1, N'{"CurrencyCode":"GHS","IsoCountryCode":"GH","CurrencyName":"Ghanaian Cedi","Equivalence":"100 pesewas = cedi","PrefixFormat":"GHc","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Cedi","MinorUnit":"Pesewa","MajorUnitPlural":"Cedis","MinorUnitPlural":"Pesewas","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GIBRALTAR POUND', N'GIP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Gibraltar Pound', N'292', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GAMBIAN DALASI', N'GMD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Gambian Dalasi', N'270', 0, 1, N'{"CurrencyCode":"GMD","IsoCountryCode":"GM","CurrencyName":"Gambian Dalasi","Equivalence":"100 butut = dalasi","PrefixFormat":"D","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dalasi","MinorUnit":"Butut","MajorUnitPlural":"Dalasis","MinorUnitPlural":"Butut","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GUINEAN FRANC', N'GNF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Guinean Franc', N'324', 0, 1, N'{"CurrencyCode":"GNF","IsoCountryCode":"GN","CurrencyName":"Guinea Franc","Equivalence":null,"PrefixFormat":"FG","DecimalPlaces":"2","CurrencyRegime":null,"MajorUnit":"Franc","MinorUnit":null,"MajorUnitPlural":"Francs","MinorUnitPlural":null,"Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GUATEMALAN QUETZAL', N'GTQ', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Guatemalan Quetzal', N'320', 0, 1, N'{"CurrencyCode":"GTQ","IsoCountryCode":"GT","CurrencyName":"Guatemalan Quetzal","Equivalence":"100 centavos = quetzal","PrefixFormat":"Q.","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Quetzal","MinorUnit":"Centavo","MajorUnitPlural":"Quetzals","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'GUYANESE DOLLAR', N'GYD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Guyanese Dollar', N'328', 0, 1, N'{"CurrencyCode":"GYD","IsoCountryCode":"GY","CurrencyName":"Guyanese Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"G$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'HONG KONG DOLLAR', N'HKD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Hong Kong Dollar', N'344', 0, 1, N'{"CurrencyCode":"HKD","IsoCountryCode":"HK","CurrencyName":"Hong Kong Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"HK$","DecimalPlaces":"2","CurrencyRegime":"US-$ (7.73 central parity)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'HONDURAN LEMPIRA', N'HNL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Honduran Lempira', N'340', 0, 1, N'{"CurrencyCode":"HNL","IsoCountryCode":"HN","CurrencyName":"Honduran Lempira","Equivalence":"100 centavos = lempira","PrefixFormat":"L","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Lempira","MinorUnit":"Centavo","MajorUnitPlural":"Lempiras","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CROATIAN KUNA', N'HRK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Croatian Kuna', N'191', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'HAITIAN GOURDE', N'HTG', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Haitian Gourde', N'332', 0, 1, N'{"CurrencyCode":"HTG","IsoCountryCode":"HT","CurrencyName":"Haitian Gourde","Equivalence":"100 centime = gourde","PrefixFormat":"G","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Gourde","MinorUnit":"Centime","MajorUnitPlural":"Gourdes","MinorUnitPlural":"Centimes","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'HUNGARIAN FORINT', N'HUF', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Hungarian Forint', N'348', 0, 1, N'{"CurrencyCode":"HUF","IsoCountryCode":"HU","CurrencyName":"Hungarian Forint","Equivalence":null,"PrefixFormat":null,"DecimalPlaces":"0","CurrencyRegime":"composite","MajorUnit":"Forint","MinorUnit":null,"MajorUnitPlural":"Forints","MinorUnitPlural":null,"Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'INDONESIAN RUPIAH', N'IDR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Indonesian Rupiah', N'360', 0, 1, N'{"CurrencyCode":"IDR","IsoCountryCode":"ID","CurrencyName":"Indonesian Rupiah","Equivalence":"100 sen = rupiah","PrefixFormat":"Rp.","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Rupiah","MinorUnit":"Sen","MajorUnitPlural":"Rupiahs","MinorUnitPlural":"Sen","Services":"10077600","Division":"2","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ISRAELI NEW SHEKEL', N'ILS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Israeli New Shekel', N'376', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'INDIAN RUPEE', N'INR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Indian Rupee', N'356', 0, 1, N'{"CurrencyCode":"INR","IsoCountryCode":"IN","CurrencyName":"Indian Rupee","Equivalence":"100 paise = rupee","PrefixFormat":"Rs.","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Rupee","MinorUnit":"Paise","MajorUnitPlural":"Rupees","MinorUnitPlural":"Paise","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'IRAQI DINAR', N'IQD', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Iraqi Dinar', N'368', 0, 1, N'{"CurrencyCode":"IQD","IsoCountryCode":"IQ","CurrencyName":"Iraqi Dinar","Equivalence":"1000 fils = dinar","PrefixFormat":"ID","DecimalPlaces":"3","CurrencyRegime":"US-$ (0.3109)","MajorUnit":"Dinar","MinorUnit":"Fil","MajorUnitPlural":"Dinars","MinorUnitPlural":"Fils","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'IRANIAN RIAL', N'IRR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Iranian Rial', N'364', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ICELANDIC KRÓNA', N'ISK', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Icelandic Króna', N'352', 0, 1, N'{"CurrencyCode":"ISK","IsoCountryCode":"IS","CurrencyName":"Iceland Krona","Equivalence":"100 aurar = krona","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Krona","MinorUnit":"Aurar","MajorUnitPlural":"Kronas","MinorUnitPlural":"Aurar","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'JAMAICAN DOLLAR', N'JMD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Jamaican Dollar', N'388', 0, 1, N'{"CurrencyCode":"JMD","IsoCountryCode":"JM","CurrencyName":"Jamaican Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'JORDANIAN DINAR', N'JOD', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Jordanian Dinar', N'400', 0, 1, N'{"CurrencyCode":"JOD","IsoCountryCode":"JO","CurrencyName":"Jordanian Dinar","Equivalence":"1000 fils = dinar","PrefixFormat":"JD","DecimalPlaces":"3","CurrencyRegime":"composite","MajorUnit":"Dinar","MinorUnit":"Fil","MajorUnitPlural":"Dinars","MinorUnitPlural":"Fils","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'JAPANESE YEN', N'JPY', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Japanese Yen', N'392', 0, 1, N'{"CurrencyCode":"JPY","IsoCountryCode":"JP","CurrencyName":"Japanese Yen","Equivalence":"100 sen = yen","PrefixFormat":"\\u00A5","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Yen","MinorUnit":"Sen","MajorUnitPlural":"Yen","MinorUnitPlural":"Sen","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'KENYAN SHILLING', N'KES', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Kenyan Shilling', N'404', 0, 1, N'{"CurrencyCode":"KES","IsoCountryCode":"KE","CurrencyName":"Kenyan Shilling","Equivalence":"100 cents = shilling","PrefixFormat":"Kshs.","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Shilling","MinorUnit":"Cent","MajorUnitPlural":"Shillings","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'KYRGYZSTANI SOM', N'KGS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Kyrgyzstani Som', N'417', 0, 1, N'{"CurrencyCode":"KGS","IsoCountryCode":"KG","CurrencyName":"Kyrgyzstani Som","Equivalence":"100 tyiyns = som","PrefixFormat":"Ks","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Som","MinorUnit":"Tyiyn","MajorUnitPlural":"Soms","MinorUnitPlural":"Tyiyns","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CAMBODIAN RIEL', N'KHR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Cambodian Riel', N'116', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'COMORIAN FRANC', N'KMF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Comorian Franc', N'174', 0, 1, N'{"CurrencyCode":"KMF","IsoCountryCode":"KM","CurrencyName":"Comoros Franc","Equivalence":"100 centimes = franc","PrefixFormat":"CF","DecimalPlaces":"2","CurrencyRegime":"French franc (75.0)","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NORTH KOREAN WON', N'KPW', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'North Korean Won', N'408', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SOUTH KOREAN WON', N'KRW', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'South Korean Won', N'410', 0, 1, N'{"CurrencyCode":"KRW","IsoCountryCode":"KR","CurrencyName":"Korean Won","Equivalence":"100 chon = won","PrefixFormat":"\\u20A9","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Won","MinorUnit":"Chon","MajorUnitPlural":"Won","MinorUnitPlural":"Chon","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'KUWAITI DINAR', N'KWD', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Kuwaiti Dinar', N'414', 0, 1, N'{"CurrencyCode":"KWD","IsoCountryCode":"KW","CurrencyName":"Kuwaiti Dinar","Equivalence":"1000 fils = dinar","PrefixFormat":"KD","DecimalPlaces":"3","CurrencyRegime":"composite","MajorUnit":"Dinar","MinorUnit":"Fil","MajorUnitPlural":"Dinars","MinorUnitPlural":"Fils","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CAYMAN ISLANDS DOLLAR', N'KYD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Cayman Islands Dollar', N'136', 0, 1, N'{"CurrencyCode":"KYD","IsoCountryCode":"KY","CurrencyName":"Cayman Islands Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"US-$ (0.85)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'KAZAKHSTANI TENGE', N'KZT', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Kazakhstani Tenge', N'398', 0, 1, N'{"CurrencyCode":"KZT","IsoCountryCode":"KZ","CurrencyName":"Kazakhstan Tenge","Equivalence":"100 tiyn = tenge","PrefixFormat":"T","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Tenge","MinorUnit":"Tiyn","MajorUnitPlural":"Tenge","MinorUnitPlural":"Tiyn","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'LAO KIP', N'LAK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Lao Kip', N'418', 0, 1, N'{"CurrencyCode":"LAK","IsoCountryCode":"LA","CurrencyName":"Laos Kip","Equivalence":"100 at = new kip","PrefixFormat":"KN","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"New Kip","MinorUnit":"At","MajorUnitPlural":"New Kips","MinorUnitPlural":"Ats","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'LEBANESE POUND', N'LBP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Lebanese Pound', N'422', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SRI LANKAN RUPEE', N'LKR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Sri Lankan Rupee', N'144', 0, 1, N'{"CurrencyCode":"LKR","IsoCountryCode":"LK","CurrencyName":"Sri Lanka Rupee","Equivalence":"100 cents = rupee","PrefixFormat":"SLRs","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Rupee","MinorUnit":"Cent","MajorUnitPlural":"Rupees","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'LIBERIAN DOLLAR', N'LRD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Liberian Dollar', N'430', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'LESOTHO LOTI', N'LSL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Lesotho Loti', N'426', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'LIBYAN DINAR', N'LYD', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Libyan Dinar', N'434', 0, 1, N'{"CurrencyCode":"LYD","IsoCountryCode":"LY","CurrencyName":"Libyan Dinar","Equivalence":"1000 dirhams = dinar","PrefixFormat":"LD","DecimalPlaces":"3","CurrencyRegime":"SDR (8.5085)","MajorUnit":"Dinar","MinorUnit":"Dirham","MajorUnitPlural":"Dinars","MinorUnitPlural":"Dirhams","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MOROCCAN DIRHAM', N'MAD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Moroccan Dirham', N'504', 0, 1, N'{"CurrencyCode":"MAD","IsoCountryCode":"MA","CurrencyName":"Moroccan Dirham","Equivalence":"100 centimes = dirham","PrefixFormat":"DH","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Dirham","MinorUnit":"Centime","MajorUnitPlural":"Dirhams","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MOLDOVAN LEU', N'MDL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Moldovan Leu', N'498', 0, 1, N'{"CurrencyCode":"MDL","IsoCountryCode":"MD","CurrencyName":"Moldovan Leu","Equivalence":null,"PrefixFormat":"L","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Leu","MinorUnit":null,"MajorUnitPlural":"Lei","MinorUnitPlural":null,"Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MALAGASY ARIARY', N'MGA', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Malagasy Ariary', N'969', 0, 1, N'{"CurrencyCode":"MGA","IsoCountryCode":"MG","CurrencyName":"Malagasy Ariary","Equivalence":"5 iraimbilanja = ariary","PrefixFormat":"MGA","DecimalPlaces":"1","CurrencyRegime":"float","MajorUnit":"Ariary","MinorUnit":"Iraimbilanja","MajorUnitPlural":"Ariary","MinorUnitPlural":"Iraimbilanja","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MACEDONIAN DENAR', N'MKD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Macedonian Denar', N'807', 0, 1, N'{"CurrencyCode":"MKD","IsoCountryCode":"MK","CurrencyName":"MACEDONIAN DENAR","Equivalence":"100 deni = denar","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Denar","MinorUnit":"Deni","MajorUnitPlural":"Denari","MinorUnitPlural":"Deni","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MYANMAR KYAT', N'MMK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Myanmar Kyat', N'104', 0, 1, N'{"CurrencyCode":"MMK","IsoCountryCode":"MM","CurrencyName":"Myanmar Kyat","Equivalence":"100 pya = kyat","PrefixFormat":"K","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Kyat","MinorUnit":"Pya","MajorUnitPlural":"Kyats","MinorUnitPlural":"Pya","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MONGOLIAN TÖGRÖG', N'MNT', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Mongolian Tögrög', N'496', 0, 1, N'{"CurrencyCode":"MNT","IsoCountryCode":"MN","CurrencyName":"Mongolian Tugrik","Equivalence":"100 mongos = tugrik","PrefixFormat":"Tug","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Tugrik","MinorUnit":"Mongo","MajorUnitPlural":"Tugriks","MinorUnitPlural":"Mongos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MACANESE PATACA', N'MOP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Macanese Pataca', N'446', 0, 1, N'{"CurrencyCode":"MOP","IsoCountryCode":"MO","CurrencyName":"Macau Pataca","Equivalence":"100 avos = pataca","PrefixFormat":"P","DecimalPlaces":"2","CurrencyRegime":"HK-$ (1.03)","MajorUnit":"Pataca","MinorUnit":"Avo","MajorUnitPlural":"Patacas","MinorUnitPlural":"Avos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MAURITANIAN OUGUIYA', N'MRU', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Mauritanian Ouguiya', N'929', 0, 1, N'{"CurrencyCode":"MRU","IsoCountryCode":"MR","CurrencyName":"New Ouguiya","Equivalence":"5 khoums = ouguiya","PrefixFormat":"UM","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Ouguiya","MinorUnit":"Khoum","MajorUnitPlural":"Ouguiyas","MinorUnitPlural":"Khoums","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MAURITIAN RUPEE', N'MUR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Mauritian Rupee', N'480', 0, 1, N'{"CurrencyCode":"MUR","IsoCountryCode":"MU","CurrencyName":"Mauritius Rupee","Equivalence":"100 cents = rupee","PrefixFormat":"Rs","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Rupee","MinorUnit":"Cent","MajorUnitPlural":"Rupees","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MALDIVIAN RUFIYAA', N'MVR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Maldivian Rufiyaa', N'462', 0, 1, N'{"CurrencyCode":"MVR","IsoCountryCode":"MV","CurrencyName":"Maldive Rufiyaa","Equivalence":"100 lari = rufiyaa","PrefixFormat":"Rf","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Rufiyaa","MinorUnit":"Lari","MajorUnitPlural":"Rufiyaas","MinorUnitPlural":"Lari","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MALAWIAN KWACHA', N'MWK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Malawian Kwacha', N'454', 0, 1, N'{"CurrencyCode":"MWK","IsoCountryCode":"MW","CurrencyName":"Malawi Kwacha","Equivalence":"100 tambala = kwacha","PrefixFormat":"MK","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Kwacha","MinorUnit":"Tambala","MajorUnitPlural":"Kwachas","MinorUnitPlural":"Tambala","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MEXICAN PESO', N'MXN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Mexican Peso', N'484', 0, 1, N'{"CurrencyCode":"MXN","IsoCountryCode":"MX","CurrencyName":"Mexican Peso","Equivalence":"100 centavo = peso","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Peso","MinorUnit":"Centavo","MajorUnitPlural":"Pesos","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MALAYSIAN RINGGIT', N'MYR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Malaysian Ringgit', N'458', 0, 1, N'{"CurrencyCode":"MYR","IsoCountryCode":"MY","CurrencyName":"Malaysian Ringgit","Equivalence":"100 sen = ringgit","PrefixFormat":"RM","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Ringgit","MinorUnit":"Sen","MajorUnitPlural":"Ringgits","MinorUnitPlural":"Sen","Services":"10177700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'MOZAMBICAN METICAL', N'MZN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Mozambican Metical', N'943', 0, 1, N'{"CurrencyCode":"MZN","IsoCountryCode":"MZ","CurrencyName":"Mozambique New Metical","Equivalence":"100 centavos = metical","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Metical","MinorUnit":"Centavo","MajorUnitPlural":"Meticals","MinorUnitPlural":"Centavos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NAMIBIAN DOLLAR', N'NAD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Namibian Dollar', N'516', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NIGERIAN NAIRA', N'NGN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Nigerian Naira', N'566', 0, 1, N'{"CurrencyCode":"NGN","IsoCountryCode":"NG","CurrencyName":"Nigerian Naira","Equivalence":"100 kobo = naira","PrefixFormat":"N","DecimalPlaces":"2","CurrencyRegime":"US-$ ((82.0))","MajorUnit":"Naira","MinorUnit":"Kobo","MajorUnitPlural":"Nairas","MinorUnitPlural":"Kobos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NICARAGUAN CÓRDOBA', N'NIO', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Nicaraguan Córdoba', N'558', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NORWEGIAN KRONE', N'NOK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Norwegian Krone', N'578', 0, 1, N'{"CurrencyCode":"NOK","IsoCountryCode":"NO","CurrencyName":"Norwegian Krone","Equivalence":"100 ore = krone","PrefixFormat":"kr","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Krone","MinorUnit":"ore","MajorUnitPlural":"Kroner","MinorUnitPlural":"Ore","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NEPALESE RUPEE', N'NPR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Nepalese Rupee', N'524', 0, 1, N'{"CurrencyCode":"NPR","IsoCountryCode":"NP","CurrencyName":"Nepalese Rupee","Equivalence":"100 paise = rupee","PrefixFormat":"Rs.","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Rupee","MinorUnit":"Paise","MajorUnitPlural":"Rupees","MinorUnitPlural":"Paise","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NEW ZEALAND DOLLAR', N'NZD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'New Zealand Dollar', N'554', 0, 1, N'{"CurrencyCode":"NZD","IsoCountryCode":"NU","CurrencyName":"New Zealand Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'OMANI RIAL', N'OMR', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Omani Rial', N'512', 0, 1, N'{"CurrencyCode":"OMR","IsoCountryCode":"OM","CurrencyName":"Omani Rial","Equivalence":"1000 baizas = rial","PrefixFormat":"RO","DecimalPlaces":"3","CurrencyRegime":"US-$ (1/2.6)","MajorUnit":"Rial","MinorUnit":"Baiza","MajorUnitPlural":"Rials","MinorUnitPlural":"Baizas","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PANAMANIAN BALBOA', N'PAB', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Panamanian Balboa', N'590', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PERUVIAN SOL', N'PEN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Peruvian Sol', N'604', 0, 1, N'{"CurrencyCode":"PEN","IsoCountryCode":"PE","CurrencyName":"Sol","Equivalence":"100 centimos = sol","PrefixFormat":"S./","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Sol","MinorUnit":"Centimo","MajorUnitPlural":"Sols","MinorUnitPlural":"Centimos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PAPUA NEW GUINEAN KINA', N'PGK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Papua New Guinean Kina', N'598', 0, 1, N'{"CurrencyCode":"PGK","IsoCountryCode":"PG","CurrencyName":"Papua New Guinea Kina","Equivalence":"100 toeas = kina","PrefixFormat":"K","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Kina","MinorUnit":"Toea","MajorUnitPlural":"Kinas","MinorUnitPlural":"Toeas","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PHILIPPINE PESO', N'PHP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Philippine Peso', N'608', 0, 1, N'{"CurrencyCode":"PHP","IsoCountryCode":"PH","CurrencyName":"Philippine Peso","Equivalence":"100 centavos = peso","PrefixFormat":"\\u20B1","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Peso","MinorUnit":"Centavo","MajorUnitPlural":"Pesos","MinorUnitPlural":"Centavos","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PAKISTANI RUPEE', N'PKR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Pakistani Rupee', N'586', 0, 1, N'{"CurrencyCode":"PKR","IsoCountryCode":"PK","CurrencyName":"Pakistan Rupee","Equivalence":"100 paisa = rupee","PrefixFormat":"Rs.","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Rupee","MinorUnit":"Paisa","MajorUnitPlural":"Rupees","MinorUnitPlural":"Paisas","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'POLISH ZLOTY', N'PLN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Polish Zloty', N'985', 0, 1, N'{"CurrencyCode":"PLN","IsoCountryCode":"PL","CurrencyName":"Polish Zloty","Equivalence":"100 groszy = zloty","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Zloty","MinorUnit":"Groszy","MajorUnitPlural":"Zlotys","MinorUnitPlural":"Groszy","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'PARAGUAYAN GUARANÍ', N'PYG', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Paraguayan Guaraní', N'600', 0, 1, N'{"CurrencyCode":"PYG","IsoCountryCode":"PY","CurrencyName":"Paraguay Guarani","Equivalence":"100 centimos = guarani","PrefixFormat":"G","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Guarani","MinorUnit":"Centimo","MajorUnitPlural":"Guaranis","MinorUnitPlural":"Centimos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'QATARI RIYAL', N'QAR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Qatari Riyal', N'634', 0, 1, N'{"CurrencyCode":"QAR","IsoCountryCode":"QA","CurrencyName":"Qatari Rial","Equivalence":"100 dirhams = riyal","PrefixFormat":"QR","DecimalPlaces":"2","CurrencyRegime":"US-$ (lim.flex.)","MajorUnit":"Riyal","MinorUnit":"Dirham","MajorUnitPlural":"Riyals","MinorUnitPlural":"Dirhams","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ROMANIAN LEU', N'RON', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Romanian Leu', N'946', 0, 1, N'{"CurrencyCode":"RON","IsoCountryCode":"RO","CurrencyName":"Romanian New Leu","Equivalence":"100 bani = leu","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Leu","MinorUnit":"Ban","MajorUnitPlural":"Lei","MinorUnitPlural":"Bani","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SERBIAN DINAR', N'RSD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Serbian Dinar', N'941', 0, 1, N'{"CurrencyCode":"RSD","IsoCountryCode":"YU","CurrencyName":"Serbian Dinar","Equivalence":"100 Para = Dinar","PrefixFormat":"#,###.##","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dinar","MinorUnit":"Para","MajorUnitPlural":"Dinars","MinorUnitPlural":"Para","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'RUSSIAN RUBLE', N'RUB', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Russian Ruble', N'643', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'RWANDAN FRANC', N'RWF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Rwandan Franc', N'646', 0, 1, N'{"CurrencyCode":"RWF","IsoCountryCode":"RW","CurrencyName":"Rwanda Franc","Equivalence":"100 centime = franc","PrefixFormat":"RF","DecimalPlaces":"2","CurrencyRegime":"SDR (201.8)","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SAUDI RIYAL', N'SAR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Saudi Riyal', N'682', 0, 1, N'{"CurrencyCode":"SAR","IsoCountryCode":"SA","CurrencyName":"Saudi Riyal","Equivalence":"100 halalas = riyal","PrefixFormat":"SR","DecimalPlaces":"2","CurrencyRegime":"US-$ (lim.flex.)","MajorUnit":"Riyal","MinorUnit":"Halala","MajorUnitPlural":"Riyals","MinorUnitPlural":"Halalas","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SOLOMON ISLANDS DOLLAR', N'SBD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Solomon Islands Dollar', N'090', 0, 1, N'{"CurrencyCode":"SBD","IsoCountryCode":"SB","CurrencyName":"Solomon Islands Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"SI$","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SEYCHELLOIS RUPEE', N'SCR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Seychellois Rupee', N'690', 0, 1, N'{"CurrencyCode":"SCR","IsoCountryCode":"SC","CurrencyName":"Seychelles Rupee","Equivalence":"100 cents = rupee","PrefixFormat":"SR","DecimalPlaces":"2","CurrencyRegime":"SDR (7.2345)","MajorUnit":"Rupee","MinorUnit":"Cent","MajorUnitPlural":"Rupees","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SUDANESE POUND', N'SDG', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Sudanese Pound', N'938', 0, 1, N'{"CurrencyCode":"SDG","IsoCountryCode":"SD","CurrencyName":"Sudan Pound","Equivalence":"100 cents = pound","PrefixFormat":"#Sd","DecimalPlaces":"2","CurrencyRegime":null,"MajorUnit":"Pound","MinorUnit":"Cent","MajorUnitPlural":"Pounds","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SWEDISH KRONA', N'SEK', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Swedish Krona', N'752', 0, 1, N'{"CurrencyCode":"SEK","IsoCountryCode":"SE","CurrencyName":"Swedish Krona","Equivalence":"100 ore = krona","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Krona","MinorUnit":"Ore","MajorUnitPlural":"Kronor","MinorUnitPlural":"Ore","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SINGAPORE DOLLAR', N'SGD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Singapore Dollar', N'702', 0, 1, N'{"CurrencyCode":"SGD","IsoCountryCode":"SG","CurrencyName":"Singapore Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SAINT HELENA POUND', N'SHP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Saint Helena Pound', N'654', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SIERRA LEONEAN LEONE', N'SLE', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Sierra Leonean Leone', N'925', 0, 1, N'{"CurrencyCode":"SLE","IsoCountryCode":"SL","CurrencyName":"New Leone","Equivalence":"100 cents = new leone","PrefixFormat":"Le","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"New Leone","MinorUnit":"Cent","MajorUnitPlural":"New Leones","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SOMALI SHILLING', N'SOS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Somali Shilling', N'706', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SURINAMESE DOLLAR', N'SRD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Surinamese Dollar', N'968', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SOUTH SUDANESE POUND', N'SSP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'South Sudanese Pound', N'728', 0, 1, N'{"CurrencyCode":"SSP","IsoCountryCode":"SS","CurrencyName":"South Sudanese Pound","Equivalence":"100 piastres = pound","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Pound","MinorUnit":"Piastre","MajorUnitPlural":"Pounds","MinorUnitPlural":"Piastres","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SÃO TOMÉ AND PRÍNCIPE DOBRA', N'STN', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'São Tomé and Príncipe Dobra', N'930', 0, 1, N'{"CurrencyCode":"STN","IsoCountryCode":"ST","CurrencyName":"New Dobra","Equivalence":"100 centimos = dobra","PrefixFormat":"Db","DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Dobra","MinorUnit":"Centimo","MajorUnitPlural":"Dobras","MinorUnitPlural":"Centimos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SYRIAN POUND', N'SYP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Syrian Pound', N'760', 0, 1, N'{"CurrencyCode":"SYP","IsoCountryCode":"SY","CurrencyName":"Syrian Pound","Equivalence":"100 piasters = pound","PrefixFormat":"SL","DecimalPlaces":"2","CurrencyRegime":"US-$ (11.225)","MajorUnit":"Pound","MinorUnit":"piaster","MajorUnitPlural":"Pounds","MinorUnitPlural":"Piasters","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SWAZI LILANGENI', N'SZL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Swazi Lilangeni', N'748', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'THAI BAHT', N'THB', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Thai Baht', N'764', 0, 1, N'{"CurrencyCode":"THB","IsoCountryCode":"TH","CurrencyName":"Thai Baht","Equivalence":"100 sastangs = baht","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Baht","MinorUnit":"Sastang","MajorUnitPlural":"Bahts","MinorUnitPlural":"Sastangs","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TAJIKISTANI SOMONI', N'TJS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Tajikistani Somoni', N'972', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TURKMENISTANI MANAT', N'TMT', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Turkmenistani Manat', N'934', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TUNISIAN DINAR', N'TND', N'3', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Tunisian Dinar', N'788', 0, 1, N'{"CurrencyCode":"TND","IsoCountryCode":"TN","CurrencyName":"Tunisian Dinar","Equivalence":"1000 millimes = dinar","PrefixFormat":"TD","DecimalPlaces":"3","CurrencyRegime":"m.float (1.0)","MajorUnit":"Dinar","MinorUnit":"Millime","MajorUnitPlural":"Dinars","MinorUnitPlural":"Millimes","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TONGAN PA?ANGA', N'TOP', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Tongan Pa?anga', N'776', 0, 1, N'{"CurrencyCode":"TOP","IsoCountryCode":"TO","CurrencyName":"Tongan Pa''anga","Equivalence":"100 seniti = pa''anga","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Pa''anga","MinorUnit":"Seniti","MajorUnitPlural":"Pa''angas","MinorUnitPlural":"Seniti","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TURKISH LIRA', N'TRY', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Turkish Lira', N'949', 0, 1, N'{"CurrencyCode":"TRY","IsoCountryCode":"TR","CurrencyName":"New Turkish Lira","Equivalence":"100 kuru\\u015F = lira","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Lira","MinorUnit":"Kuru\\u015F","MajorUnitPlural":"Liras","MinorUnitPlural":"Kuru\\u015F","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TRINIDAD AND TOBAGO DOLLAR', N'TTD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Trinidad and Tobago Dollar', N'780', 0, 1, N'{"CurrencyCode":"TTD","IsoCountryCode":"TT","CurrencyName":"Trinidad/Tobago Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"TT$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'NEW TAIWAN DOLLAR', N'TWD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'New Taiwan Dollar', N'901', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'TANZANIAN SHILLING', N'TZS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Tanzanian Shilling', N'834', 0, 1, N'{"CurrencyCode":"TZS","IsoCountryCode":"TZ","CurrencyName":"Tanzanian Shilling","Equivalence":"100 cents = shilling","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Shilling","MinorUnit":"Cent","MajorUnitPlural":"Shillings","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'UKRAINIAN HRYVNIA', N'UAH', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Ukrainian Hryvnia', N'980', 0, 1, N'{"CurrencyCode":"UAH","IsoCountryCode":"UA","CurrencyName":"Ukraine Hryvnia","Equivalence":"100 kopiyka = hryvnia","PrefixFormat":"H","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Hryvnia","MinorUnit":"Kopiyka","MajorUnitPlural":"Hryvnias","MinorUnitPlural":"Kopiyka","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'UGANDAN SHILLING', N'UGX', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Ugandan Shilling', N'800', 0, 1, N'{"CurrencyCode":"UGX","IsoCountryCode":"UG","CurrencyName":"Uganda Shilling","Equivalence":null,"PrefixFormat":"USh","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Shilling","MinorUnit":null,"MajorUnitPlural":"Shillings","MinorUnitPlural":null,"Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'UNITED STATES DOLLAR', N'USD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'United States Dollar', N'840', 0, 1, N'[{"CurrencyCode":"AFN","IsoCountryCode":"AF","CurrencyName":"Afghanistan Afghani","Equivalence":"100 puls = afghani","PrefixFormat":"Af","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Afghani","MinorUnit":"Pul","MajorUnitPlural":"Afghanis","MinorUnitPlural":"Puls","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"},{"CurrencyCode":"USD","IsoCountryCode":"AF","CurrencyName":"US Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"$","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}]');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'URUGUAYAN PESO', N'UYU', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Uruguayan Peso', N'858', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'UZBEKISTANI SOM', N'UZS', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Uzbekistani Som', N'860', 0, 1, N'{"CurrencyCode":"UZS","IsoCountryCode":"UZ","CurrencyName":"Uzbekistani Som","Equivalence":"100 tiyin = som","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"m.float","MajorUnit":"Som","MinorUnit":"Tiyin","MajorUnitPlural":"Som","MinorUnitPlural":"Tiyin","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'VENEZUELAN BOLÍVAR SOBERANO', N'VES', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Venezuelan Bolívar Soberano', N'928', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'VIRTUAL CURRENCY (NOT A REAL CURRENCY)', N'VIB', N'N/A', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Virtual Currency (not a real currency)', N'N/A', 0, 1, N'{"CurrencyCode":"VIB","IsoCountryCode":"VE","CurrencyName":"Venezuelan Bolivar Soberano","Equivalence":"100 centimos = 1 bolivar Soberano","PrefixFormat":"BF.","DecimalPlaces":"2","CurrencyRegime":"US-$ (2.15)","MajorUnit":"Bolivar Soberano","MinorUnit":"Centimo","MajorUnitPlural":"Bolivares Soberanos","MinorUnitPlural":"Centimos","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'VIETNAMESE Ð?NG', N'VND', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Vietnamese Ð?ng', N'704', 0, 1, N'{"CurrencyCode":"VND","IsoCountryCode":"VN","CurrencyName":"Vietnamese Dong","Equivalence":"10 xu = hao,10 hao = new dong","PrefixFormat":null,"DecimalPlaces":"1","CurrencyRegime":"m.float","MajorUnit":"Dong","MinorUnit":"Hao","MajorUnitPlural":"Dongs","MinorUnitPlural":"Hao","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'VANUATU VATU', N'VUV', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Vanuatu Vatu', N'548', 0, 1, N'{"CurrencyCode":"VUV","IsoCountryCode":"VU","CurrencyName":"Vanuatu Vatu","Equivalence":"100 centimes = vatu","PrefixFormat":null,"DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Vatu","MinorUnit":"Centime","MajorUnitPlural":"Vatus","MinorUnitPlural":"Centimes","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SAMOAN TALA', N'WST', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Samoan Tala', N'882', 0, 1, N'{"CurrencyCode":"WST","IsoCountryCode":"WS","CurrencyName":"Samoan Tala","Equivalence":"100 sene = tala","PrefixFormat":"WS","DecimalPlaces":"2","CurrencyRegime":"composite","MajorUnit":"Tala","MinorUnit":"Sene","MajorUnitPlural":"Talas","MinorUnitPlural":"Sene","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CENTRAL AFRICAN CFA FRANC', N'XAF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Central African CFA Franc', N'950', 0, 1, N'{"CurrencyCode":"XAF","IsoCountryCode":"GA","CurrencyName":"CFA Franc BEAC","Equivalence":"100 centimes = franc","PrefixFormat":"CFAF","DecimalPlaces":"2","CurrencyRegime":"French Franc (100.0)","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"2","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'EAST CARIBBEAN DOLLAR', N'XCD', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'East Caribbean Dollar', N'951', 0, 1, N'{"CurrencyCode":"XCD","IsoCountryCode":"VC","CurrencyName":"East Caribbean Dollar","Equivalence":"100 cents = dollar","PrefixFormat":"EC$","DecimalPlaces":"2","CurrencyRegime":"US-$ (2.7)","MajorUnit":"Dollar","MinorUnit":"Cent","MajorUnitPlural":"Dollars","MinorUnitPlural":"wCents","Services":"10077600","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'WEST AFRICAN CFA FRANC', N'XOF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'West African CFA Franc', N'952', 0, 1, N'{"CurrencyCode":"XOF","IsoCountryCode":"TG","CurrencyName":"CFA Franc BCEAO","Equivalence":"100 centimes = franc","PrefixFormat":"CFAF","DecimalPlaces":"2","CurrencyRegime":"French Franc (100.0)","MajorUnit":"Franc","MinorUnit":"Centime","MajorUnitPlural":"Francs","MinorUnitPlural":"Centimes","Services":"10077700","Division":"2","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'CFP FRANC', N'XPF', N'0', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'CFP Franc', N'953', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'YEMENI RIAL', N'YER', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Yemeni Rial', N'886', 0, 1, null);
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'SOUTH AFRICAN RAND', N'ZAR', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'South African Rand', N'710', 0, 1, N'{"CurrencyCode":"ZAR","IsoCountryCode":"ZA","CurrencyName":"South African Rand","Equivalence":"100 cents = rand","PrefixFormat":"R","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"Rand","MinorUnit":"Cent","MajorUnitPlural":"Rands","MinorUnitPlural":"Cents","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ZAMBIAN KWACHA', N'ZMW', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Zambian Kwacha', N'967', 0, 1, N'{"CurrencyCode":"ZMW","IsoCountryCode":"ZM","CurrencyName":"New Kwacha","Equivalence":"100 ngwee = new kwacha","PrefixFormat":"KR","DecimalPlaces":"2","CurrencyRegime":"float","MajorUnit":"new kwacha","MinorUnit":"Ngwee","MajorUnitPlural":"new kwachas","MinorUnitPlural":"Ngwees","Services":"10077700","Division":"0","MinAmount":0.00,"MaxAmount":21474836.46,"DelFlag":"N"}');
INSERT INTO ConfigurationService_Migration.dbo.Currency (Name, Code, DecimalDescription, IsActive, CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy, UpdatedByName, Description, NumericCode, IsDeleted, IsBaseCurrency, WuCurrencyDetails) VALUES (N'ZIMBABWEAN DOLLAR', N'ZWL', N'2', 1, N'2025-02-05 18:46:14.7200000 +00:00', N'2025-02-05 18:46:14.7200000 +00:00', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'DA64C48D-5E9A-43AB-B80C-0F86152E70DC', N'superadmin', N'Zimbabwean Dollar', N'932', 0, 1, null);

----------- ################ Currency Migration   ################ -------------


----------- ################ Country Migration   ################ -------------
IF OBJECT_ID('tempdb..#CountryNationalityMaps') IS NOT NULL
    DROP TABLE #CountryNationalityMaps;

create table #CountryNationalityMaps
(
    CountryCode varchar(10),
    CountryName varchar(100),
    NumericCode int,
    Nationality VARCHAR(100),
    ISOcODE CHAR(2),
    DialCode varchar(20)
);

INSERT INTO #CountryNationalityMaps (CountryCode, CountryName, NumericCode, Nationality, IsoCode, DialCode)
VALUES
    ('ABW', 'Aruba', '204', 'Aruban', 'AW', '297'),
    ('GRC', 'Greece', '300', 'Greek', 'GR', '30'),
    ('GBR', 'United Kingdom', '826', 'British', 'GB', '44'),
    ('AFG', 'Afghanistan', '001', 'Afghan', 'AF', '93'),
    ('AGO', 'Angola', '006', 'Angolan', 'AO', '244'),
    ('AIA', 'Anguilla', '202', 'Anguillan', 'AI', '1264'),
    ('ALA', 'Aland Islands', '200', 'Alandic', 'AX', '358'),
    ('ALB', 'Albania', '002', 'Albanian', 'AL', '355'),
    ('AND', 'Andorra', '005', 'Andorran', 'AD', '376'),
    ('ARE', 'United Arab Emirates', '060', 'Emirati', 'AE', '971'),
    ('ARG', 'Argentina', '008', 'Argentine', 'AR', '54'),
    ('ARM', 'Armenia', '009', 'Armenian', 'AM', '374'),
    ('ASM', 'American Samoa', '201', 'American Samoan', 'AS', '1684'),
    ('ATA', 'Antarctica', '203', 'Antarctican', 'AQ', '672'),
    ('ATF', 'French Southern Territories', '219', 'French Southerner', 'TF', '262'),
    ('ATG', 'Antigua and Barbuda', '017', 'Antiguan and Barbudan', 'AG', '1268'),
    ('AUS', 'Australia', '010', 'Australian', 'AU', '61'),
    ('AUT', 'Austria', '011', 'Austrian', 'AT', '43'),
    ('AZE', 'Azerbaijan', '012', 'Azerbaijani', 'AZ', '994'),
    ('BDI', 'Burundi', '032', 'Burundian', 'BI', '257'),
    ('BEL', 'Belgium', '020', 'Belgian', 'BE', '32'),
    ('BEN', 'Benin', '022', 'Beninese', 'BJ', '229'),
    ('BES', 'Bonaire, Sint Eustatius and Saba', '206', 'Bonaire, Sint Eustatius and Saba (Dutch)', 'BQ', '599'),
    ('BFA', 'Burkina Faso', '030', 'Burkinabe', 'BF', '226'),
    ('BGD', 'Bangladesh', '015', 'Bangladeshi', 'BD', '880'),
    ('BGR', 'Bulgaria', '029', 'Bulgarian', 'BG', '359'),
    ('BHR', 'Bahrain', '014', 'Bahraini', 'BH', '973'),
    ('BHS', 'Bahamas', '013', 'Bahamian', 'BS', '1242'),
    ('BIH', 'Bosnia and Herzegovina', '081', 'Bosnian and Herzegovinian', 'BA', '387'),
    ('BLM', 'Saint Barthelemy', '246', 'Barthelemois', 'BL', '590'),
    ('BLR', 'Belarus', '019', 'Belarusian', 'BY', '375'),
    ('BLZ', 'Belize', '021', 'Belizean', 'BZ', '501'),
    ('BMU', 'Bermuda', '205', 'Bermudian', 'BM', '1441'),
    ('BOL', 'Bolivia, Plurinational State of', '024', 'Bolivian', 'BO', '591'),
    ('BRA', 'Brazil', '026', 'Brazilian', 'BR', '55'),
    ('BRB', 'Barbados', '016', 'Barbadian', 'BB', '1246'),
    ('BRN', 'Brunei Darussalam', '028', 'Bruneian', 'BN', '673'),
    ('BTN', 'Bhutan', '023', 'Bhutanese', 'BT', '975'),
    ('BVT', 'Bouvet Island', '207', 'Bouvet Islander', 'BV', '55'),
    ('BWA', 'Botswana', '127', 'Motswana', 'BW', '267'),
    ('CAF', 'Central African Republic', '037', 'Central African', 'CF', '236'),
    ('CAN', 'Canada', '035', 'Canadian', 'CA', '1'),
    ('CCK', 'Cocos (Keeling) Islands', '211', 'Cocos Islander', 'CC', '61'),
    ('CHE', 'Switzerland', '178', 'Swiss', 'CH', '41'),
    ('CHL', 'Chile', '039', 'Chilean', 'CL', '56'),
    ('CHN', 'China', '040', 'Chinese', 'CN', '86'),
    ('CIV', 'Cote d''Ivoire', '093', 'Ivorian', 'CI', '225'),
    ('CMR', 'Cameroon', '034', 'Cameroonian', 'CM', '237'),
    ('COD', 'Congo, the Democratic Republic of the', '043', 'Congolese (Democratic Republic)', 'CD', '243'),
    ('COG', 'Congo, Republic of the', '044', 'Congolese (Republic)', 'CG', '242'),
    ('COK', 'Cook Islands', '212', 'Cook Islander', 'CK', '682'),
    ('COL', 'Colombia', '041', 'Colombian', 'CO', '57'),
    ('COM', 'Comoros', '042', 'Comoran', 'KM', '269'),
    ('CPV', 'Cape Verde', '036', 'Cape Verdean', 'CV', '238'),
    ('CRI', 'Costa Rica', '045', 'Costa Rican', 'CR', '506'),
    ('CUB', 'Cuba', '047', 'Cuban', 'CU', '53'),
    ('CUW', 'Curacao', '213', 'Curacaoan', 'CW', '599'),
    ('CXR', 'Christmas Island', '210', 'Christmas Islander', 'CX', '61'),
    ('CYM', 'Cayman Islands', '209', 'Caymanian', 'KY', '1345'),
    ('CYP', 'Cyprus', '048', 'Cypriot', 'CY', '357'),
    ('CZE', 'Czech Republic', '049', 'Czech', 'CZ', '420'),
    ('DEU', 'Germany', '072', 'German', 'DE', '49'),
    ('DJI', 'Djibouti', '053', 'Djiboutian', 'DJ', '253'),
    ('DMA', 'Dominica', '052', 'Dominican', 'DM', '1767'),
    ('DNK', 'Denmark', '061', 'Danish', 'DK', '45'),
    ('DOM', 'Dominican Republic', '051', 'Dominican', 'DO', '1809'),
    ('DZA', 'Algeria', '004', 'Algerian', 'DZ', '213'),
    ('ECU', 'Ecuador', '059', 'Ecuadorian', 'EC', '593'),
    ('EGY', 'Egypt', '062', 'Egyptian', 'EG', '20'),
    ('ERI', 'Eritrea', '064', 'Eritrean', 'ER', '291'),
    ('ESH', 'Western Sahara', '163', 'Sahrawi', 'EH', '212'),
    ('ESP', 'Spain', '065', 'Spanish', 'ES', '34'),
    ('EST', 'Estonia', '070', 'Estonian', 'EE', '372'),
    ('ETH', 'Ethiopia', '068', 'Ethiopian', 'ET', '251'),
    ('FJI', 'Fiji', '078', 'Fijian', 'FJ', '679'),
    ('FIN', 'Finland', '070', 'Finnish', 'FI', '358'),
    ('FRA', 'France', '066', 'French', 'FR', '33'),
    ('GAB', 'Gabon', '086', 'Gabonese', 'GA', '241'),
    ('GAM', 'Gambia', '087', 'Gambian', 'GM', '220'),
    ('GEO', 'Georgia', '088', 'Georgian', 'GE', '995'),
    ('GHA', 'Ghana', '089', 'Ghanaian', 'GH', '233'),
    ('GIB', 'Gibraltar', '090', 'Gibraltarian', 'GI', '350'),
    ('GMB', 'Gambia', '087', 'Gambian', 'GM', '220'),
    ('GNB', 'Guinea-Bissau', '091', 'Guinea-Bissauan', 'GW', '245'),
    ('GIN', 'Guinea', '092', 'Guinean', 'GN', '224'),
    ('GLP', 'Guadeloupe', '160', 'Guadeloupean', 'GP', '590'),
    ('GTM', 'Guatemala', '094', 'Guatemalan', 'GT', '502'),
    ('GUF', 'French Guiana', '161', 'Guianese', 'GF', '594'),
    ('GUM', 'Guam', '223', 'Guamanian', 'GU', '1671'),
    ('GUY', 'Guyana', '079', 'Guyanese', 'GY', '592'),
    ('HKG', 'Hong Kong', '227', 'Hong Konger', 'HK', '852'),
    ('HMD', 'Heard Island and McDonald Islands', '225', 'Heard Islander And Mcdonald Islander', 'HM', ' '),
    ('HND', 'Honduras', '082', 'Honduran', 'HN', '504'),
    ('HRV', 'Croatia', '046', 'Croatian', 'HR', '385'),
    ('HTI', 'Haiti', '080', 'Haitian', 'HT', '509'),
    ('HUN', 'Hungary', '083', 'Hungarian', 'HU', '36'),
    ('IDN', 'Indonesia', '087', 'Indonesian', 'ID', '62'),
    ('IMN', 'Isle of Man', '228', 'Manx', 'IM', '441624'),
    ('IND', 'India', '086', 'Indian', 'IN', '91'),
    ('IOT', 'British Indian Ocean Territory', '208', 'Briton/British', 'IO', '246'),
    ('IRL', 'Ireland', '090', 'Irish', 'IE', '353'),
    ('IRN', 'Iran, Islamic Republic of', '088', 'Iranian', 'IR', '98'),
    ('IRQ', 'Iraq', '089', 'Iraqi', 'IQ', '964'),
    ('ISL', 'Iceland', '085', 'Icelander', 'IS', '354'),
    ('ITA', 'Italy', '092', 'Italian', 'IT', '39'),
    ('JAM', 'Jamaica', '094', 'Jamaican', 'JM', '1876'),
    ('JEY', 'Jersey', '229', 'Channel Islander', 'JE', '441534'),
    ('JOR', 'Jordan', '096', 'Jordanian', 'JO', '962'),
    ('JPN', 'Japan', '095', 'Japanese', 'JP', '81'),
    ('KAZ', 'Kazakhstan', '097', 'Kazakhstani', 'KZ', '7'),
    ('KEN', 'Kenya', '098', 'Kenyan', 'KE', '254'),
    ('KGZ', 'Kyrgyzstan', '101', 'Kyrgyzstani', 'KG', '996'),
    ('KHM', 'Cambodia', '033', 'Cambodian', 'KH', '855'),
    ('KIR', 'Kiribati', '084', 'I-Kiribati', 'KI', '686'),
    ('KNA', 'Saint Kitts and Nevis', '099', 'Kittian and Nevisian', 'KN', '1869'),
    ('KOR', 'Korea, Republic of', '171', 'South Korean', 'KR', '82'),
    ('KWT', 'Kuwait', '100', 'Kuwaiti', 'KW', '965'),
    ('LAO', 'Lao People''s Democratic Republic', '102', 'Laotian', 'LA', '856'),
    ('LBN', 'Lebanon', '104', 'Lebanese', 'LB', '961'),
    ('LBR', 'Liberia', '105', 'Liberian', 'LR', '231'),
    ('LBY', 'Libya', '106', 'Libyan', 'LY', '218'),
    ('LCA', 'Saint Lucia', '154', 'Saint Lucian', 'LC', '1758'),
    ('LIE', 'Liechtenstein', '107', 'Liechtensteiner', 'LI', '423'),
    ('LKA', 'Sri Lanka', '173', 'Sri Lankan', 'LK', '94'),
    ('LSO', 'Lesotho', '126', 'Mosotho', 'LS', '266'),
    ('LTU', 'Lithuania', '108', 'Lithuanian', 'LT', '370'),
    ('LUX', 'Luxembourg', '109', 'Luxembourger', 'LU', '352'),
    ('LVA', 'Latvia', '103', 'Latvian', 'LV', '371'),
    ('MAC', 'Macao', '232', 'Macanese', 'MO', '853'),
    ('MAF', 'Saint Martin (French part)', '249', 'St. Martiner', 'MF', '590'),
    ('MAR', 'Morocco', '125', 'Moroccan', 'MA', '212'),
    ('MCO', 'Monaco', '123', 'Monacan', 'MC', '377'),
    ('MDA', 'Moldova, Republic of', '122', 'Moldovan', 'MD', '373'),
    ('MDG', 'Madagascar', '111', 'Malagasy', 'MG', '261'),
    ('MDV', 'Maldives', '114', 'Maldivan', 'MV', '960'),
    ('MEX', 'Mexico', '120', 'Mexican', 'MX', '52'),
    ('MHL', 'Marshall Islands', '117', 'Marshallese', 'MH', '692'),
    ('MKD', 'Macedonia, The Former Yugoslav Republic of', '110', 'Macedonian', 'MK', '389'),
    ('MLI', 'Mali', '115', 'Malian', 'ML', '223'),
    ('MLT', 'Malta', '116', 'Maltese', 'MT', '356'),
    ('MMR', 'Myanmar', '031', 'Burmese', 'MM', '95'),
    ('MNE', 'Montenegro', '236', 'Montenegrin', 'ME', '382'),
    ('MNG', 'Mongolia', '124', 'Mongolian', 'MN', '976'),
    ('MNP', 'Northern Mariana Islands', '241', 'Northern Mariana Islander', 'MP', '1670'),
    ('MOZ', 'Mozambique', '128', 'Mozambican', 'MZ', '258'),
    ('MRT', 'Mauritania', '118', 'Mauritanian', 'MR', '222'),
    ('MSR', 'Montserrat', '237', 'Montserratian', 'MS', '1664'),
    ('MTQ', 'Martinique', '234', 'Martiniquais', 'MQ', '596'),
    ('MUS', 'Mauritius', '119', 'Mauritian', 'MU', '230'),
    ('MWI', 'Malawi', '112', 'Malawian', 'MW', '265'),
    ('MYS', 'Malaysia', '113', 'Malaysian', 'MY', '60'),
    ('MYT', 'Mayotte', '235', 'Mahorais', 'YT', '262'),
    ('NAM', 'Namibia', '129', 'Namibian', 'NA', '264'),
    ('NCL', 'New Caledonia', '238', 'New Caledonian', 'NC', '687'),
    ('NER', 'Niger', '137', 'Nigerien', 'NE', '227'),
    ('NFK', 'Norfolk Island', '240', 'Norfolk Islander', 'NF', '672'),
    ('NGA', 'Nigeria', '136', 'Nigerian', 'NG', '234'),
    ('NIC', 'Nicaragua', '135', 'Nicaraguan', 'NI', '505'),
    ('NIU', 'Niue', '239', 'Niuean', 'NU', '683'),
    ('NLD', 'Netherlands', '054', 'Dutch', 'NL', '31'),
    ('NOR', 'Norway', '140', 'Norwegian', 'NO', '47'),
    ('NPL', 'Nepal', '131', 'Nepalese', 'NP', '977'),
    ('NRU', 'Nauru', '130', 'Nauruan', 'NR', '674'),
    ('NZL', 'New Zealand', '133', 'New Zealander', 'NZ', '64'),
    ('OMN', 'Oman', '141', 'Omani', 'OM', '968'),
    ('PAK', 'Pakistan', '142', 'Pakistani', 'PK', '92'),
    ('PAN', 'Panama', '144', 'Panamanian', 'PA', '507'),
    ('PCN', 'Pitcairn', '243', 'Pitcairn Islander', 'PN', '870'),
    ('PER', 'Peru', '147', 'Peruvian', 'PE', '51'),
    ('PHL', 'Philippines', '066', 'Filipino', 'PH', '63'),
    ('PLW', 'Palau', '143', 'Palauan', 'PW', '680'),
    ('PNG', 'Papua New Guinea', '145', 'Papua New Guinean', 'PG', '675'),
    ('POL', 'Poland', '148', 'Pole', 'PL', '48'),
    ('PRI', 'Puerto Rico', '244', 'Puerto Rican', 'PR', '1787 and 1939'),
    ('PRK', 'Korea, Democratic People''s Republic of', '138', 'North Korean', 'KP', '850'),
    ('PRT', 'Portugal', '149', 'Portuguese', 'PT', '351'),
    ('PRY', 'Paraguay', '146', 'Paraguayan', 'PY', '595'),
    ('PSE', 'Palestine, State of', '230', 'Palestinian', 'PS', '970'),
    ('PYF', 'French Polynesia', '233', 'French Polynesian', 'PF', '689'),
    ('QAT', 'Qatar', '150', 'Qatari', 'QA', '974'),
    ('REU', 'Reunion', '245', 'Reunionese', 'RE', '262'),
    ('ROU', 'Romania', '152', 'Romanian', 'RO', '40'),
    ('RUS', 'Russian Federation', '153', 'Russian', 'RU', '7'),
    ('RWA', 'Rwanda', '151', 'Rwandan', 'RW', '250'),
    ('SAU', 'Saudi Arabia', '156', 'Saudi', 'SA', '966'),
    ('SDN', 'Sudan', '157', 'Sudanese', 'SD', '249'),
    ('SEN', 'Senegal', '158', 'Senegalese', 'SN', '221'),
    ('SGP', 'Singapore', '159', 'Singaporean', 'SG', '65'),
    ('SGS', 'South Georgia and the South Sandwich Islands', '246', 'South Georgian', 'GS', '500'),
    ('SHN', 'Saint Helena, Ascension and Tristan da Cunha', '247', 'Saint Helenian', 'SH', '290'),
    ('SJM', 'Svalbard and Jan Mayen', '248', 'Svalbardian', 'SJ', '47'),
    ('SLB', 'Solomon Islands', '160', 'Solomon Islander', 'SB', '677'),
    ('SLE', 'Sierra Leone', '161', 'Sierra Leonean', 'SL', '232'),
    ('SLV', 'El Salvador', '162', 'Salvadoran', 'SV', '503'),
    ('SMR', 'San Marino', '163', 'Sammarinese', 'SM', '378'),
    ('SOM', 'Somalia', '164', 'Somali', 'SO', '252'),
    ('SPM', 'Saint Pierre and Miquelon', '242', 'Saint Pierrot', 'PM', '508'),
    ('SRB', 'Serbia', '165', 'Serbian', 'RS', '381'),
    ('SSD', 'South Sudan', '166', 'South Sudanese', 'SS', '211'),
    ('STP', 'Sao Tome and Principe', '167', 'Sao Tomean', 'ST', '239'),
    ('SUR', 'Suriname', '168', 'Surinamese', 'SR', '597'),
    ('SVK', 'Slovakia', '169', 'Slovak', 'SK', '421'),
    ('SVN', 'Slovenia', '170', 'Slovene', 'SI', '386'),
    ('SWE', 'Sweden', '172', 'Swedish', 'SE', '46'),
    ('SWZ', 'Eswatini', '174', 'Swazi', 'SZ', '268'),
    ('SYC', 'Seychelles', '175', 'Seychellois', 'SC', '248'),
    ('SYR', 'Syrian Arab Republic', '176', 'Syrian', 'SY', '963'),
    ('TCA', 'Turks and Caicos Islands', '177', 'Turks and Caicos Islander', 'TC', '1649'),
    ('TCD', 'Chad', '178', 'Chadian', 'TD', '235'),
    ('TGO', 'Togo', '179', 'Togolese', 'TG', '228'),
    ('THA', 'Thailand', '180', 'Thai', 'TH', '66'),
    ('TJK', 'Tajikistan', '181', 'Tajik', 'TJ', '992'),
    ('TKL', 'Tokelau', '182', 'Tokelauan', 'TK', '690'),
    ('TKM', 'Turkmenistan', '183', 'Turkmen', 'TM', '993'),
    ('TLS', 'Timor-Leste', '184', 'Timorese', 'TL', '670'),
    ('TON', 'Tonga', '185', 'Tongan', 'TO', '676'),
    ('TTO', 'Trinidad and Tobago', '186', 'Trinidadian and Tobagonian', 'TT', '1868'),
    ('TUN', 'Tunisia', '187', 'Tunisian', 'TN', '216'),
    ('TUR', 'Turkey', '188', 'Turkish', 'TR', '90'),
    ('TUV', 'Tuvalu', '189', 'Tuvaluan', 'TV', '688'),
    ('TWN', 'Taiwan', '190', 'Taiwanese', 'TW', '886'),
    ('TZA', 'United Republic of Tanzania', '191', 'Tanzanian', 'TZ', '255'),
    ('UGA', 'Uganda', '192', 'Ugandan', 'UG', '256'),
    ('UKR', 'Ukraine', '193', 'Ukrainian', 'UA', '380'),
    ('URY', 'Uruguay', '194', 'Uruguayan', 'UY', '598'),
    ('USA', 'United States of America', '195', 'American', 'US', '1'),
    ('UZB', 'Uzbekistan', '196', 'Uzbek', 'UZ', '998'),
    ('VCT', 'Saint Vincent and the Grenadines', '197', 'Vincentian', 'VC', '1784'),
    ('VEN', 'Venezuela (Bolivarian Republic of)', '198', 'Venezuelan', 'VE', '58'),
    ('VGB', 'Virgin Islands (British)', '199', 'British Virgin Islander', 'VG', '1284'),
    ('VIR', 'Virgin Islands (U.S.)', '200', 'American Virgin Islander', 'VI', '1340'),
    ('VNM', 'Viet Nam', '201', 'Vietnamese', 'VN', '84'),
    ('VUT', 'Vanuatu', '202', 'Ni-Vanuatu', 'VU', '678'),
    ('WLF', 'Wallis and Futuna', '203', 'Wallisian and Futunan', 'WF', '681'),
    ('WSM', 'Samoa', '204', 'Samoan', 'WS', '685'),
    ('YEM', 'Yemen', '205', 'Yemeni', 'YE', '967'),
    ('ZAF', 'South Africa', '206', 'South African', 'ZA', '27'),
    ('ZMB', 'Zambia', '207', 'Zambian', 'ZM', '260'),
    ('ZWE', 'Zimbabwe', '209', 'Zimbabwean', 'ZW', '263')
    ('VAT','VATICAN CITY','336','Vatican','VA','226')


INSERT INTO ConfigurationService_Migration.dbo.Country
    (
     Name,
     IsDeleted,
     CreatedAt,
     UpdatedAt,
     CreatedBy,
     CreatedByName,
     UpdatedBy,
     UpdatedByName,
     NationalityCode,
     Code,
     DialCode,
     IsNationalityDeleted,
     Nationality,
     Configuration,
     IsActive,
     BaseCurrencyCode,
     CurrencyCode,
     IdType,
     OrderSequence,
     WuCurrencies
)
select
     upper(cm.CountryName) as Name
    ,CASE when cm.DelFlag = 'N' then 0 else 1 End as IsDeleted
    ,sysdatetimeoffset() as CreatedAt
    ,sysdatetimeoffset() as ModifiedAt
    ,'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy
    ,'superadmin' as CreatedByName
    ,'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy
    ,'superadmin' as UpdatedByName
    ,upper(cm.MIRSNationalityCd) as NationalityCode
    ,upper(cm.CountryCd2) as [Code]
    ,n.DialCode as DialCode
    ,CASE when cm.DelFlag = 'N' then 0 else 1 End as IsNationalityDeleted
    ,upper(n.Nationality) as Nationality
    ,(
        SELECT
            ISNULL(cm.CountryCd3, '') AS Alpha3Code,
            ISNULL(cm.NumericCd, '') AS NumericCode,

            -- IsHighRisk: TRUE for 'Y' or 1, FALSE otherwise
            CASE
                WHEN cm.IsHighRisk IN ('Y', '1') THEN CAST(1 AS BIT)
                ELSE CAST(0 AS BIT)
            END AS IsOutboundHighRisk,

            -- IsInboundHighRisk: TRUE for 'Y' or 1, FALSE otherwise
            CASE
                WHEN cm.IsInboundHighRisk IN ('Y', '1') THEN CAST(1 AS BIT)
                ELSE CAST(0 AS BIT)
            END AS IsInboundHighRisk,

            -- EnableWU
            case when w.iso_country_cd is not null then CAST(1 AS BIT) ELSE CAST(0 AS BIT)end as EnableWU,

            2 AS BusinessDayForPayment,

            -- ForceOutboundTransfer: TRUE for 'Y' or 1, FALSE otherwise
            CASE
                WHEN cm.IsAllowRemittance IN ('Y', '1') THEN CAST(1 AS BIT)
                ELSE CAST(0 AS BIT)
            END AS ForceOutboundTransfer,

            CAST(1 AS BIT) as IsInboundStr

        FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) AS [Configuration]
    ,1 IsActive
    ,case when cm.CurrencyCd = 'BYR' then 'BYN'
        when cm.CurrencyCd = 'LTL' then 'EUR'
        when cm.CurrencyCd = 'MRO' then 'MRU'
        when cm.CurrencyCd = 'SLL' then 'SLE'
        when cm.CurrencyCd = 'STD' then 'STN'
        when cm.CurrencyCd = 'VEF' then 'VES'
        when cm.CurrencyCd = 'ZMK' then 'ZMW'
    else cm.CurrencyCd end as BaseCurrencyCode
    ,concat('["',cm.CurrencyCd,'"]') as CurrencyCode
    ,'[1]' as IdType
    ,CASE WHEN cm.CountryCd2 = 'BD' THEN 1
    WHEN cm.CountryCd2 = 'PH' THEN 2
    WHEN cm.CountryCd2 = 'MM' THEN 3
    WHEN cm.CountryCd2 = 'MY' THEN 4
    WHEN cm.CountryCd2 = 'NP' THEN 5
    WHEN cm.CountryCd2 = 'IN' THEN 6
    WHEN cm.CountryCd2 = 'ID' THEN 7
    WHEN cm.CountryCd2 = 'PK' THEN 8
    WHEN cm.CountryCd2 = 'SL' THEN 9
    WHEN cm.CountryCd2 = 'VN' THEN 10
    ELSE 100
    END AS NationalityOrderSequence
    ,concat('["',cm.CurrencyCd,'"]')
FROM
    MIRS_restore.dbo.countrycodeMap cm
LEFT JOIN MIRS_restore.dbo.country c on case when cm.CountryCd2 = 'GB' then 'UK' else cm.CountryCd2 end  = c.cntry_cd
LEFT JOIN #CountryNationalityMaps n on cm.CountryCd2 = n.IsoCode
LEFT JOIN MIRS_restore.dbo.wu_destination_country w on w.iso_country_cd = c.cntry_cd
WHERE len(n.Nationality) < 25 and cm.CountryCd2 <> 'GM' and len(n.dialcode)< 5;

----------- ################ Country Migration   ################ -------------


----------- ################ Bank Migration   ################ ----------------

INSERT INTO ConfigurationService_Migration.dbo.Bank
(
     name,
     createdat,
     updatedat,
     createdby,
     createdbyname,
     updatedby,
     updatedbyname,
     code,
     countrycode,
     isactive,
     isdeleted,
     isswift
)
select
    UPPER(bank_name) as Name
    ,isnull(created_on,getdate()) as CreatedAt
    ,isnull(modified_on,getdate()) as UpdatedAt
   ,cre.id as CreatedBy
    ,cre.UserName as CreatedByName
    ,mod.Id as UpdatedBy
    ,mod.UserName as UpdatedByName
    ,bank_cd as Code
    ,case when cntry_cd = 'UK' then 'GB' else cntry_cd end  as CountryCode
    ,1 as IsActive
    ,case when del_flag = 'N' then 0 else 1 End as IsDeleted
    ,case when is_swift = 'N' then 0 else 1 End as IsSwift
from
    MIRS_restore.dbo.Bank
    left join Auth_M1.dbo.[User] cre on cre.UserName = b.created_by
left join Auth_M1.dbo.[User] mod on mod.UserName = b.created_by
where cntry_cd != 'SWG';

----------- ################ Bank Migration   ################ --------------------


----------- ################ BankBranch Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.BankBranch
    (
        Name,
       Code,
       IsSwift,
       IsActive,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       AddressInfo,
       SwiftCode,
       BankCode
    )
SELECT
     UPPER(bank_branch_address) as Name
    ,bank_branch_cd as Code
    ,case when is_swift = 'B' THEN 1 ELSE 0 END AS IsSwift
    ,1 as IsActive
    ,case when del_flag = 'Y' THEN 1 ELSE 0 END AS IsDeleted
    ,isnull(created_on,getdate()) AS CreatedAt
    ,ISNULL(modified_on, GETDATE()) AS UpdatedAt
    ,cre.id as CreatedBy
    ,cre.UserName as CreatedByName
    ,mod.Id as UpdatedBy
    ,mod.UserName as UpdatedByName
    ,(
    SELECT
    ISNULL(Address,'') Address
    ,isnull(district,'') District
    ,isnull(state,'') State
    ,isnull(postcode,'') PostCode
    FOR JSON PATH,WITHOUT_ARRAY_WRAPPER) as AddressInfo
    ,swift as SwiftCode
    ,bank_cd as BankCode
from
    MIRS_restore.dbo.bank_branch b
 left join Auth_M1.dbo.[User] cre on cre.UserName = b.created_by
left join Auth_M1.dbo.[User] mod on mod.UserName = b.created_by;

----------- ################ BankBranch Migration   ################ -------------



----------- ################ IdCardType Migration   ################ -------------

-- DBCC CHECKIDENT ('ConfigurationService_Migration.dbo.IdCardType', RESEED, 0);
-- Step 1: Enable identity insert
SET IDENTITY_INSERT ConfigurationService_Migration.dbo.IdCardType ON;
INSERT INTO ConfigurationService_Migration.dbo.IdCardType
(id,
Name,
 IsExpiryDateRequired,
 IsDeleted,
 IsActive,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 Configuration
)
select
	 id_card_type_cd,
     ict.id_card_type_name as Name,
     case when ict.expiry_date_required = 'N' THEN 0 ELSE 1 END as IsExpiryDateRequired,
     case when ict.del_flag = 'N' THEN 0 ELSE 1 END AS  IsDeleted,
     1 as IsActive,
     created_on as CreatedAt,
     isnull(modified_on,created_on) as UpdatedAt,
     'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
     'superadmin' as CreatedByName,
     'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
     'superadmin' as UpdatedByName,
     '{"RequireIdIssue":false,"IdIssueCountryCode":null,"WUCode":null,"RequirePinNo":false,"IsInboundIdType":false,"IdNumberValidation":{"RegexPattern":null,"ErrorMessage":null}}'  as  Configuration   -- Need to check with developer
from MIRS_RESTORE.dbo.id_card_type ict
-- Step 3: Disable identity insert
SET IDENTITY_INSERT ConfigurationService_Migration.dbo.IdCardType OFF;
---DBCC CHECKIDENT ('IdCardType', NORESEED);

----------- ################ IdCardType Migration   ################ -------------


----------- ################ Partner Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.Partner
(Name,
 Code,
 LocationInfo,
 ContactInfo,
 Paying,
 Status,
 Collecting,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 PayingConfiguration,
 PrefundConfiguration,
 CollectingConfiguration,
 Type,
 IsDeleted)
select
    UPPER(pa.parent_agent_name) as Name,
     pa.parent_agent_cd as Code,
     (
    select
    ISNULL(cast(cntry_cd as varchar(20)) ,'') as CountryCode
    ,ISNULL(cast(rsp_cd as varchar(20)),'') as StateCode
    ,ISNULL(cast(district_cd as varchar(20)) ,'')  as DistrictCode
    ,ISNULL(cast(city_cd as varchar(20)) ,'') as CityCode
    ,ISNULL(cast(parent_agent_address as varchar(20)),'') as [Address]
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) as LocationInfo,
    (
    SELECT CASE
               WHEN phone_no_1 IS NOT NULL
                    AND phone_no_2 IS NOT NULL
               THEN JSON_QUERY('[' + QUOTENAME(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_1, 2), '\', '-'), '"') + ',' + QUOTENAME(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_2, 2), '\', '-'), '"') + ']')
               WHEN phone_no_1 IS NOT NULL
               THEN JSON_QUERY('[' + QUOTENAME(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_1, 2), '\', '-'), '"') + ']')
               WHEN phone_no_2 IS NOT NULL
               THEN JSON_QUERY('[' + QUOTENAME(REPLACE([MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_2, 2), '\', '-'), '"') + ']')
               ELSE '[]'
           END AS Phones,
           CASE
               WHEN fax_no_1 IS NOT NULL
                    AND fax_no_2 IS NOT NULL
               THEN JSON_QUERY('["' + REPLACE(fax_no_1, '"', '-') + '","' + REPLACE(fax_no_2, '"', '-') + '"]')
               WHEN fax_no_1 IS NOT NULL
               THEN JSON_QUERY('["' + REPLACE(fax_no_1, '"', '-') + '"]')
               WHEN fax_no_2 IS NOT NULL
               THEN JSON_QUERY('["' + REPLACE(fax_no_2, '"', '-') + '"]')
               ELSE '[]'
           END AS Faxes,
           ISNULL(email_id, '') AS Email,
           ISNULL([url], '') AS Website FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
) AS ContactInfo,
     case when agent_type_cd in ('B','P') THEN 1 ELSE 0 END as Paying,
     case when parent_agent_status = 'A' THEN 1
		  when parent_agent_status = 'I' THEN 2
	 Else 3 end as Status,
     case when agent_type_cd in ('B','C') THEN 1 ELSE 0 END  as Collecting,
     created_on as CreatedAt,
     isnull(modified_on,created_on) as UpdatedAt,
     cre.Id                 as CreatedBy,
               cre.UserName                                            as CreatedByName,
               mod.Id                 as UpdatedBy,
               mod.UserName                                            as UpdatedByName,
     (
    select
    case when allow_extract = 0 then cast (0 as bit) else cast(1 as bit) end EnableExtraction
    ,case when allow_direct_payment = 0 then cast (0 as bit) else cast(1 as bit) end  EnableDirectPayment
    ,cast (0 as bit) EnableMultiCorridor -- Need to check with developer
    ,cast (0 as bit) UsePartnerRemitNo -- Need to check with developer
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) as PayingConfiguration,
     (
    select
    case when allow_coll_prefund = 'N' then cast (0 as bit) else cast(1 as bit) end as EnableForCollection
    ,case when is_ready_for_payout = 'N' then cast (0 as bit) else cast(1 as bit) end as EnableForPayment
    ,case when allow_pay_prefund = 'N' then cast (0 as bit) else cast(1 as bit) end as AllowCreditLimit
    ,NULL ApprovedCreditLimit -- Need to check with developer
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) as PrefundConfiguration,
     (
    select
    case when cdd_edd_required = 'N' then cast (0 as bit) else cast(1 as bit) end as EnableCddEdd
    --,case when is_allow_2fa = 'N' then cast (0 as bit) else cast(1 as bit) end as EnableTwoFa
    ,cast (1 as bit) as EnableTwoFa
	,cast (0 as bit) as AllowIdUploadDocument
	,cast (0 as bit) as HashFunction
	,cast (0 as bit) as TransactionApprovalRequired
	,NULL as ExpiryHour
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) as CollectingConfiguration,
     case when agent_type = 'DMTO' then 1
        when agent_type = 'IMTO' then 2
        when agent_type = 'MMTO' then 3
        end as type,
    case when del_flag = 'Y' THEN 1 else 0 end IsDeleted
from MIRS_RESTORE.dbo.parent_agent pa
left join Auth_M1.dbo.[User] cre on cre.UserName = pa.created_by
left join Auth_M1.dbo.[User] mod on mod.UserName = pa.modified_by

----------- ################ Partner Migration   ################ -------------


----------- ################ PartnerBranch Migration   ################ -------------
IF OBJECT_ID('tempdb..#subTemp') is not null
    DROP TABLE #subTemp;

IF OBJECT_ID('tempdb..#PB') is not null
    DROP TABLE #PB;

SELECT t.name, t.tag_no, s.sub_agent_cd
INTO #subTemp
FROM MIRS_restore..tag_mst t
INNER JOIN (
    SELECT tag_no, MIN(sub_agent_cd) AS sub_agent_cd
    FROM MIRS_restore..sub_agent
    WHERE parent_agent_cd = 'MY0001'
    GROUP BY tag_no
) s ON t.tag_no = s.tag_no
WHERE t.is_msb_agent = 'Y'
      AND t.parent_agent_cd = 'MY0001'
ORDER BY t.name;


select *
into #PB
from (select row_number() over (partition by s.sub_agent_cd order by s.sub_agent_status)   as rnk,
                      UPPER(s.sub_agent_name)                                                             as Name,
                      s.sub_agent_cd                                                                      as Code,
                      CASE
                          when st.sub_agent_cd is not null then 2
                          WHEN left(s.sub_agent_cd, 2) != 'AS' THEN 1
                          WHEN left(S.sub_agent_cd,2) ='AS' and S.parent_agent_cd='MY0001' THEN 3
                          END                                                                             AS BranchType,
                      (select s.cntry_cd as                                         CountryCode
                            , isnull(cast(s.rsp_cd as varchar(200)), '')            StateCode
                            , isnull(cast(s.district_cd as varchar(200)), '')       DistrictCode
                            , isnull(cast(s.city_cd as varchar(200)), '')           CityCode
                            , isnull(cast(s.sub_agent_address as varchar(200)), '') Address
                            , isnull(cast(s.gmt_offset as varchar(200)), '')        GmtOffset
                            , isnull(concat(s.working_hr_from, ':00'), '')          WorkingTimeFrom
                            , isnull(concat(s.working_hr_to, ':00'), '')            WorkingTimeTo
                       for json path,without_array_wrapper)                                               as LocationInfo,
                      (select CASE
                                  WHEN phone_no_1 IS NOT NULL
                                      AND phone_no_2 IS NOT NULL
                                      THEN JSON_QUERY('[' + QUOTENAME(REPLACE(REPLACE(
                                                                                      [MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_1, 2),
                                                                                      '\', '-'), '"', ''), '"') + ',' +
                                                      QUOTENAME(REPLACE(REPLACE(
                                                                                [MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_2, 2),
                                                                                '\', '-'), '"', ''), '"') + ']')
                                  WHEN phone_no_1 IS NOT NULL
                                      THEN JSON_QUERY('[' + QUOTENAME(REPLACE(REPLACE(
                                                                                      [MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_1, 2),
                                                                                      '\', '-'), '"', ''), '"') + ']')
                                  WHEN phone_no_2 IS NOT NULL
                                      THEN JSON_QUERY('[' + QUOTENAME(REPLACE(REPLACE(
                                                                                      [MIRS_RESTORE].[dbo].[f_RemoveNonASCII](phone_no_2, 2),
                                                                                      '\', '-'), '"', ''), '"') + ']')
                                  ELSE '[]'
                          END AS                     Phones
                            , isnull(s.email_id, '') Email
                            , url     as                Website
                       for json path,without_array_wrapper)                                               as ContactInfo,
                      s.created_on                                                                        as CreatedAt,
                      isnull(s.modified_on, s.created_on)                                                 as UpdatedAt,
                      'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                              as CreatedBy,
                      'superadmin'                                                                        as CreatedByName,
                      'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                              as UpdatedBy,
                      'superadmin'                                                                        as UpdatedByName,
                      case
                          when s.sub_agent_status = 'A' THEN 1
                          when s.sub_agent_status = 'I' THEN 2
                          else 3 end                                                                      as Status,
                      s.parent_agent_cd                                                                   as PartnerCode,
                      case when s.agent_type_cd = 'B' THEN 3 WHEN s.agent_type_cd = 'C' THEN 2 else 1 end as AgentType,
                      isnull(s.alpha_code, '')                                                            as AlphaCode,
                      isnull(s.outlet_code, '')                                                           as OutletCode,
                      cast(null as nvarchar(50))                                                          as ParentBranchCode, -- need to check with developer
                      case when s.del_flag = 'N' then 0 else 1 end                                        as IsDeleted,
                      m.counter_id                                                                        as CounterId,
                      m.identifier                                                                        as Identifier,
                      case when st.sub_agent_cd is not null then 1 else 0 end                             as IsHQ,
                      s.tag_no

               from MIRS_restore.dbo.sub_agent s
                        left join MIRS_RESTORE.dbo.wu_agentid_mapping m
                                  on m.mta_branch_cd = s.sub_agent_cd
                        left join #subTemp st on st.sub_agent_cd = s.sub_agent_cd
                        left join #subTemp tag on tag.tag_no = s.tag_no
             )l
where l.rnk = 1

update #PB
set BranchType = 1
where BranchType is null;


update p1
set p1.ParentBranchCode = (select Code from #PB p where p.IsHQ = 1 and p1.tag_no = p.tag_no)
from #PB p1
where  p1.IsHQ != 1 AND P1.BranchType =3;

INSERT INTO ConfigurationService_Migration.dbo.PartnerBranch(Name, Code, BranchType, LocationInfo, ContactInfo,
                                                             CreatedAt, UpdatedAt, CreatedBy, CreatedByName, UpdatedBy,
                                                             UpdatedByName, Status, PartnerCode, AgentType, AlphaCode,
                                                             OutletCode, ParentBranchCode, IsDeleted, CounterId,
                                                             Identifier, IsHQ)
select Name,
       Code,
       BranchType,
       LocationInfo,
       ContactInfo,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       Status,
       PartnerCode,
       AgentType,
       AlphaCode,
       OutletCode,
       ParentBranchCode,
       IsDeleted,
       CounterId,
       Identifier,
       IsHQ
from #PB

----------- ################ PartnerBranch Migration   ################ ------------


----------- ################ PayingMode Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingMode
    ( Code,
       Name,
       Configuration,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
    )
SELECT
       ref_code AS Code,
       ref_desc AS Name,
       (
        select
        case when ref_code in ('15', '16', '25', '26', '27') then 'true' else 'false' end as MultiCorridorMode
        ,case when ref_code in ('1','5','12','13','14','15','24') then 'true' else 'false' end as BankRequired
        ,case when ref_code not in ('1','5','12','13','14','15','24','15', '16', '25', '26', '27') then 'true' else 'false' end as PayingGroupRequired
        for json path, without_array_wrapper
        ) as Configuration,
       case when del_flag = 'N' then 0 else 1 End as IsDeleted,
       created_on AS CreatedAt,
       isnull(modified_on,created_on) as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
       'superadmin' AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
       'superadmin' AS UpdatedByName
FROM
    MIRS_restore.dbo.ref_code_table_dtl
WHERE ref_rec_type = 'PAYMENT_MODE'

----------- ################ PayingMode Migration   ################ -------------


----------- ################ PayingGroup Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingGroup
    (Code,
       Name,
       IsActive,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       Configuration,
       Note,
       PayingCountryCode,
       PayingCurrencyCode,
       PayingModeCode)

select
       grp_cd AS Code,
       grp_name as Name,
       case when is_active = 'N' then 0 else 1 End as IsActive,
       case when del_flag = 'N' then 0 else 1 End as IsDeleted,
       created_on as createdAt,
       isnull(modified_on,created_on) as UpdatedAt,
        cre.id               as CreatedBy,
               cre.UserName                                          AS CreatedByName,
               mod.Id                as UpdatedBy,
               mod.UserName                                          AS UpdatedByName,
       (
        select
        cast(1 as bit) as AllowIndividualReceiver
        ,case when allow_b2b = 'N' then cast(0 as bit) else cast(1 as bit)  end as AllowBusinessReceiver
        for json path,without_array_wrapper
        ) as Configuration,
       payout_list as Note,
       case when cntry_cd = 'UK' then 'GB' else cntry_cd end as  PayingCountryCode,
       pay_crncy_cd PayingCurrencyCode,
       payment_mode_cd PayingModeCode
FROM
    MIRS_restore.dbo.grp_paying_group
     LEFT JOIN Auth_M1.dbo.[User] cre on cre.UserName = tg.created_by
        LEFT JOIN Auth_M1.dbo.[User] mod on mod.UserName = tg.modified_by;

----------- ################ PayingGroup Migration   ################ -------------


----------- ################ PayingGroupPartner Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingGroupPartner
    (CreatedAt,
     UpdatedAt,
     CreatedBy,
     CreatedByName,
     UpdatedBy,
     UpdatedByName,
     PayingGroupCode,
     PayingPartnerCode,
     IsDeleted)

    select
        g.created_on as CreatedAt,
       coalesce(g.modified_on,g.created_on,getdate()) as  UpdatedAt,
       cre.id                          as CreatedBy,
               cre.UserName                    AS CreatedByName,
               mod.Id                          as UpdatedBy,
               mod.UserName                    AS UpdatedByName,
       g.grp_cd as  PayingGroupCode,
       g.pay_parent_agent_cd  PayingPartnerCode,
       case when g.del_flag = 'N' then 0 else 1 end as  IsDeleted
from
    MIRS_RESTORE.dbo.grp_agent g
     LEFT JOIN Auth_M1.dbo.[User] cre on cre.UserName = g.created_by
                 LEFT JOIN Auth_M1.dbo.[User] mod on mod.UserName = g.modified_by

----------- ################ PayingGroupPartner Migration   ################ -------------


----------- ################ CollectionMode Migration   ################ -------------
INSERT INTO ConfigurationService_Migration.dbo.[CollectionMode]
           ([Code]
           ,[Name]
           ,[CreatedAt]
           ,[UpdatedAt]
           ,[CreatedBy]
           ,[CreatedByName]
           ,[UpdatedBy]
           ,[UpdatedByName]
           ,[IsDeleted])
SELECT
       ref_code AS Code,
       ref_desc AS Name,
       created_on AS CreatedAt,
       isnull(modified_on,created_on) as UpdatedAt,
        cre.id                          as CreatedBy,
               cre.UserName                    AS CreatedByName,
               mod.Id                          as UpdatedBy,
               mod.UserName                    AS UpdatedByName,
	   case when tg.del_flag = 'Y' then 1 else 0 end as  IsDeleted
FROM
    MIRS_restore.dbo.ref_code_table_dtl tg
    LEFT JOIN Auth_M1.dbo.[User] cre on cre.UserName = tg.created_by
                 LEFT JOIN Auth_M1.dbo.[User] mod on mod.UserName = tg.modified_by
WHERE ref_rec_type = 'COLLECTION_MODE'

----------- ################ CollectionMode Migration   ################ -------------


----------- ################ CountryPayingMode Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.[CountryPayingMode]
([Id],
 [CountryCode],
 [PayingModeCode],
 [CreatedAt],
 [UpdatedAt],
 [CreatedBy],
 [CreatedByName],
 [UpdatedBy],
 [UpdatedByName],
 [Configuration],
 [IsDeleted]
)
       SELECT NEWID() AS Id,
              case when cntry_cd = 'UK'  then 'GB' else cntry_cd end  AS CountryCode,
              payment_mode_cd AS PayingModeCode,
              created_on AS CreatedAt,
              ISNULL(modified_on, GETDATE()) AS UpdatedAt,
               cre.id                          as CreatedBy,
               cre.UserName                    AS CreatedByName,
               mod.Id                          as UpdatedBy,
               mod.UserName                    AS UpdatedByName,
			  '{"MerchantradeEnabled":true,"WUEnabled":true,"CurrencyDetails":null}' [Configuration],   -- Need to check with developer
              CASE
                  WHEN del_flag = 'N'
                  THEN 0
                  ELSE 1
              END AS IsDeleted
       FROM MIRS_RESTORE.dbo.country_payment_mode tg
        LEFT JOIN Auth_M1.dbo.[User] cre on cre.UserName = tg.created_by
                 LEFT JOIN Auth_M1.dbo.[User] mod on mod.UserName = tg.modified_by

----------- ################ CountryPayingMode Migration   ################ -------------



----------- ################ NatureOfBusiness Migration   ################ -------------
INSERT INTO ConfigurationService_Migration.dbo.[NatureOfBusiness]
           ([Code]
           ,[Name]
           ,[RiskType]
           ,[IsDeleted]
           ,[CreatedAt]
           ,[UpdatedAt]
           ,[CreatedBy]
           ,[CreatedByName]
           ,[UpdatedBy]
           ,[UpdatedByName]
           ,[Id])
SELECT r.ref_code AS Code,
       r.ref_desc AS Name,
       CASE
           WHEN rc.ref_code IS NULL
           THEN 1
           ELSE 2
       END [RiskType],
	   CASE
           WHEN r.del_flag = 'N'
           THEN 0
           ELSE 1
       END AS IsDeleted,
       r.created_on AS CreatedAt,
       ISNULL(r.modified_on, r.created_on) AS UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
       'superadmin' AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
       'superadmin' AS UpdatedByName,

	   Newid() id
FROM MIRS_restore.dbo.ref_code_table_dtl r
     LEFT JOIN MIRS_restore.dbo.ref_code_table_dtl rc ON r.ref_code = rc.ref_code
                                                         AND rc.ref_rec_type = 'HIGHRISK_OCCUPATION'

WHERE r.ref_rec_type = 'OCCUPATION'
AND r.remit_type = 'B2B'
AND r.del_flag = 'N';

----------- ################ NatureOfBusiness Migration   ################ -------------



----------- ################ PartnerBranchCollectionMode Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerBranchCollectionMode
    ( CollectionModeCode,
       CollectingPartnerBranchCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
    )
select
      c.collection_mode_cd as CollectionModeCode,
       s.sub_agent_cd as CollectingPartnerBranchCode,
       getdate() as  CreatedAt,
       getdate() as UpdatedAt,
       cre.Id               as CreatedBy,
               cre.UserName         as CreatedByName,
               mod.id               as UpdatedBy,
               mod.UserName         as UpdatedByName,
       case when c.del_flag = 'Y' then 1 else 0 end as  IsDeleted
from MIRS_RESTORE.dbo.parent_agent_coll_mode c
join MIRS_RESTORE.dbo.parent_agent p on p.parent_agent_cd = c.parent_agent_cd
join MIRS_RESTORE.dbo.sub_agent s on s.parent_agent_cd = p.parent_agent_cd
left join Auth_M1.dbo.[User] cre on cre.CreatedBy = c.created_by
                 left join Auth_M1.dbo.[User] mod on mod.CreatedBy = c.modified_by
where  p.parent_agent_status = 'A' and s.sub_agent_status = 'A'

----------- ################ PartnerBranchCollectionMode Migration   ################ -------------


----------- ################ CountryState Migration   ################ -------------

DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.Temp_CountryState;

SELECT concat(CNTRY_CD,'-',RSP_CD)  AS OldCode,
              ROW_NUMBER() over ( order by cntry_cd) as Code,
              RSP_NAME AS NAME,
              CNTRY_CD AS COUNTRYCODE,
              case when RSP_TYPE='R' THEN 1
                            when RSP_TYPE='S' THEN 2
                               when RSP_TYPE='P' THEN 3
                               else 4 end AS TYPE,
              CASE
                  WHEN DEL_FLAG = 'N'
                  THEN 0
                  ELSE 1
              END AS ISDELETED,
              created_on AS CreatedAt,
              ISNULL(modified_on, GETDATE()) AS UpdatedAt,
              'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
                       'superadmin' AS CreatedByName,
                       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
                       'superadmin' AS UpdatedByName,
                       NULL [WuStateDetails]  -- Need to check with developer
INTO ConfigurationService_Migration.dbo.Temp_CountryState
       FROM MIRS_RESTORE.dbo.REGION_STATE_PROVINCE;

INSERT INTO ConfigurationService_Migration.dbo.[CountryState]
([Code],
 [Name],
 [CountryCode],
 [Type],
 [IsDeleted],
 [CreatedAt],
 [UpdatedAt],
 [CreatedBy],
 [CreatedByName],
 [UpdatedBy],
 [UpdatedByName],
 [WuStateDetails]
)
SELECT [Code],
       [Name],
       [CountryCode],
       [Type],
       [IsDeleted],
       [CreatedAt],
       [UpdatedAt],
       [CreatedBy],
       [CreatedByName],
       [UpdatedBy],
       [UpdatedByName],
       [WuStateDetails]
FROM ConfigurationService_Migration.dbo.Temp_CountryState

----------- ################ CountryState Migration   ################ -------------



----------- ################ District Migration   ################ -------------


DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.Temp_District;

select concat(d.cntry_cd, '-', d.rsp_cd, '-', d.district_cd) as OldCode,
       concat(d.cntry_cd, '-', d.rsp_cd)                   as OldCountryStateCode,

       ROW_NUMBER() over ( order by c.Code) as Code,
       c.Code as CountryStateCode,
       d.district_name                                   as Name,
       case when d.del_flag = 'N' then 0 else 1 end      as IsDeleted,
       d.created_on                                      as CreatedAt,
       isnull(d.modified_on, d.created_on)                 as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          AS CreatedBy,
       'superadmin'                                    AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          AS UpdatedBy,
       'superadmin'                                    AS UpdatedByName
into ConfigurationService_Migration.dbo.Temp_District
FROM MIRS_RESTORE.dbo.district d
join ConfigurationService_Migration.dbo.Temp_CountryState c on concat(d.cntry_cd, '-', d.rsp_cd) = c.OldCode
order by c.Code

INSERT INTO ConfigurationService_Migration.dbo.District
(Code,
 CountryStateCode,
 Name,
 IsDeleted,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)

select Code,
       CountryStateCode,
       Name,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
from ConfigurationService_Migration.dbo.Temp_District;

----------- ################ District Migration   ################ -------------



----------- ################ City Migration   ################ -------------

DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.Temp_City;

select concat(c.cntry_cd, '-', c.rsp_cd, '-', c.district_cd, '-', c.city_cd) as OldCode,
       concat(c.cntry_cd, '-', c.rsp_cd, '-', c.district_cd)                 as OldDistrictCode,

       ROW_NUMBER() over ( order by c.city_name)                             as Code,
       d.Code                                                                as DistrictCode,
       c.city_name                                                           as Name,
       case when c.del_flag = 'N' then 0 else 'Y' end                        as IsDeleted,
       c.created_on                                                          as CreatedAt,
       isnull(c.modified_on, c.created_on)                                   as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                AS CreatedBy,
       'superadmin'                                                          AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                AS UpdatedBy,
       'superadmin'                                                          AS UpdatedByName,
       cs.Code                                                               as CountryStateCode
INTO ConfigurationService_Migration.dbo.Temp_City
from MIRS_RESTORE.dbo.city c
         join ConfigurationService_Migration.dbo.Temp_District d
              on d.OldCode = concat(cntry_cd, '-', rsp_cd, '-', district_cd)
         join ConfigurationService_Migration.dbo.Temp_CountryState cs on cs.OldCode = concat(c.cntry_cd, '-', c.rsp_cd)


INSERT INTO ConfigurationService_Migration.dbo.City
(
  Code,
       DistrictCode,
       Name,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       CountryStateCode
)
SELECT
      Code,
       DistrictCode,
       Name,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       CountryStateCode
FROM ConfigurationService_Migration.dbo.Temp_City
ORDER BY Code;


----------- ################ City Migration   ################ -------------



----------------- ### ReferenceCode ## -----------------------
 INSERT INTO Configurationservice_Migration.dbo.[ReferenceCode]
        ( [Id]
        , [Name]
        , [Code]
        , [IsActive]
        , [CreatedAt]
        , [UpdatedAt]
        , [CreatedBy]
        , [CreatedByName]
        , [UpdatedBy]
        , [UpdatedByName]
        , [IsDeleted],
          [Description],
          [IsMasterData])
        SELECT Newid()                                id,
               r.ref_rec_type_desc                 AS Name,
               r.ref_rec_type                      AS Code,
               CASE
                   WHEN r.del_flag = 'N' THEN 1
                   ELSE 0 END                      AS [IsActive],
               r.created_on                        AS CreatedAt,
               ISNULL(r.modified_on, r.created_on) AS UpdatedAt,
               cre.Id                              as CreatedBy,
               cre.UserName                        as CreatedByName,
               mod.id                              as UpdatedBy,
               mod.UserName                        as UpdatedByName,
               CASE
                   WHEN r.del_flag = 'N'
                       THEN 0
                   ELSE 1
                   END                             AS IsDeleted,
               r.ref_rec_type_desc,
               case
                   when r.ref_rec_type in (
'CITY',
'COMPANY_TYPE',
'ID_CARD_TYPE',
'NATIONALITY',
'NEPAL_WALLET_TYPE',
'OCCUPATION',
'PAYMENT_MODE',
'PGB_HOUSING_LOANTYPE',
'PGB_PAYMENT_CODE',
'PHN_PAYMENT_CODE',
'PRODUCT_CODE',
'RELATIONSHIP',
'REMITTANCE_REASON',
'RESIDENCY',
'SERVICE_MODE',
'SOURCE_OF_FUND',
'SSS_PAYMENT_CODE',
'SSS_REAL-ESTATE_LOANTYPE',
'SSS_SHORT-TERM_LOANTYPE',
'STATE',
'UK_STREET_TYPE') then 1
                   else 0 end                      as IsMaster
        FROM MIRS_restore.dbo.ref_code_table_mst r
                 left join Authservice_migration.dbo.[User] cre on cre.CreatedBy = r.created_by
                 left join Authservice_migration.dbo.[User] mod on mod.CreatedBy = r.modified_by
        WHERE ref_rec_type not in ('HIGHRISK_OCCUPATION', 'COLLECTION_MODE', 'PAYMENT_MODE');

----------------- ### ReferenceCode ## -----------------------


----------------- ### ReferenceCodeMapping ## -----------------------


-- Only for REMITTANCE_REASON

IF OBJECT_ID('tempdb..#PurposeOfRemittance') IS NOT NULL
    DROP TABLE #PurposeOfRemittance;
CREATE TABLE #PurposeOfRemittance(
	[sno] [int] NULL,
	[Code_new] [varchar](50) NULL,
	[Purpose_new] [varchar](200) NULL,
	[P2P_new] [varchar](10) NULL,
	[P2B_new] [varchar](10) NULL,
	[B2P_new] [varchar](10) NULL,
	[B2B_new] [varchar](10) NULL,
	[Code_old] [varchar](50) NULL,
	[Purpose_old] [varchar](200) NULL,
	[P2P_old] [varchar](10) NULL,
	[P2B_old] [varchar](10) NULL,
	[B2P_old] [varchar](10) NULL,
	[B2B_old] [varchar](10) NULL
) ON [PRIMARY]
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (1, N'21220', N'Worker''s Remittances', N'/', N'', N'', N'', N'1', N'Family Maintenance', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (2, N'21220', N'Worker''s Remittances', N'/', N'', N'', N'', N'2', N'Household Maintenance', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (3, N'21220', N'Worker''s Remittances', N'/', N'', N'', N'', N'8', N'Wedding Expenses', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (4, N'21220', N'Worker''s Remittances', N'/', N'', N'', N'', N'18', N'Personal Expenses', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (5, N'21210', N'Grants and Gifts', N'/', N'/', N'/', N'', N'3', N'Donation or Gift', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (6, N'21210', N'Grants and Gifts', N'/', N'/', N'/', N'', N'6', N'Funeral Expenses', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (7, N'16830', N'Education Services', N'/', N'/', N'/', N'', N'10', N'Education', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (8, N'31410', N'Financial Lease', N'/', N'/', N'/', N'', N'4', N'Payment on Loan', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (9, N'39130', N'Purchase/sale of real estate abroad (residential)', N'/', N'/', N'/', N'', N'5', N'Purchase of Property', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (10, N'16820', N'Health Services', N'/', N'/', N'/', N'', N'7', N'Medical Expenses', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (11, N'14310', N'Wages and Salaries in Cash', N'/', N'/', N'/', N'', N'15', N'Salary', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (12, N'14100', N'Investment Income', N'/', N'/', N'', N'', N'13', N'Business/ Investment', N'/', N'/', N'', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (13, N'14100', N'Investment Income', N'/', N'/', N'', N'', N'11', N'Savings', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (14, N'90000', N'Commodities and miscellaneous transactions, nce', N'/', N'/', N'/', N'/', N'9', N'Payment of Bill', N'/', N'/', N'/', N'')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (15, N'13110', N'Goods and services purchased by travellers', N'/', N'/', N'/', N'/', N'16', N'Payment of Goods and Services', N'/', N'/', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (16, N'13210', N'Goods and Services Purchase through Business and Official Travel', N'/', N'/', N'/', N'/', N'16', N'Payment of Goods and Services', N'/', N'/', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (17, N'00000', N'Food And Live Animals', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (18, N'01000', N'Beverages And Tobacco', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (19, N'02000', N'Crude Materials, Inedible Except Fuels', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (20, N'03000', N'Mineral Fuels, Lubricants And Related Materials', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (21, N'04000', N'Animals And Vegetable Oils, Fats And Waxes', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (22, N'05000', N'Chemicals And Related Products, N.C.E.', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (23, N'06000', N'Manufactured Goods', N'/', N'/', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (24, N'07000', N'Machinery, Non-Customised Packaged Software And Transport Equipment', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (25, N'08000', N'Miscellaneous Manufactured Articles', N'', N'', N'/', N'/', N'19', N'Payment of Goods', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (26, N'11100', N'Freight', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (27, N'11200', N'Passenger Fare', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (28, N'12200', N'Charter', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (29, N'12300', N'Operational Lease', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (30, N'12500', N'Maintenance And Repair Services N.I.E.', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (31, N'13300', N'Pilgrimage/Religious-Related', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (32, N'13400', N'Health-Related', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (33, N'13500', N'Education-Related', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (34, N'16100', N'Telecommunications Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (35, N'16311', N'Premium Paid/Received On High Risk Insurance Relating To Fire, Marine, Aviation Etc.', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (36, N'16312', N'Premium Paid/Received On Other General Insurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (37, N'16313', N'Premium Paid/Received On Life Insurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (38, N'16314', N'Premium Paid/Received On Reinsurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (39, N'16315', N'Premium Paid/Received On Insurance On Goods In The Process Of Being Exported/Imported', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (40, N'16321', N'Claim Settlements On High Risk Insurance Relating To Fire, Marine, Aviation Etc.', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (41, N'16322', N'Claim Settlements On Other General Insurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (42, N'16323', N'Claim Paid/Received On Life Insurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (43, N'16324', N'Claim Paid/Received On Reinsurance', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (44, N'16325', N'Claim Paid/Received On Insurance On Goods', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (45, N'16710', N'Merchanting Trade Within Malaysia', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (46, N'16720', N'Sharing Of Administrative Expenses', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (47, N'16730', N'Research And Development Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (48, N'16740', N'Architectural, Engineering And Other Technical Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (49, N'16750', N'Agricultural, Mining And On-Site Processing', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (50, N'16760', N'Advertising, Market Research, And Public Opinion Polling Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (51, N'16771', N'Legal Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (52, N'16772', N'Accounting Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO
INSERT #PurposeOfRemittance ([sno], [Code_new], [Purpose_new], [P2P_new], [P2B_new], [B2P_new], [B2B_new], [Code_old], [Purpose_old], [P2P_old], [P2B_old], [B2P_old], [B2B_old]) VALUES (53, N'16773', N'Management Consulting Services', N'', N'', N'/', N'/', N'20', N'Payment of Services', N'', N'', N'/', N'/')
GO

select distinct Code_new, Purpose_new, P2P_new, P2B_new, B2P_new, B2B_new
into #DistictPurposeOfRemittance
from #PurposeOfRemittance

INSERT INTO ConfigurationService_Migration.dbo.ReferenceCodeMapping
(Id,
 Name,
 Code,
 Abbreviation,
 IsActive,
 ReferenceCodeId,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted,
 RemitType
)

select newid() as  Id,
       Purpose_new as Name,
       p.Code_new as Code,
       '' as  Abbreviation,
       1 as IsActive,
       (select id from ConfigurationService_Migration.dbo.ReferenceCode where Code = 'REMITTANCE_REASON' ) as ReferenceCodeId,
       getdate() as  CreatedAt,
       getdate() as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
                'superadmin'                           as CreatedByName,
                'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
                'superadmin'                           as UpdatedByName,
       0 as IsDeleted,
       concat('{"remittype":[', l.FormattedOutput,']}')  AS RemitType
from #DistictPurposeOfRemittance p
outer apply (

SELECT pr.Code_new,
       STRING_AGG(QUOTENAME(val, '"'), ',') AS FormattedOutput
FROM (
    SELECT Code_new, CASE WHEN P2P_new = '/' THEN 'P2P' END AS val FROM #DistictPurposeOfRemittance
    UNION ALL
    SELECT Code_new, CASE WHEN P2B_new = '/' THEN 'P2B' END FROM #DistictPurposeOfRemittance
    UNION ALL
    SELECT Code_new, CASE WHEN B2P_new = '/' THEN 'B2P' END FROM #DistictPurposeOfRemittance
    UNION ALL
    SELECT Code_new, CASE WHEN B2B_new = '/' THEN 'B2B' END FROM #DistictPurposeOfRemittance
) t
JOIN #DistictPurposeOfRemittance pr ON t.Code_new = pr.Code_new
WHERE val IS NOT NULL and pr.Code_new = p.Code_new
GROUP BY pr.Code_new) l


-- Except REMITTANCE_REASON

INSERT INTO ConfigurationService_Migration.dbo.[ReferenceCodeMapping]
           ([Id]
           ,[Name]
           ,[Code]
           ,[Abbreviation]
           ,[IsActive]
           ,[ReferenceCodeId]
           ,[CreatedAt]
           ,[UpdatedAt]
           ,[CreatedBy]
           ,[CreatedByName]
           ,[UpdatedBy]
           ,[UpdatedByName]
           ,[IsDeleted]
		   ,[remittype])
SELECT
	   Newid() as id,
	   r.ref_desc AS Name,
	   r.ref_code AS Code,
	  '' as [Abbreviation],
	   CASE WHEN r.del_flag = 'N' THEN 1
       ELSE 0 END AS [IsActive],
	   rc.id [ReferenceCodeId],
       r.created_on AS CreatedAt,
       ISNULL(r.modified_on, r.created_on) AS UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
       'superadmin' AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
       'superadmin' AS UpdatedByName,
	   CASE
           WHEN r.del_flag = 'N'
           THEN 0
           ELSE 1
       END AS IsDeleted,
    CASE
        WHEN NULLIF(remit_type,'') IS NOT NULL
        THEN JSON_QUERY('{"remittype":[' + QUOTENAME(REPLACE(remit_type, '"', ''), '"') + ']}')
        ELSE '{"remittype":[]}'
    END AS RemitType
FROM MIRS_restore.dbo.ref_code_table_dtl r
join ConfigurationService_Migration.dbo.[ReferenceCode] rc on r.ref_rec_type=rc.Code
WHERE ref_rec_type not in ('REMITTANCE_REASON');


----------------- ### ReferenceCodeMapping ## -----------------------



----------- ################ PayingPartnerLimit Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingPartnerLimit
    (
       Id,
       PayingPartnerCode,
       PayingCountryCode,
       PayingCurrencyCode,
       PayingModeCode,
       ReceiverType,
       LimitPerTransaction,
       LimitPerDay,
       LimitPerMonth,
       NoOfTransactionPerDay,
       NoOfTransactionPerMonth,
       IsActive,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
    )
 select newid() as  Id,
       l.pay_parent_agent_cd as  PayingPartnerCode,
       l.pay_cntry_cd as  PayingCountryCode,
       l.pay_crncy_cd as PayingCurrencyCode,
       l.payment_mode_cd as  PayingModeCode,
       case when l.receiver_type = 'P' then 1 else 2 end as ReceiverType,
       l.limit_per_txn_lc as  LimitPerTransaction,
       isnull(l.limit_per_day_lc,0.00) as  LimitPerDay,
       isnull(l.limit_per_month_lc,0.00) as LimitPerMonth,
       isnull(l.tran_per_day_lc,0) as  NoOfTransactionPerDay,
       isnull(l.tran_per_month_lc,0) as NoOfTransactionPerMonth,
       case when l.del_flag = 'N' then 1 else 0 end as IsActive,
       case when l.del_flag = 'Y' then 1 else 0 end as IsDeleted,
       l.created_on as  CreatedAt,
       isnull(l.modified_on,l.created_on) as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'  as CreatedBy,
       'superadmin' as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
       'superadmin' as UpdatedByName
from
    MIRS_RESTORE.dbo.agent_pay_limit l;

----------- ################ PayingPartnerLimit Migration   ################ -------------



----------- ################ TellerLimitRule Migration   ################ -------------

insert into ConfigurationService_Migration.dbo.TellerLimitRule
(
Id,
       RuleName,
       SenderType,
       LimitPerDay,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
)
select
     newid() as  Id,
       t.teller_limit_group_name as RuleName,
       case when t.transaction_type = 'P' then 1 else 2 end as SenderType,
       (select t.limit_per_day as Sun,
               t.limit_per_day as Mon,
               t.limit_per_day as Tue,
               t.limit_per_day as Wed,
               t.limit_per_day as Thu,
               t.limit_per_day as Fri,
               t.limit_per_day as Sat
        for json path, without_array_wrapper ) as LimitPerDay,
       case when t.del_flag = 'Y' then 1 else 0 end as IsDeleted,
       t.created_on as CreatedAt,
       isnull(t.modified_on,t.created_on) as  UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
       'superadmin' as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
       'superadmin' as UpdatedByName
from MIRS_RESTORE.dbo.teller_group_limit t

----------- ################ TellerLimitRule Migration   ################ -------------




----------- ################ TellerLimit Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.TellerLimit
(
       Id,
       UserName,
       TellerLimitRuleId,
       TotalAmount,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
)
SELECT NEWID() AS ID,
       UserName,
       TellerLimitRuleId,
       TotalAmount,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
FROM (select DISTINCT u.UserName                             as UserName,
                t.Id                                   as TellerLimitRuleId,
                l.total_amount                         as TotalAmount,
                0                                      as IsDeleted,
                l.effective_date                       as CreatedAt,
                l.effective_date                       as UpdatedAt,
                'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
                'superadmin'                           as CreatedByName,
                'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
                'superadmin'                           as UpdatedByName
from MIRS_RESTORE.dbo.teller_limit l
         JOIN AuthServiceSIT.dbo.[User] u on u.UserName = l.remit_user_cd
         join MIRS_RESTORE.dbo.teller_group_limit tg on tg.teller_limit_group_id = l.teller_limit_group_id
         join ConfigurationService_Migration.dbo.TellerLimitRule t on tg.teller_limit_group_name = t.RuleName)L

----------- ################ TellerLimit Migration   ################ -------------





----------- ################ CollectingCountryLimit Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.CollectingCountryLimit
(Id,
 CountryCode,
 CurrencyCode,
 SenderType,
 ReceiverType,
 LimitPerDay,
 LimitPerMonth,
 NoOfTransactionPerDay,
 NoOfTransactionPerMonth,
 IsActive,
 IsDeleted,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)

select newid() as Id,
       CountryCode,
       CurrencyCode,
       SenderType,
       ReceiverType,
       LimitPerDay,
       LimitPerMonth,
       NoOfTransactionPerDay,
       NoOfTransactionPerMonth,
       IsActive,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
from (select distinct case when coll_cntry_cd = 'UK' then 'GB' else coll_cntry_cd end as CountryCode,
                      coll_crncy_cd                                                   as CurrencyCode,
                      case when left(remit_type, 1) = 'P' then 1 else 2 end           as SenderType,
                      case when left(remit_type, 1) = 'P' then 1 else 2 end           as ReceiverType,
                      coll_limit_per_day                                              as LimitPerDay,
                      coll_limit_per_month                                            as LimitPerMonth,
                      no_of_txn_per_day                                               as NoOfTransactionPerDay,
                      no_of_txn_per_month                                             as NoOfTransactionPerMonth,
                      case when del_flag = 'N' then 1 else 0 end                      as IsActive,
                      case when del_flag = 'N' then 0 else 1 end                      as IsDeleted,
                      getdate()                                                       AS CreatedAt,
                      getdate()                                                       AS UpdatedAt,
                      'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                          AS CreatedBy,
                      'superadmin'                                                    AS CreatedByName,
                      'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                          AS UpdatedBy,
                      'superadmin'                                                    AS UpdatedByName
      from MIRS_RESTORE.dbo.country_coll_limit) l

----------- ################ CollectingCountryLimit Migration   ################ -------------




----------- ################ PartnerIdCardType Migration   ################ -------------


INSERT INTO ConfigurationService_Migration.dbo.PartnerIdCardType
(Id,
 PartnerCode,
 IdCardTypeId,
 IsDeleted,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)

select NEWID()                                    AS Id,
       parent_agent_cd                            as PartnerCode,
       id_card_type_cd                            as IdCardTypeId,
       case when del_flag = 'N' then 0 else 1 end as IsDeleted,
       created_on                                 as CreatedAt,
       isnull(modified_on,created_on)         as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
       'superadmin'                               AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
       'superadmin'                               AS UpdatedByName
from MIRS_RESTORE.dbo.parent_agent_id_type;


----------- ################ PartnerIdCardType Migration   ################ -------------


----------- ################ CommissionRule Migration   ################ -------------

drop table if exists ConfigurationService_Migration.dbo.CommissionRule_Migration;

select
       NEWID() as Id,
       CASE WHEN left(c.pay_parent_agent_cd,2) = 'UK' THEN 'GB' ELSE left(c.pay_parent_agent_cd,2) END as  PayingCountryCode,
       c.payment_mode_cd as  PayingModeCode,
       c.rule_from_effective_date as EffectiveDate,
       c.comm_share_crncy_cd as  SharingCurrencyCode,
       case when c.del_flag = 'N' then 0 else 1 end as IsDeleted,
       t.name as RuleName,
       case when c.receiver_type  = 'P' then 1 else 2 end as ReceiverType,
       c.created_on as CreatedAt,
       isnull(c.modified_on,c.created_on) as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
       'superadmin'                               AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
       'superadmin'                               AS UpdatedByName,
       c.pay_crncy_cd as PayingCurrencyCode,
       c.comm_share_rule_cd,
       t.tag_no
into ConfigurationService_Migration.dbo.CommissionRule_Migration
from MIRS_RESTORE.dbo.comm_sharing_mst c
join MIRS_RESTORE.dbo.tag_mst t on t.tag_no = c.tag_no

INSERT INTO ConfigurationService_Migration.dbo.CommissionRule
(Id,
 PayingCountryCode,
 PayingModeCode,
 EffectiveDate,
 SharingCurrencyCode,
 IsDeleted,
 RuleName,
 ReceiverType,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 PayingCurrencyCode)
select Id,
       PayingCountryCode,
       PayingModeCode,
       EffectiveDate,
       SharingCurrencyCode,
       IsDeleted,
       RuleName,
       ReceiverType,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       PayingCurrencyCode
from ConfigurationService_Migration.dbo.CommissionRule_Migration;

----------- ################ CommissionRule Migration   ################ -------------


----------- ################ CommissionRuleDetail Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.CommissionRuleDetail
( Id,
       CommissionRuleId,
       UpperPayingLimit,
       CommissionType,
       Amount,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
    )

select
      newid() as Id,
       m.Id as CommissionRuleId,
       d.upper_pay_limit as UpperPayingLimit,
       case when d.comm_share_type ='F' then 1 else 2 end as CommissionType,
       d.comm_share_amount as Amount,
       case when d.del_flag = 'N' then 0 else 1 end as IsDeleted,
       d.created_on as CreatedAt,
       ISNULL(d.modified_on,d.created_on ) as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
       'superadmin'                               AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
       'superadmin'                               AS UpdatedByName
from MIRS_RESTORE.dbo.comm_sharing_dtl d
join MIRS_RESTORE.dbo.comm_sharing_mst c on c.comm_share_rule_cd = d.comm_share_rule_cd
join ConfigurationService_Migration.dbo.CommissionRule_Migration m on m.comm_share_rule_cd = c.comm_share_rule_cd



----------- ################ CommissionRuleDetail Migration   ################ -------------


----------- ################ ForexRule Migration   ################ -------------
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.ForexRuleMigration;

SELECT *
into ConfigurationService_Migration.dbo.ForexRuleMigration
FROM (SELECT NEWID() as ForexId, f.forex_tag_no,
             f.from_crncy_cd                        as CollectingCurrencyCode,
             case
                 when f.to_crncy_cd is null then (select c.BaseCurrencyCode
                                                  from ConfigurationService_Migration.dbo.Country c
                                                  where (case when c.Code = 'UK' then 'GB' else c.Code end) =
                                                        (case
                                                             when left(f.grp_cd, 2) = 'UK'
                                                                 then 'GB'
                                                             else left(f.grp_cd, 2) end))
                 else f.to_crncy_cd end             as PayingCurrencyCode,
             f.pay_ex_rate                          as BaseCustomerRate,
             m.name                                 as RuleName,
             f.grp_cd                               as PayingGroupCode,
             f.counter_rate                         as CustomerRate,
             f.agent_rate                           as PartnerRate,
             1                                      as SenderType,
             null                                   as PayingPartnerCode,
             0                                      as IsMultiCorridorMode,
             f.created_on                           as CreatedAt,
             ISNULL(f.modified_on, f.created_on)    as UpdatedAt,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
             'superadmin'                           as CreatedByName,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
             'superadmin'                           as UpdatedByName,
             0                                      as IsDeleted,
             f.margin as margin,
             s.sub_agent_cd
      FROM MIRS_RESTORE.dbo.grp_forex f
               JOIN MIRS_RESTORE.dbo.tag_mst m on m.tag_no = f.forex_tag_no
      join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.forex_tag_no = f.forex_tag_no
      where f.pay_ex_rate is not null
        and f.counter_rate is not null -- Need to check with developer
      union all
      SELECT NEWID() as ForexId,f.forex_tag_no                         as forex_tag_no,
             f.from_crncy_cd                        as CollectingCurrencyCode,
             case
                 when f.to_crncy_cd is null then (select c.BaseCurrencyCode
                                                  from ConfigurationService_Migration.dbo.Country c
                                                  where (case when c.Code = 'UK' then 'GB' else c.Code end) =
                                                        (case
                                                             when left(f.grp_cd, 2) = 'UK'
                                                                 then 'GB'
                                                             else left(f.grp_cd, 2) end))
                 else f.to_crncy_cd end             as PayingCurrencyCode,
             f.pay_ex_rate                          as BaseCustomerRate,
             m.name                                 as RuleName,
             f.grp_cd                               as PayingGroupCode,
             f.counter_rate                         as CustomerRate,
             f.agent_rate                           as PartnerRate,
             2                                      as SenderType,
             NULL                                   as PayingPartnerCode,
             0                                      as IsMultiCorridorMode,
             f.created_on                           as CreatedAt,
             ISNULL(f.modified_on, f.created_on)    as UpdatedAt,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
             'superadmin'                           as CreatedByName,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
             'superadmin'                           as UpdatedByName,
             0                                      as IsDeleted,
             f.margin as margin,
             s.sub_agent_cd as sub_agent_cd
      FROM MIRS_RESTORE.dbo.grp_forex_business f
               JOIN MIRS_RESTORE.dbo.tag_mst m on m.tag_no = f.forex_tag_no
            join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.forex_tag_no = f.forex_tag_no
      where f.pay_ex_rate is not null
        and f.counter_rate is not null -- Need to check with developer
      union all
      select NEWID() as ForexId,f.forex_tag_no                                  as forex_tag_no,
             f.from_crncy_cd                                 as CollectingCurrencyCode,
             f.to_crncy_cd                                   as PayingCurrencyCode,
             f.pay_ex_rate                                   as BaseCustomerRate,
             m.name                                          as RuleName,
             null                                            as PayingGroupCode,
             f.counter_rate                                  as CustomerRate,
             f.pay_ex_rate                                   as PartnerRate,
             case when f.sender_type = 'P' then 1 else 2 end as SenderType,
             f.pay_parent_agent_cd                           as PayingPartnerCode,
             1                                               as IsMultiCorridorMode,
             getdate()                                       as CreatedAt,
             getdate()                                       as UpdatedAt,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          as CreatedBy,
             'superadmin'                                    as CreatedByName,
             'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          as UpdatedBy,
             'superadmin'                                    as UpdatedByName,
             0                                               as IsDeleted,
             f.margin as margin,
             s.sub_agent_cd as sub_agent_cd
      from MIRS_RESTORE.dbo.sw_forex f
               join MIRS_RESTORE.dbo.tag_mst m on m.tag_no = f.forex_tag_no
            join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.forex_tag_no = f.forex_tag_no
      where f.pay_ex_rate is not null
        and f.counter_rate is not null -- Need to check with developer
     ) l;


INSERT INTO ConfigurationService_Migration.dbo.ForexRule (Id, CollectingCurrencyCode, PayingCurrencyCode,
                                                          BaseCustomerRate, RuleName, PayingGroupCode,
                                                          CustomerRate, PartnerRate, SenderType, PayingPartnerCode,
                                                          IsMultiCorridorMode, CreatedAt, UpdatedAt, CreatedBy,
                                                          CreatedByName, UpdatedBy, UpdatedByName, IsDeleted)
select ForexId as id, CollectingCurrencyCode,
                      case when PayingCurrencyCode = 'LTL' then 'EUR' else PayingCurrencyCode end as PayingCurrencyCode,
                      BaseCustomerRate,
                      RuleName,
                      PayingGroupCode,
                      CustomerRate,
                      PartnerRate,
                      SenderType,
                      PayingPartnerCode,
                      IsMultiCorridorMode,
                      CreatedAt,
                      UpdatedAt,
                      CreatedBy,
                      CreatedByName,
                      UpdatedBy,
                      UpdatedByName,
                      IsDeleted
      from ConfigurationService_Migration.dbo.ForexRuleMigration;



----------- ################ ForexRule Migration   ################ -------------


----------- ################ ForexValidation Migration   ################ -------------
INSERT INTO ConfigurationService_Migration.dbo.ForexValidation
(
        Id,
       PayingCurrencyCode,
       CollectingCurrencyCode,
       BaseValue,
       LowerPercentage,
       UpperPercentage,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
)
select NEWID() AS Id,
       c.BaseCurrencyCode AS PayingCurrencyCode,
       f.coll_crncy_cd  AS CollectingCurrencyCode,
       f.base_value AS BaseValue,
       f.lower_base_percentage AS LowerPercentage,
       f.upper_base_percentage AS UpperPercentage,
       f.created_on AS CreatedAt,
       ISNULL(f.modified_on, f.created_on) as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
       'superadmin'                           as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
       'superadmin'                           as UpdatedByName,
       0                                      as IsDeleted
from MIRS_RESTORE.dbo.forex_rate_setup f
join ConfigurationService_Migration.dbo.Country c on (case when c.Code = 'UK' then 'GB' else c.Code end) = case when f.paying_cntry_cd= 'UK' then 'GB' else f.paying_cntry_cd end;

----------- ################ ForexValidation Migration   ################ -------------


----------- ################ PayingCountryForexRule Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingCountryForexRule
(
    Id,
       ForexRuleId,
       PayingCountryCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
    )
select NEWID()                                                                                       AS Id,
       f.Id                                                                                          as ForexRuleId,
       case
           when left(f.PayingPartnerCode, 2) = 'UK' then 'GB'
           else left(f.PayingPartnerCode, 2) end                                                     as PayingCountryCode,
       f.CreatedAt                                                                                   as CreatedAt,
       f.UpdatedAt                                                                                   as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                                        AS CreatedBy,
       'superadmin'                                                                                  AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                                                        AS UpdatedBy,
       'superadmin'                                                                                  AS UpdatedByName,
       0                                                                                             as IsDeleted
from ConfigurationService_Migration.dbo.ForexRule f
where IsMultiCorridorMode = 1;

----------- ################ PayingCountryForexRule Migration   ################ -------------


----------- ################ CollectingPartnerBranchForexRule Migration   ################ -------------

DROP  TABLE if exists #FOREX_TAG_NO

select forex_tag_no,RuleName,count(1) CNT
INTO #FOREX_TAG_NO
from ConfigurationService_Migration.dbo.ForexRuleMigration
group by forex_tag_no,RuleName


INSERT INTO ConfigurationService_Migration.dbo.CollectingPartnerBranchForexRule
(Id,
 ForexRuleId,
 PartnerBranchCode,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted
)
SELECT
     NEWID() as Id,
     fr.Id as ForexRuleId,
     a.sub_agent_cd as PartnerBranchCode,
     a.created_on as CreatedAt,
     a.modified_on as UpdatedAt,
     'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
     'superadmin'                               AS CreatedByName,
     'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
     'superadmin'                               AS UpdatedByName,
     case when a.del_flag = 'N' then 0 else 1 end as IsDeleted
FROM
    MIRS_RESTORE.dbo.sub_agent_tag_dtl a
join #FOREX_TAG_NO f on f.forex_tag_no = a.forex_tag_no
join ConfigurationService_Migration.dbo.ForexRule fr on fr.RuleName = f.RuleName

----------- ################ CollectingPartnerBranchForexRule Migration   ################ -------------

----------- ################ CollectingPartnerBranchForexRuleDetail Migration   ################ -------------

insert into ConfigurationService_Migration.dbo.CollectingPartnerBranchForexRuleDetail
    (Id,
       ForexRuleId,
       PartnerBranchCode,
       BaseCustomerCollectingRate,
       AgentMargin,
       CustomerRate,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted)

SELECT newid() as Id,
       ForexId as ForexRuleId,
       f.sub_agent_cd as PartnerBranchCode,
       f.BaseCustomerRate as BaseCustomerCollectingRate,
       isnull(f.margin,0.00) as AgentMargin,
       CustomerRate,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
FROM
    ConfigurationService_Migration.dbo.ForexRuleMigration f

----------- ################ CollectingPartnerBranchForexRuleDetail Migration   ################ -------------




----------- ################ PartnerCountry Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerCountry
(Id,
 PartnerCode,
 CountryCode,
 CurrencyType,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)
select
       newid() as Id,
       p.parent_agent_cd as PartnerCode,
       case when p.cntry_cd = 'UK' then 'GB' else p.cntry_cd end  as CountryCode,
       case when remit_proc_cd = 'C' then 1
           when remit_proc_cd = 'P' then 2
           when remit_proc_cd = 'R' then 3 end as CurrencyType,
       pc.created_on as  CreatedAt,
       isnull(pc.modified_on,pc.created_on) UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
       'superadmin'                               AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
       'superadmin'                               AS UpdatedByName
from MIRS_RESTORE.dbo.parent_agent_remit_proc_crncy pc
inner join MIRS_RESTORE.dbo.parent_agent p on pc.parent_agent_cd = p.parent_agent_cd
union all
select
       newid() as Id,
       p.parent_agent_cd as PartnerCode,
       case when p.cntry_cd = 'UK' then 'GB' else p.cntry_cd end as CountryCode,
       case when remit_proc_cd = 'R' then 4 end as CurrencyType,
       pc.created_on as  CreatedAt,
       isnull(pc.modified_on,pc.created_on) UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS CreatedBy,
       'superadmin'                               AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'     AS UpdatedBy,
       'superadmin'                               AS UpdatedByName
from MIRS_RESTORE.dbo.parent_agent_remit_proc_crncy pc
inner join MIRS_RESTORE.dbo.parent_agent p on pc.parent_agent_cd = p.parent_agent_cd
where remit_proc_cd = 'R';

----------- ################ PartnerCountry Migration   ################ -------------



----------- ################ PartnerCurrency Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerCurrency
(Id,
 PartnerCountryId,
 CurrencyCode,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)
select NEWID()                                as Id,
       p.Id                                   as PartnerCountryId,
       c.BaseCurrencyCode                     as CurrencyCode,
       p.CreatedAt                            as CreatedAt,
       p.UpdatedAt                            as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
       'superadmin'                           AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
       'superadmin'                           AS UpdatedByName
from ConfigurationService_Migration.dbo.PartnerCountry p
inner join ConfigurationService_Migration.dbo.Country c on c.Code = p.CountryCode;

----------- ################ PartnerCurrency Migration   ################ -------------


----------- ################ PayingPartnerForex Migration   ################ -------------

insert into ConfigurationService_Migration.dbo.PayingPartnerForex
    (
        Id,
       PayingPartnerCode,
       PayingCurrencyCode,
       CollectingCurrencyCode,
       ExchangeRate,
       CollectingPartnerCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
        )
select newid()                                as Id,
       f.parent_agent_cd                      as PayingPartnerCode,
       f.from_crncy_cd                        as PayingCurrencyCode,
       f.to_crncy_cd                          as CollectingCurrencyCode,
       f.ex_rate                              as ExchangeRate,
       f.collecting_agent_cd                  as CollectingPartnerCode,
       f.created_on                           as CreatedAt,
       isnull(f.modified_on, f.created_on)    as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS CreatedBy,
       'superadmin'                           AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' AS UpdatedBy,
       'superadmin'                           AS UpdatedByName,
       0                                      as IsDeleted
from MIRS_RESTORE.dbo.forex_pay f;

----------- ################ PayingPartnerForex Migration   ################ -------------


----------- ################ PartnerBankInfo Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerBankInfo
(Id,
 PartnerCode,
 BankCode,
 AccountNumber,
 IsDeleted,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName)

select NEWID()                                      AS Id,
       b.parent_agent_cd                            as PartnerCode,
       b.bank_cd                                    as BankCode,
       b.ac_no_info                                 as AccountNumber,
       case when b.del_flag = 'Y' then 1 else 0 end as IsDeleted,
       b.created_on                                 as CreatedAt,
       isnull(b.modified_on, b.created_on)          as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'       AS CreatedBy,
       'superadmin'                                 AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'       AS UpdatedBy,
       'superadmin'                                 AS UpdatedByName
from MIRS_RESTORE.dbo.agent_bank_map_acinfo b;

----------- ################ PartnerBankInfo Migration   ################ -------------


----------- ################ PartnerBankRoute Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerBankRoute
(Id,
 CollectingPartnerCode,
 BankCode,
 ReceiverType,
 PayingPartnerCode,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted)
select NEWID()                                           AS Id,
       b.collecting_agent_cd                             as CollectingPartnerCode,
       b.bank_cd                                         as BankCode,
       case when b.receiver_type = 'P' then 1 else 2 end as ReceiverType,
       b.parent_agent_cd                                 as PayingPartnerCode,
       b.created_on                                      as CreatedAt,
       b.created_on                                      as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'            AS CreatedBy,
       'superadmin'                                      AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'            AS UpdatedBy,
       'superadmin'                                      AS UpdatedByName,
       0                                                 as IsDeleted
from MIRS_RESTORE.dbo.grp_bank_agent_mapping b;

----------- ################ PartnerBankRoute Migration   ################ -------------


----------- ################ PrefundLimitValidationRule Migration   ################ -------------


DROP TABLE  IF EXISTS ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration1;
DROP TABLE  IF EXISTS ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration;


select
       t.tag_no,
       newid() as  Id,
       t.name as Name,
       case
           when l.prefund_type = 'P' then 1
           when l.prefund_type = 'C' then 2 end as Type,
       l.limit as Limit,
       case when l.del_flag = 'Y' then 1 else 0 end as IsDeleted,
       l.created_on                             as CreatedAt,
       isnull(l.modified_on, l.created_on)      as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS CreatedBy,
       'superadmin'                             AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS UpdatedBy,
       'superadmin'                             AS UpdatedByName
into ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration1
from MIRS_RESTORE.dbo.agent_credit_limit l
join MIRS_RESTORE.dbo.tag_mst t on t.tag_no = l.tag_no
order by t.name;

select p.prefund_limit_group_id,
       NEWID()                                  AS Id,
       p.prefund_limit_group_name               as Name,
       case
           when p.prefund_type = 'P' then 1
           when p.prefund_type = 'C' then 2 end as Type,
       p.limit                                  as Limit,
       case when p.del_flag = 'Y' then 1 else 0 end as IsDeleted,
       p.created_on                             as CreatedAt,
       isnull(p.modified_on, p.created_on)      as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS CreatedBy,
       'superadmin'                             AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS UpdatedBy,
       'superadmin'                             AS UpdatedByName
into ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration
FROM MIRS_RESTORE.dbo.prefund_group_limit p;

INSERT INTO ConfigurationService_Migration.dbo.PrefundLimitValidationRule
( Id,
       Name,
       Type,
       Limit,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
    )
select
    Id,
       Name,
       Type,
       Limit,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
from ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration1

UNION ALL

select Id,
       Name,
       Type,
       Limit,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
FROM ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration p;

----------- ################ PrefundLimitValidationRule Migration   ################ -------------



----------- ################ Setting Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.Setting
(
       [Key],
       Value,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       AdditionalInfo,
       IsDeleted
)
SELECT top 1
    'GlobalPrefundCreditLimitPerDay' AS [Key],
      c.limit AS Value,
       c.created_on                             as CreatedAt,
       isnull(c.approve_on, c.created_on)      as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS CreatedBy,
       'superadmin'                             AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'   AS UpdatedBy,
       'superadmin'                             AS UpdatedByName,
       (select cast(cast(c.limit as decimal(18,0)) as varchar(50)) as Value,c.created_on as CreatedAt,'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,'superadmin' as CreatedByName,1 as Status FOR JSON PATH, WITHOUT_ARRAY_WRAPPER) as  AdditionalInfo,
       1 as IsDeleted
FROM MIRS_RESTORE.dbo.credit_limit_per_day c
WHERE is_active = 1
order by approve_on desc;

----------- ################ Setting Migration   ################ -------------


----------- ################ UserPrefundLimitValidationRule Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.UserPrefundLimitValidationRule
(
 Id,
       UserId,
       PrefundLimitValidationRuleId,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
)
select newid()                                       as Id,
       u.Id                                          as UserId,
       p.Id                                          as PrefundLimitValidationRuleId,
       pl.effective_date                             as CreatedAt,
       isnull(pl.modified_on, pl.effective_date)     as UpdatedAt,
       cr.Id                                         as CreatedBy,
       cr.Name                                       as CreatedByName,
       up.Id                                         as UpdatedBy,
       up.Name                                       as UpdatedByName,
       case when pl.del_flag = 'Y' then 1 else 0 end as IsDeleted
from ConfigurationService_Migration.dbo.PrefundLimitValidationRule p
         join MIRS_RESTORE.dbo.prefund_group_limit g on g.prefund_limit_group_name = p.Name
         join MIRS_RESTORE.dbo.prefund_limit pl on pl.prefund_limit_group_id = g.prefund_limit_group_id
         join ConfigurationService_Migration.dbo.[User] u on u.UserName = pl.remit_user_cd
         left join ConfigurationService_Migration.dbo.[User] cr on cr.UserName = pl.created_by
         left join ConfigurationService_Migration.dbo.[User] up on up.UserName = pl.modified_by;

----------- ################ UserPrefundLimitValidationRule Migration   ################ -------------




----------- ################ PartnerBranchCreditLimitValidationRule Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PartnerBranchCreditLimitValidationRule
(
 Id,
       PartnerBranchCode,
       Limit,
       PrefundLimitValidationRuleId,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
)
SELECT NEWID()          AS Id,
       t.sub_agent_cd   as PartnerBranchCode,
       m1.Limit         as limit,
       m1.Id            as PrefundLimitValidationRuleId,
       m1.CreatedAt     as CreatedAt,
       m1.UpdatedAt     as UpdatedAt,
       m1.CreatedBy     AS CreatedBy,
       m1.CreatedByName AS CreatedByName,
       m1.UpdatedBy     AS UpdatedBy,
       m1.UpdatedByName AS UpdatedByName,
       m1.IsDeleted     as IsDeleted
FROM ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration1 m1
         join MIRS_RESTORE.dbo.sub_agent_tag_dtl t on t.sub_agent_tag_no = m1.tag_no
order by t.sub_agent_cd;
----------- ################ PartnerBranchCreditLimitValidationRule Migration   ################ -------------



----------- ################ MobileTopupConfiguration Migration   ################ -------------

IF OBJECT_ID('tempdb..#CurrencyCode') is not null
    DROP TABLE #CurrencyCode;

select *
into #CurrencyCode
from (
select 'BD' as cntry_cd, 'BANGLADESH' as cntry_name,'BDT' as currency_code union all
select 'CN' as cntry_cd, 'CHINA' as cntry_name,'CNY' as currency_code union all
select 'ID' as cntry_cd, 'INDONESIA' as cntry_name,'IDR' as currency_code union all
select 'IN' as cntry_cd, 'INDIA' as cntry_name,'INR' as currency_code union all
select 'LK' as cntry_cd, 'SRI LANKA' as cntry_name,'LKR' as currency_code union all
select 'MM' as cntry_cd, 'MYANMAR' as cntry_name,'MMK' as currency_code union all
select 'NP' as cntry_cd, 'NEPAL' as cntry_name,'NPR' as currency_code union all
select 'PH' as cntry_cd, 'PHILIPPINES' as cntry_name,'PHP' as currency_code union all
select 'PK' as cntry_cd, 'PAKISTAN' as cntry_name,'PKR' as currency_code union all
select 'SG' as cntry_cd, 'SINGAPORE' as cntry_name,'SGD' as currency_code union all
select 'VN' as cntry_cd, 'VIETNAM' as cntry_name,'VND' as currency_code )l

INSERT INTO ConfigurationService_Migration.dbo.MobileTopupConfiguration
    (Id,
       CountryCode,
       CurrencyCode,
       Amount,
       IsActive,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName
    )
select NEWID()                                                   AS Id,
       case when c.cntry_cd = 'GB' then 'UK' else c.cntry_cd end AS CountryCode,
       cc.currency_code                                          AS CurrencyCode,
       c.reload_amt                                              AS Amount,
       case when c.status = 'Y' then 1 else 0 end                AS IsActive,
       case when c.del_flag = 'Y' then 1 else 0 end              AS IsDeleted,
       c.created_on                                              AS CreatedAt,
       c.modified_on                                             AS UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                    AS CreatedBy,
       'superadmin'                                              AS CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                    AS UpdatedBy,
       'superadmin'                                              AS UpdatedByName
from MIRS_RESTORE.dbo.reload_configuration c
         Join #CurrencyCode cc on cc.cntry_name = c.cntry_name;

IF OBJECT_ID('tempdb..#CurrencyCode') is not null
    DROP TABLE #CurrencyCode;

----------- ################ MobileTopupConfiguration Migration   ################ -------------



----------- ################ ServiceChargeRule Migration   ################ -------------

create index ix_grp_charge_rule_tag_no
on MIRS_RESTORE.dbo.grp_charge_rule(tag_no)

create index ix_sw_charge_tag_no
on MIRS_RESTORE.dbo.sw_charge(tag_no)


DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.ServiceChargeRuleMigration;


select *
INTO ConfigurationService_Migration.dbo.ServiceChargeRuleMigration
from (
select r.PartnerBranchCode,
       newid()                                                                             as Id,
       concat(t.name, '(', r.grp_cd, ')')                                                  as RuleName,   -- Need to make unique
       1                                                                                   as SenderType, -- Person
       r.payment_mode_cd                                                                   as PayingModeCode,
       r.grp_cd                                                                            as PayingGroupCode,
       null                                                                                as PayingPartnerCode,
       r.coll_crncy_cd                                                                     as CollectionCurrencyCode,
       r.rule_effective_date                                                               as EffectiveDate,
       case when r.is_active = 'Y' then 1 else 0 end                                       as IsActive,
       r.created_on                                                                        as CreatedAt,
       isnull(r.modified_on, r.created_on)                                                 as UpdatedAt,
       cr.Id                                                                               as CreatedBy,
       cr.UserName                                                                         as CreatedByName,
       mo.Id                                                                               as UpdatedBy,
       mo.UserName                                                                         as UpdatedByName,
       case when r.del_flag = 'Y' then 1 else 0 end                                        as IsDeleted,
       case when r.CollectingCountryCode = 'UK' then 'GB' else r.CollectingCountryCode end as CollectingCountryCode,
       case when left(r.grp_cd, 2) = 'UK' then 'GB' else left(r.grp_cd, 2) end             as PayingCountryCode,
       r.UpperCollectionAmountLimit,
       r.NetworkChargeCurrencyCode,
       r.NetworkChargeType,
       r.NetworkServiceCharge,
       r.TotalChargeCurrencyCode,
       r.TotalChargeType,
       r.TotalCharge
from MIRS_RESTORE.dbo.tag_mst t
         OUTER APPLY (select *
                      from (SELECT row_number() over (partition by grp_cd,tag_no,sub_agent_cd order by gcr.created_on desc) as rnk,
                                   gcr.payment_mode_cd,
                                   gcr.grp_cd,
                                   gcr.coll_crncy_cd,
                                   gcr.rule_effective_date,
                                   gcr.is_active,
                                   gcr.created_on,
                                   gcr.modified_on,
                                   gcr.del_flag,
                                   gcr.created_by,
                                   gcr.modified_by,
                                   left(s.parent_agent_cd, 2)                                                               as CollectingCountryCode,
                                   s.sub_agent_cd,
                                   gcr.upper_coll_limit                                                                     as UpperCollectionAmountLimit,
                                   gcr.net_own_charge_crncy                                                                 as NetworkChargeCurrencyCode,
                                   case when gcr.net_own_charge_type = 'P' then 2 else 1 end                                as NetworkChargeType,
                                   gcr.net_own_charge                                                                       as NetworkServiceCharge,
                                   gcr.final_coll_charge_crncy_cd                                                           as TotalChargeCurrencyCode,
                                   case when gcr.final_coll_charge_type = 'P' then 2 else 1 end                             as TotalChargeType,
                                   gcr.final_charge                                                                         as TotalCharge,
                                    s.sub_agent_cd as PartnerBranchCode
                            FROM MIRS_RESTORE.dbo.grp_charge_rule gcr
                                     join MIRS_RESTORE.dbo.sub_agent_tag_dtl s
                                          on s.charge_rule_tag_no = gcr.tag_no
                            where gcr.tag_no = t.tag_no) rr
                      where rr.rnk = 1) r
         left join ConfigurationService_Migration.dbo.[User] cr on cr.UserName = r.created_by
         left join ConfigurationService_Migration.dbo.[User] mo on mo.UserName = r.modified_by
WHERE r.payment_mode_cd IS NOT NULL
  and r.payment_mode_cd <> ''
UNION all

select sa.sub_agent_cd as PartnerBranchCode,
        newid()                                                     as Id,
       concat(t.name, '(', sc.pay_parent_agent_cd, ')')            as RuleName,   -- Need to make unique
       1                                                           as SenderType, -- Person
       sc.payment_mode_cd                                          as PayingModeCode,
       NULL                                                        as PayingGroupCode,
       sc.pay_parent_agent_cd                                      as PayingPartnerCode,
       sc.coll_crncy_cd                                            as CollectionCurrencyCode,
       sc.rule_effective_date                                      as EffectiveDate,
       case when sc.is_active = 'Y' then 1 else 0 end              as IsActive,
       sc.rule_effective_date                                      as CreatedAt,
       getdate()                                                   as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                      as CreatedBy,
       'superadmin'                                                as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                      as UpdatedBy,
       'superadmin'                                                as UpdatedByName,
       case when sc.del_flag = 'Y' then 1 else 0 end               as IsDeleted,
       case
           when left(sa.parent_agent_cd, 2) = 'UK' then 'GB'
           else left(sa.parent_agent_cd, 2) end                    as CollectingCountryCode,
       case when sc.cntry_cd = 'UK' then 'GB' else sc.cntry_cd end as PayingCountryCode,
       sc.upper_coll_limit                                         as UpperCollectionAmountLimit,
       sc.net_own_charge_crncy                                     as NetworkChargeCurrencyCode,
       case when sc.net_own_charge_type = 'P' then 2 else 1 end    as NetworkChargeType,
       sc.net_own_charge                                           as NetworkServiceCharge,
       sc.final_coll_charge_crncy_cd                               as TotalChargeCurrencyCode,
       case when sc.final_coll_charge_type = 'P' then 2 else 1 end as TotalChargeType,
       sc.final_charge                                             as TotalCharge
from MIRS_RESTORE.dbo.tag_mst t
         left join MIRS_RESTORE.dbo.sw_charge sc on sc.tag_no = t.tag_no
         left join MIRS_RESTORE.dbo.sub_agent_tag_dtl sa on sa.charge_rule_tag_no = sc.tag_no
WHERE sc.payment_mode_cd IS NOT NULL
  and sc.payment_mode_cd <> ''
union all

select r.PartnerBranchCode,
        newid()                                                                             as Id,
       concat(t.name, '(', r.grp_cd, ')')                                                  as RuleName,   -- Need to make unique
       2                                                                                   as SenderType, -- Business
       r.payment_mode_cd                                                                   as PayingModeCode,
       r.grp_cd                                                                            as PayingGroupCode,
       null                                                                                as PayingPartnerCode,
       r.coll_crncy_cd                                                                     as CollectionCurrencyCode,
       r.rule_effective_date                                                               as EffectiveDate,
       case when r.is_active = 'Y' then 1 else 0 end                                       as IsActive,
       r.created_on                                                                        as CreatedAt,
       isnull(r.modified_on, r.created_on)                                                 as UpdatedAt,
       cr.Id                                                                               as CreatedBy,
       cr.UserName                                                                         as CreatedByName,
       mo.Id                                                                               as UpdatedBy,
       mo.UserName                                                                         as UpdatedByName,
       case when r.del_flag = 'Y' then 1 else 0 end                                        as IsDeleted,
       case when r.CollectingCountryCode = 'UK' then 'GB' else r.CollectingCountryCode end as CollectingCountryCode,
       case when left(r.grp_cd, 2) = 'UK' then 'GB' else left(r.grp_cd, 2) end             as PayingCountryCode,
       r.UpperCollectionAmountLimit,
       r.NetworkChargeCurrencyCode,
       r.NetworkChargeType,
       r.NetworkServiceCharge,
       r.TotalChargeCurrencyCode,
       r.TotalChargeType,
       r.TotalCharge
from MIRS_RESTORE.dbo.tag_mst t
         OUTER APPLY (select *
                      from (SELECT row_number() over (partition by grp_cd,tag_no,sub_agent_cd order by gcrb.created_on desc) as rnk,
                                   gcrb.grp_cd,
                                   gcrb.payment_mode_cd,
                                   gcrb.coll_crncy_cd,
                                   gcrb.rule_effective_date,
                                   gcrb.is_active,
                                   gcrb.created_on,
                                   gcrb.modified_on,
                                   gcrb.del_flag,
                                   gcrb.created_by,
                                   gcrb.modified_by,
                                   left(s.parent_agent_cd, 2)                                                                as CollectingCountryCode,
                                   s.sub_agent_cd,
                                   gcrb.upper_coll_limit                                                                     as UpperCollectionAmountLimit,
                                   gcrb.net_own_charge_crncy                                                                 as NetworkChargeCurrencyCode,
                                   case when gcrb.net_own_charge_type = 'P' then 2 else 1 end                                as NetworkChargeType,
                                   gcrb.net_own_charge                                                                       as NetworkServiceCharge,
                                   gcrb.final_coll_charge_crncy_cd                                                           as TotalChargeCurrencyCode,
                                   case when gcrb.final_coll_charge_type = 'P' then 2 else 1 end                             as TotalChargeType,
                                   gcrb.final_charge                                                                         as TotalCharge,
                                   s.sub_agent_cd as PartnerBranchCode
                            FROM MIRS_RESTORE.dbo.grp_charge_rule_business gcrb
                                     join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.charge_rule_tag_no = gcrb.tag_no
                            where gcrb.tag_no = t.tag_no) rr
                      where rr.rnk = 1) r
         left join ConfigurationService_Migration.dbo.[User] cr on cr.UserName = r.created_by
         left join ConfigurationService_Migration.dbo.[User] mo on mo.UserName = r.modified_by
WHERE r.payment_mode_cd IS NOT NULL
  and r.payment_mode_cd <> ''
union all

select sa.sub_agent_cd as PartnerBranchCode,
    newid()                                                     as Id,
       concat(t.name, '(', sc.pay_parent_agent_cd, ')')            as RuleName,          -- Need to make unique
       2                                                           as SenderType,        -- Business
       sc.payment_mode_cd                                          as PayingModeCode,
       NULL                                                        as PayingGroupCode,
       sc.pay_parent_agent_cd                                      as PayingPartnerCode,
       sc.coll_crncy_cd                                            as CollectionCurrencyCode,
       sc.rule_effective_date                                      as EffectiveDate,
       case when sc.is_active = 'Y' then 1 else 0 end              as IsActive,
       sc.rule_effective_date                                      as CreatedAt,
       getdate()                                                   as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                      as CreatedBy,
       'superadmin'                                                as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'                      as UpdatedBy,
       'superadmin'                                                as UpdatedByName,
       case when sc.del_flag = 'Y' then 1 else 0 end               as IsDeleted,
       case
           when left(sa.parent_agent_cd, 2) = 'UK' then 'GB'
           else left(sa.parent_agent_cd, 2) end                    as CollectingCountryCode,
       null                                                        as PayingCountryCode, -- Need to check with developer
       sc.upper_coll_limit                                         as UpperCollectionAmountLimit,
       sc.net_own_charge_crncy                                     as NetworkChargeCurrencyCode,
       case when sc.net_own_charge_type = 'P' then 2 else 1 end    as NetworkChargeType,
       sc.net_own_charge                                           as NetworkServiceCharge,
       sc.final_coll_charge_crncy_cd                               as TotalChargeCurrencyCode,
       case when sc.final_coll_charge_type = 'P' then 2 else 1 end as TotalChargeType,
       sc.final_charge                                             as TotalCharge
from MIRS_RESTORE.dbo.tag_mst t
         left join MIRS_RESTORE.dbo.sw_charge_group sc on sc.tag_no = t.tag_no
         left join MIRS_RESTORE.dbo.sub_agent_tag_dtl sa on sa.charge_rule_tag_no = sc.tag_no
WHERE sc.payment_mode_cd IS NOT NULL
  and sc.payment_mode_cd <> '')l


INSERT INTO ConfigurationService_Migration.dbo.ServiceChargeRule
(Id,
 RuleName,
 SenderType,
 PayingModeCode,
 PayingGroupCode,
 PayingPartnerCode,
 CollectionCurrencyCode,
 EffectiveDate,
 IsActive,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted,
 CollectingCountryCode,
 PayingCountryCode)
select Id,
       RuleName,
       SenderType,
       PayingModeCode,
       PayingGroupCode,
       PayingPartnerCode,
       CollectionCurrencyCode,
       EffectiveDate,
       IsActive,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted,
       CollectingCountryCode,
       PayingCountryCode
from
    ConfigurationService_Migration.dbo.ServiceChargeRuleMigration;

----------- ################ ServiceChargeRule Migration   ################ -------------



----------- ################ ServiceChargeRulePayingCountry Migration   ################ -------------
insert into ConfigurationService_Migration.dbo.ServiceChargeRulePayingCountry
(Id,
 ServiceChargeRuleId,
 PayingCountryCode,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted)
select NEWID() as Id,
       Id      as ServiceChargeRuleId,
       PayingCountryCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
from ConfigurationService_Migration.dbo.ServiceChargeRuleMigration
where PayingCountryCode is not null  -- Need to check with developer

----------- ################ ServiceChargeRulePayingCountry Migration   ################ -------------


----------- ################ ServiceChargeRuleDetail Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.ServiceChargeRuleDetail
    (Id,
       ServiceChargeRuleId,
       UpperCollectionAmountLimit,
       NetworkChargeCurrencyCode,
       NetworkChargeType,
       NetworkServiceCharge,
       TotalChargeCurrencyCode,
       TotalChargeType,
       TotalCharge,
       IsDeleted)
select
       Id,
       Id as ServiceChargeRuleId,
       UpperCollectionAmountLimit,
       NetworkChargeCurrencyCode,
       NetworkChargeType,
       NetworkServiceCharge,
       TotalChargeCurrencyCode,
       TotalChargeType,
       TotalCharge,
       IsDeleted
from
    ConfigurationService_Migration.dbo.ServiceChargeRuleMigration;

----------- ################ ServiceChargeRuleDetail Migration   ################ -------------

----------- ################ CollectingPartnerBranchServiceChargeRule Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.CollectingPartnerBranchServiceChargeRule
    (Id,
       ServiceChargeRuleId,
       PartnerBranchCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted)
SELECT
       newid() as Id,
       Id as ServiceChargeRuleId,
       PartnerBranchCode,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted
FROM
    ConfigurationService_Migration.dbo.ServiceChargeRuleMigration
where PartnerBranchCode is not null
----------- ################ CollectingPartnerBranchServiceChargeRule Migration   ################ -------------

----------- ################ CollectingPartnerBranchServiceChargeRuleDetail Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.CollectingPartnerBranchServiceChargeRuleDetail
    ( Id,
       ServiceChargeRuleDetailId,
       PartnerBranchCode,
       Charge,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted)
select NEWID() as Id,
       sd.Id as ServiceChargeRuleDetailId,
       sc.PartnerBranchCode,
       sd.TotalCharge as  Charge,
       sc.CreatedAt,
       sc.UpdatedAt,
       sc.CreatedBy,
       sc.CreatedByName,
       sc.UpdatedBy,
       sc.UpdatedByName,
       sc.IsDeleted
from ConfigurationService_Migration.dbo.ServiceChargeRuleDetail sd
join ConfigurationService_Migration.dbo.ServiceChargeRuleMigration sc on sc.id = sd.ServiceChargeRuleId;

----------- ################ CollectingPartnerBranchServiceChargeRuleDetail Migration   ################ -------------


----------- ################ PayingPartnerRoute Migration   ################ -------------

insert into ConfigurationService_Migration.dbo.PayingPartnerRoute
(Id,
 CollectingPartnerCode,
 PayingPartnerCode,
 PayingCountryCode,
 PayingGroupCode,
 PayingModeCode,
 IsDeleted,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 Updatedby,
 UpdatedByName)
select newid() as Id,
       CollectingPartnerCode,
       PayingPartnerCode,
       PayingCountryCode,
       PayingGroupCode,
       PayingModeCode,
       IsDeleted,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       Updatedby,
       UpdatedByName
from (select p.coll_parent_agent_cd                                                  as CollectingPartnerCode,
             p.pay_parent_agent_cd                                                   as PayingPartnerCode,
             case when p.paying_cntry_cd = 'UK' then 'GB' else p.paying_cntry_cd end as PayingCountryCode,
             p.grp_cd                                                                as PayingGroupCode,
             p.payment_mode_cd                                                       as PayingModeCode,
             case when p.del_flag = 'Y' then 1 else 0 end                            as IsDeleted,
             p.created_on                                                            as CreatedAt,
             coalesce(p.modified_on, getdate())                                      as UpdatedAt,
              'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
       'superadmin' as CreatedByName,
         'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
         'superadmin' as UpdatedByName
      from MIRS_RESTORE.dbo.paying_agent_route p

      union all

      select s.coll_parent_agent_cd                                    as CollectingPartnerCode,
             s.pay_parent_agent_cd                                     as PayingPartnerCode,
             case when s.cntry_cd = 'UK' then 'GB' else s.cntry_cd end as PayingCountryCode,
             cast('' as varchar(50))                                   as PayingGroupCode,
             s.payment_mode_cd                                         as PayingModeCode,
             0                                                         as IsDeleted,
             getdate()                                                 as CreatedAt,
             getdate()                                                 as UpdatedAt,
              'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
       'superadmin' as CreatedByName,
         'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
         'superadmin' as UpdatedByName
      from MIRS_RESTORE.dbo.sw_agent_route_mapping s) as Combined;

----------- ################ PayingPartnerRoute Migration   ################ -------------


----------- ################ PayingPartnerCommissionRule Migration   ################ -------------

insert into ConfigurationService_Migration.dbo.PayingPartnerCommissionRule(Id, PayingPartnerCode, BankCode, IsDeleted,
                                                                        CommissionRuleId, ReceiverType, CreatedAt,
                                                                        UpdatedAt, CreatedBy, CreatedByName, UpdatedBy,
                                                                        UpdatedByName)


Select newid()                                         as Id,
       parent_agent_cd                                 as PayingPartnerCode,
       bank_cd                                         as BankCode,
       case when del_flag = 'Y' then 1 else 0 end      as IsDeleted,
       cm.Id                                           AS commission_rule_id,
       case when receiver_type = 'P' then 1 else 2 end as ReceiverType,
       created_on                                      as CreatedAt,
       coalesce(modified_on, created_on)               as UpdatedAt,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          as CreatedBy,
       'superadmin'                                    as CreatedByName,
       'DA64C48D-5E9A-43AB-B80C-0F86152E70DC'          as UpdatedBy,
       'superadmin'                                    as UpdatedByName
from MIRS_RESTORE.dbo.agent_bank_map mm
         inner join ConfigurationService_Migration.dbo.CommissionRule_Migration CM on cm.tag_no = mm.tag_no

 -- insert query remaining for this table
select sa.sub_agent_cd "PartnerBranchCode",
       '' as           Type,
       0.0000 as Amount,
       JSON_QUERY(
               (SELECT a.created_on           AS startDate,
                       a.ad_hoc_validity_date AS EndDate
                FOR JSON PATH, WITHOUT_ARRAY_WRAPPER,INCLUDE_NULL_VALUES)
       ),
    a.created_on as CreatedAt,
    coalesce(a.modified_on,a.created_on) as UpdatedAt,
    'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as CreatedBy,
       'superadmin' as CreatedByName,
         'DA64C48D-5E9A-43AB-B80C-0F86152E70DC' as UpdatedBy,
         'superadmin' as UpdatedByName,
    0 as IsDeleted
from MIRS_RESTORE.dbo.agent_settlement a
         inner join MIRS_RESTORE..sub_agent sa on a.parent_agent_cd = sa.parent_agent_cd

----------- ################ PayingPartnerCommissionRule Migration   ################ -------------


----------- ################ PayingPartnerBranchCommissionRule Migration   ################ -------------

INSERT INTO ConfigurationService_Migration.dbo.PayingPartnerBranchCommissionRule
(Id,
 CommissionRuleId,
 PayingPartnerBranchCode,
 CreatedAt,
 UpdatedAt,
 CreatedBy,
 CreatedByName,
 UpdatedBy,
 UpdatedByName,
 IsDeleted)
select newid()                                      as Id,
       c.Id                                         as CommissionRuleId,
       s.sub_agent_cd                               as PayingPartnerBranchCode, -- Need to check with developer (PartnerBranch migration only parent_agent_cd = 'MY0001')
       s.created_on                                 as CreatedAt,
       isnull(s.modified_on, s.created_on)          as UpdatedAt,
       cre.id                                       as CreatedBy,
       cre.UserName                                 as CreatedByName,
       mod.Id                                       as UpdatedBy,
       mod.UserName                                 as UpdatedByName,
       case when s.del_flag = 'Y' then 1 else 0 end as IsDeleted
from ConfigurationService_Migration.dbo.CommissionRule_Migration c
         join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.commission_tag_no = c.tag_no
         left join ConfigurationService_Migration.dbo.[User] cre on cre.UserName = s.created_by
         left join ConfigurationService_Migration.dbo.[User] mod on mod.UserName = s.modified_by
where s.sub_agent_cd not in
('MM0300062'
,'BD00129614'
,'BD00129613'
,'BD00129611'
,'BD00129612'
,'BD0200769'
,'BD0200865'
,'BD0013260001'); -- (PartnerBranch migration only parent_agent_cd = 'MY0001')

----------- ################ PayingPartnerBranchCommissionRule Migration   ################ -------------


----------- ################ PartnerBranchCreditLimit Migration   ################ -------------

DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.PartnerBranchCreditLimit_Migration;

select row_number() over (partition by parent_agent_cd order by ad_hoc_validity_date desc) rnk ,
parent_agent_cd,
adhoc_limit_balance,
created_on,
modified_on,
ad_hoc_validity_date,
created_by,
modified_by
into ConfigurationService_Migration.dbo.PartnerBranchCreditLimit_Migration
from MIRS_RESTORE.dbo.agent_settlement
where adhoc_limit_balance >0



INSERT INTO ConfigurationService_Migration.dbo.PartnerBranchCreditLimit
    (Id,
       PartnerBranchCode,
       Type,
       Amount,
       ValidityPeriod,
       CreatedAt,
       UpdatedAt,
       CreatedBy,
       CreatedByName,
       UpdatedBy,
       UpdatedByName,
       IsDeleted)

  select
       NEWID() as Id,
      pb.Code as  PartnerBranchCode,
       3 as Type,
       p.adhoc_limit_balance as Amount,
       JSON_QUERY((SELECT cast(p.created_on as date) as StartDate,
                          cast(p.ad_hoc_validity_date as date) as EndDate
                                      FOR JSON PATH, WITHOUT_ARRAY_WRAPPER, INCLUDE_NULL_VALUES))  as ValidityPeriod,
       p.created_on as CreatedAt,
       isnull(p.modified_on,p.created_on) as  UpdatedAt,
       cre.Id as  CreatedBy,
       cre.UserName as CreatedByName,
       mod.id as  UpdatedBy,
       mod.UserName as UpdatedByName,
       IsDeleted
from
     ConfigurationService_Migration.dbo.PartnerBranchCreditLimit_Migration p
JOIN ConfigurationService_Migration.dbo.PartnerBranch pb on p.parent_agent_cd = pb.PartnerCode
left join AuthService_Migration.dbo.[User] cre on cre.UserName = p.created_by
left join AuthService_Migration.dbo.[User] mod on mod.UserName = p.modified_by
WHERE rnk = 1
union all
select
       NEWID() as Id,
      s.sub_agent_cd as  PartnerBranchCode,
       2 as Type,
       p.limit as Amount,
       '{"StartDate":null,"EndDate":null}' as ValidityPeriod,
       p.created_on as CreatedAt,
       isnull(p.modified_on,p.created_on) as  UpdatedAt,
       cre.Id as  CreatedBy,
       cre.UserName as CreatedByName,
       mod.id as  UpdatedBy,
       mod.UserName as UpdatedByName,
       case when p.del_flag = 'Y'  then 1 else 0 end as  IsDeleted
from
     MIRS_RESTORE.dbo.agent_credit_limit p
Join MIRS_RESTORE.dbo.sub_agent_tag_dtl s on s.sub_agent_tag_no = p.tag_no
left join AuthService_Migration.dbo.[User] cre on cre.UserName = p.created_by
left join AuthService_Migration.dbo.[User] mod on mod.UserName = p.modified_by
where p.[prefund_type] = 'C';






----------- ################ PartnerBranchCreditLimit Migration   ################ -------------






----- Delete tables after Mimgration

DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.CommissionRule_Migration;
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.ForexRuleMigration;
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration1;
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.PrefundLimitValidationRuleMigration;
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.ConfigurationService_Migration..PayingPartnerRoute
DROP TABLE IF EXISTS ConfigurationService_Migration.dbo.ConfigurationService_Migration..PayingPartnerCommissionRule
