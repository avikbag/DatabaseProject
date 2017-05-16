-- Query #1 
-- Gives you a sefety score based on shooting crime incidents of all neighborhoods
select nb.neighborhood_name, 2*count(sc.fatality = true)-count(sc.officer_involved = true) as safety_score
from neighborhood as nb full outer join shooting_crimes as sc
on nb.zipcode = sc.zipcode and nb.neighborhood_name = sc.neighborhood_name
group by nb.neighborhood_name
;

-- Query #2
-- Gives you all the restaurants in Manayunk
select fd.name as restaurants_in_manayunk
from neighborhood as nb full outer join food as fd
on nb.zipcode = fd.zipcode and nb.neighborhood_name = fd.neighborhood_name
-- group by nb.neighborhood_name
where nb.neighborhood_name = 'Manayunk'
;

-- Query #3
-- Gives you schools that have a safety score lower than 1
select sch.name as safest_schools
from shooting_crimes as sc full outer join schools as sch
on sc.zipcode = sch.zipcode and sc.neighborhood_name = sch.neighborhood_name
group by sch.name
having 2*count(sc.fatality = true)-count(sc.officer_involved = true) <= 1
;

-- Query #4
-- Gives you all the neighborhoods that have both subway and bus
select nb.neighborhood_name
from neighborhood as nb full outer join Transportation as tp
on nb.zipcode = tp.zipcode and nb.neighborhood_name = tp.neighborhood_name
group by nb.neighborhood_name, tp.type
having tp.type='Bus'

intersect

select nb.neighborhood_name
from neighborhood as nb full outer join Transportation as tp
on nb.zipcode = tp.zipcode and nb.neighborhood_name = tp.neighborhood_name
group by nb.neighborhood_name, tp.type
having tp.type='Subway'
;

-- Query #5
-- Gives you all the neighborhoods where there are houses for sale
select nb.neighborhood_name
from neighborhood as nb full outer join property_details as pd
on nb.zipcode = pd.zipcode and nb.neighborhood_name = pd.neighborhood_name
group by nb.neighborhood_name, pd.status
having pd.status='Sale'
;

