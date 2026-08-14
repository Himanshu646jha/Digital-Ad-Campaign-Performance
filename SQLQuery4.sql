/*SELECT [Ad_ID]
      ,[Campaign_Name]
      ,[Clicks]
      ,[Impressions]
      ,[Cost]
      ,[Leads]
      ,[Conversions]
      ,[Conversion_Rate]
      ,[Sale_Amount]
      ,[Ad_Date]
      ,[Location]
      ,[Device]
      ,[Keyword]
  FROM [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]*/

  UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Conversion_Rate] = 0
where [Conversion_Rate] is NULL;

delete from [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
where [Ad_ID] is null;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Cost] = 0
where [Cost] is NULL;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Clicks] = 0
where [Clicks] is NULL;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Sale_Amount] = 0
where [Sale_Amount] is NULL;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Impressions] = 0
where [Impressions] is NULL;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Leads] = 0
where [Leads] is NULL;

UPDATE [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Set [Conversions] = 0
where [Conversions] is NULL;

update [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
set [Location] = UPPER([Location]);

update [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
set [Campaign_Name] = REPLACE([Campaign_Name], 'DataAnalyticsCourse' , 'Data Analytics course')

update [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
set [Campaign_Name] = REPLACE([Campaign_Name], 'Data Anlytics Corse' , 'Data Analytics course')

update [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
set [Campaign_Name] = REPLACE([Campaign_Name], 'Data Analytics course' , 'Data Analytics Course')

update [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
set [Device] = UPPER([Device]);

alter table [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]
Alter column [Ad_Date] DATE;

select*
from [GA PF].[dbo].[GoogleAds_DataAnalytics_Sales_Uncleaned]