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
insert into Neighborhood (neighborhood_name, zipcode) values ('East Passyunk', 19102);      -- 9
insert into Neighborhood (neighborhood_name, zipcode) values ('Old City', 19102);           -- 10
insert into Neighborhood (neighborhood_name, zipcode) values ('Rittenhouse Square', 19003); -- 11

-- Realistic Data for food
-- Data generated from http://centercityphila.org/explore-center-city/ccd-restaurant-week

insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Barbuzzo', '110 S 13th Street', 'Restaurant', 4, 4, 'Mediterranean', 'Old City', 19102); -- 1
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Bar Volver', '330 S Broad Street', 'Restaurant', 4, 4, 'American', 'Washington Square', 19014); -- 2
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Pizza and Wings', '3300 Race Street', 'Food Joint', 2, 1, 'American', 'Powelton', 19104); -- 3
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Ochatto', '3400 Chestnut Street', 'Restaurant', 4, 3, 'Japanese', 'University City', 19104); -- 4
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Fogo de Ciao', '1223 Cedar Street', 'Restaurant', 5, 5, 'Brazillian', 'Manayunk', 19005); -- 5
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Joes', '800 Race Street', 'Coffee House', 4, 3, 'Coffee', 'Rittenhouse Square', 19003); -- 6
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Jane G', '2300 Chestnut Street', 'Restaurant', 4, 4, 'Chinese', 'Rittenhouse Square', 19003); -- 7
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Starbucks', '13 N Washington Street', 'Coffee House', 4, 3, 'Coffee', 'Manayunk', 19004); -- 8
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('Golden Pig', '16 City Avenue', 'Restaurant', 4, 3, 'Fusion', 'Manayunk', 19004); -- 9
insert into Food (name, address, category, rating, price, cuisine, neighborhood_name, zipcode)
values ('32 Brew', '56 N Market Street', 'Coffee House', 4, 3, 'Coffee', 'German Town', 19112); -- 10


