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
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 'Latino', 31, 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 'White', 37, 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 'African American', 28, 80000, 5.67, 'Powelton', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (234, 'Asian', 30, 80000, 5.67, 'Powelton', '19104');

-- for University City
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (742, 'Latino', 31, 80000, 5.67, 'University City', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (742, 'White', 37, 80000, 5.67, 'University City', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (742, 'African American', 28, 80000, 5.67, 'University City', '19104');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (742, 'Asian', 30, 80000, 5.67, 'University City', '19104');

-- Belle Vista
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (453, 'Latino', 31, 80000, 5.67, 'Belle Vista', '19107');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (453, 'White', 37, 80000, 5.67, 'Belle Vista', '19107');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (453, 'African American', 28, 80000, 5.67, 'Belle Vista', '19107');
insert into demographics (demographic_id, ethnicity, median_age_group, median_salary, unemployment, neighborhood_name, zipcode)
values (453, 'Asian', 30, 80000, 5.67, 'Belle Vista', '19107');

-- Dataset for recreational activities
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (3425, 'Brads gym', 'Gym', '{20, 49}', 4, 'University City', 19104);                         -- 1
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (2342, 'Bono Shooting Range', 'Shooting Range', '{24, 55}', 3, 'Belle Vista', 19107);        -- 2
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (4356, 'Alpha', 'Gym', '{10, 49}', 4, 'East Passyunk', 19112);                               -- 3
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (2409, 'Sky Zone', 'Family', '{5, 45}', 2, 'Manayunk', 19005);                               -- 4
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (2478, 'Regal Cinemas', 'Cinema Hall', '{10, 70}', 3, 'University City', 19104);             -- 5
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (3976, 'City Tavern', 'Night Life', '{21, 60}', 4, 'Old City', 19102);                       -- 6
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (5987, 'Alley Forge', 'Bowling', '{10, 49}', 2, 'Chestnut Hill', 19007);                     -- 7
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (4675, 'Rumor', 'Night Life', '{21, 55}', 4, 'Rittenhouse Square', 19003);                   -- 8 
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (6787, 'Regal Cinemas', 'Cinema Hall', '{10, 49}', 4, 'Washington Square', 19014);           -- 9
insert into recreational (rec_id, name, type, age_group, rating, neighborhood_name, zipcode)
values (5681, 'Noto', 'Nightlife', '{21, 49}', 5, 'Rittenhouse Square', 19003);                     -- 10 

-- Dataset for property_details
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (332444, 'Townhouse', 'Rent', 1200, 1660, '2/2', 'University City', '19104');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (758745, 'Apartment', 'Rent', 1400, 1660, '2/2', 'University City', '19104');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (894834, 'Condo', 'Sale', 2000000, 1660, '6/4', 'Belle Vista', '19107');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (143425, 'Apartment', 'Rent', 1400, 1660, '2/2', 'Powelton', '19104');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (987445, 'House', 'Sale', 450000, 1660, '4/3', 'Manayunk', '19005');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (903463, 'Apartment', 'Rent', 1400, 1660, '2/2', 'German Town', '19112');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (973467, 'House', 'Sale', 430000, 1660, '2/2', 'East Passyunk', '19112');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (907453, 'Apartment', 'Rent', 1400, 1660, '2/2', 'Chestnut Hill', '19007');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (767023, 'House', 'Rent', 1400, 1660, '2/2', 'Washington Square', '19014');
insert into property_details (property_id, type, status, price, size, bedbath, neighborhood_name, zipcode)
values (987232, 'Apartment', 'Rent', 1400, 1660, '2/2', 'University City', '19104');

-- Transportation
-- insert into transportation ()
