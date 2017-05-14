drop table Demographics;
drop table Food;
drop table Property_Details;
drop table Recreational;
drop table Schools;
drop table Shooting_Crimes;
drop table Transportation;
drop table Neighborhood;

create table Neighborhood (
    neighborhood_name varchar(128),
    zipcode integer,
    primary key (neighborhood_name, zipcode)
);

create table Food (
    name varchar(128),
    address varchar(128),
    category varchar(128),
    rating integer,
    price integer,
    cuisine varchar(128),
    primary key (name, address),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null,
    check (rating >= 1 and rating <= 5)
);

create table Schools (
    school_id integer primary key,
    name varchar(128),
    gradeLevel varchar(128),
    enrollment varchar(128),
    type varchar(128),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Shooting_Crimes (
    incident_id integer primary key,
    incident_time timestamp,
    fatality boolean,
    officer_involved boolean,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Demographics (
    demographic_id integer,
    ethnicity varchar(128),
    median_age_group integer,
    median_salary integer,
    unemployment real,
    primary key(demographic_id, ethnicity),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Recreational (
    rec_id integer primary key,
    name varchar(128),
    type varchar(128),
    age_group integer[],
    rating integer,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Property_Details (
    property_id integer primary key,
    type varchar(128),
    status varchar(128),
    price integer,
    size integer,
    bedroom_bathroom integer,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Transportation (
    transportation_id integer primary key,
    station_address varchar(128),
    type varchar(128),
    route integer,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);
