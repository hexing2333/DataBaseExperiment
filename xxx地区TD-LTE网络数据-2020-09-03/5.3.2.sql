SELECT S_SECTOR_ID,N_SECTOR_ID
FROM [tb].[dbo].[tbadjcell]
INTERSECT
SELECT S_SECTOR_ID,N_SECTOR_ID
FROM [tb].[dbo].[tbsecadjcell]