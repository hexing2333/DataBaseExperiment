select SECTOR_ID,RATIO_ALL from [tb].[dbo].[tbatuc2i]
except
select T.SECTOR_ID,T.RATIO_ALL 
from [tb].[dbo].[tbatuc2i] as T,[tb].[dbo].[tbatuc2i] as S
where T.RATIO_ALL < S.RATIO_ALL
