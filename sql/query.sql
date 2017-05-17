-- Query #1
-- Gives you a sefety score based on shooting crime incidents of all neighborhoods
SELECT nb.neighborhood_name, 2*count(CASE WHEN sc.fatality THEN 1 END)-count(CASE WHEN sc.officer_involved THEN 1 END) AS Safety_Score
FROM neighborhood AS nb FULL OUTER JOIN shooting_crimes AS sc
ON nb.zipcode = sc.zipcode AND nb.neighborhood_name = sc.neighborhood_name
GROUP BY nb.neighborhood_name
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
SELECT sch.name AS safest_schools
FROM shooting_crimes AS sc RIGHT OUTER JOIN schools AS sch
ON sc.zipcode = sch.zipcode AND sc.neighborhood_name = sch.neighborhood_name
GROUP BY sch.name
HAVING 2*count(CASE WHEN sc.fatality THEN 1 END)-count(CASE WHEN sc.officer_involved THEN 1 END) <= 0;

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
