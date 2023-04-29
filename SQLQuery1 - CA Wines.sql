Select * 
from dbo.[Table 1 California_Wine_Production_1980_2020]
where [Year]>=2010
group by County
order by 1
--ordering by County column, followed by Production column
