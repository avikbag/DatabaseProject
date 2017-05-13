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
    primary key (name, address)
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Schools (
    school_id integer primary key,
    name varchar(128),
    gradeLevel integer,
    enrollment varchar(128),
    type varchar(128),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Shooting_Crimes (
    school_id integer primary key,
    name varchar(128),
    gradeLevel integer,
    enrollment varchar(128),
    type varchar(128),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Demographics (
    demographic_id integer primary key,
    median_age_group integer,
    majority_ethnicity varchar(128),
    median_salary integer,
    unemployment integer,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Recreational (
    rec_id integer primary key,
    name varchar(128),
    type varchar(128),
    age_group integer,
    rating integer,
    price integer,
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);

create table Property_Detials (
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
    station varchar(128),
    type varchar(128),
    route varchar(128),
    foreign key (neighborhood_name, zipcode) references Neighborhood(neighborhood_name, zipcode),
    neighborhood_name varchar(128) not null,
    zipcode integer not null
);
