-- Realistic Data for table Neighborhood
-- Data gathered by http://www.visitphilly.com/philadelphia-neighborhoods/

insert into Neighborhood (neighborhood_name, zipcode) values ('Powelton', 19104);           -- 1
insert into Neighborhood (neighborhood_name, zipcode) values ('University City', 19104);    -- 2
insert into Neighborhood (neighborhood_name, zipcode) values ('Belle Vista', 19107);        -- 3
insert into Neighborhood (neighborhood_name, zipcode) values ('Manayunk', 19005);           -- 4
insert into Neighborhood (neighborhood_name, zipcode) values ('Manayunk', 19004);           -- 5
insert into Neighborhood (neighborhood_name, zipcode) values ('Washington Square', 19014);  -- 6
insert into Neighborhood (neighborhood_name, zipcode) values ('German Town', 19112);        -- 7
insert into Neighborhood (neighborhood_name, zipcode) values ('Chestnut Hill', 19007);      -- 8
insert into Neighborhood (neighborhood_name, zipcode) values ('East Passyunk', 19112);      -- 9
insert into Neighborhood (neighborhood_name, zipcode) values ('Old City', 19102);           -- 10
insert into Neighborhood (neighborhood_name, zipcode) values ('Rittenhouse Square', 19003); -- 11

-- Realistic Data for food
-- Data generated from http://centercityphila.org/explore-center-city/ccd-restaurant-week

insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Barbuzzo', '110 S 13th Street', 'Restaurant', 4, 4, 'Mediterranean', 'Old City', 19102);         -- 1
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Bar Volver', '330 S Broad Street', 'Restaurant', 4, 4, 'American', 'Washington Square', 19014);  -- 2
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Pizza and Wings', '3300 Race Street', 'Food Joint', 2, 1, 'American', 'Powelton', 19104);        -- 3
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Ochatto', '3400 Chestnut Street', 'Restaurant', 4, 3, 'Japanese', 'University City', 19104);     -- 4
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Fogo de Ciao', '1223 Cedar Street', 'Restaurant', 5, 5, 'Brazillian', 'Manayunk', 19005);        -- 5
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Joes', '800 Race Street', 'Coffee House', 4, 3, 'Coffee', 'Rittenhouse Square', 19003);          -- 6
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Jane G', '2300 Chestnut Street', 'Restaurant', 4, 4, 'Chinese', 'Rittenhouse Square', 19003);    -- 7
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Starbucks', '13 N Washington Street', 'Coffee House', 4, 3, 'Coffee', 'Manayunk', 19004);        -- 8
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Golden Pig', '16 City Avenue', 'Restaurant', 4, 3, 'Fusion', 'Manayunk', 19004);                 -- 9
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('32 Brew', '56 N Market Street', 'Coffee House', 4, 3, 'Coffee', 'German Town', 19112);           -- 10

-- Realistic Data for Schools
-- Data generated from http://centercityphila.org/explore-center-city/ccd-restaurant-week

insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(2244, 'West Isles School', 'Middle School', 523, 'Private', 'East Passyunk', 19112);               -- 1
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(4029, 'Atlas Public School', 'High School', 2031, 'Public', 'Belle Vista', 19107);                 -- 2
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(4033, 'Manayunk Private', 'High School', 120, 'Private', 'Manayunk', 19005);                       -- 3
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(5411, 'Drexel University', 'University', 25595, 'Private', 'University City', 19104);              -- 4
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(5621, 'University of Pennsylvania', 'University', 24806, 'Private', 'University City', 19104);     -- 5
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(5854, 'Temple University', 'University', 39581, 'Private', 'Rittenhouse Square', 19003);           -- 6
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(5955, 'Villanova University', 'University', 10842, 'Public', 'Old City', 19102);                   -- 7
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(4563, 'Abraham Lincoln High School', 'High School', 1842, 'Public', 'Chestnut Hill', 19007);       -- 8
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(2563, 'Advent Middle School', 'Middle School', 3084, 'Public', 'Belle Vista', 19107);              -- 9
insert into Schools (school_id, name, gradelevel, enrollment, type, neighborhood_name, zipcode)
values(1033, 'Andrew Jackson School', 'Elementary School', 289, 'Private', 'Belle Vista', 19107);         -- 10

-- Realistic Data for Officer Incidents
-- Data generated from http://centercityphila.org/explore-center-city/ccd-restaurant-week
-- Todo: radomize incident times

insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (743322, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, True, 'Old City', 19102);          -- 1
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (647383, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), True, True, 'Chestnut Hill', 19007);      -- 2
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (291643, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, False, 'Washington Square', 19014);-- 3
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (584169, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, False, 'Manayunk', 19005);         -- 4
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (487236, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), True, True, 'Manayunk', 19005);           -- 5
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (963587, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, False, 'Manayunk', 19005);         -- 6
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (487698, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, True, 'German Town', 19112);       -- 3
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (397584, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), True, False, 'Old City', 19102);          -- 4
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (647895, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), False, True, 'Powelton', 19104);          -- 5
insert into shooting_crimes (incident_id, incident_time, fatality, officer_involved, neighborhood_name, zipcode)
values (159875, to_timestamp('16-05-2011 15:36:38', 'dd-mm-yyyy hh24:mi:ss'), True, True, 'University City', 19104);    -- 6

-- Data insert for demographics
-- There will be multiple demographic data for a given neighborhood. 

-- for powelton
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 31, 'Latino', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (708, 37, 'White', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (408, 28, 'African American', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (137, 30, 'Asian', 80000, 5.67, 'Powelton', '19104');

-- for University City
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 31, 'Latino', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (708, 37, 'White', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (408, 28, 'African American', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (137, 30, 'Asian', 80000, 5.67, 'Powelton', '19104');

-- Belle Vista
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 31, 'Latino', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (708, 37, 'White', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (408, 28, 'African American', 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, median_age_group, majority_ethnicity, median_salary, unemployment, neighborhood_name, zipcode)
values (137, 30, 'Asian', 80000, 5.67, 'Powelton', '19104');
