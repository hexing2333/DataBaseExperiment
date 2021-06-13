select * from tbatudata with (index = LongandLatIndex) where Longitude=112.827621 and Latitude = 33.750389
alter index LongandLatIndex on tbatudatanew disable;
select * from tbatudatanew	where Longitude=112.827621 and Latitude = 33.750389
