-- Query #1 
select nb.neighborhood_name, 2*count(sc.fatality = true)-count(sc.officer_involved = true) as safety_score
from neighborhood as nb full outer join shooting_crimes as sc
on nb.zipcode = sc.zipcode and nb.neighborhood_name = sc.neighborhood_name
group by nb.neighborhood_name
;

-- Query #2
select fd.name as restaurants_in_manayunk
from neighborhood as nb full outer join food as fd
on nb.zipcode = fd.zipcode and nb.neighborhood_name = fd.neighborhood_name
-- group by nb.neighborhood_name
where nb.neighborhood_name = 'Manayunk'
;

-- Query #3
select sch.name
from shooting_crimes as sc full outer join schools as sch
on sc.zipcode = sch.zipcode and sc.neighborhood_name = sch.neighborhood_name
group by sch.name
having 2*count(sc.fatality = true)-count(sc.officer_involved = true) <= 1
