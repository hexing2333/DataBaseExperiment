SELECT S_SECTOR_ID,N_SECTOR_ID
FROM [tb].[dbo].[tbsecadjcell]
EXCEPT
SELECT S_SECTOR_ID,N_SECTOR_ID
FROM [tb].[dbo].[tbadjcell]