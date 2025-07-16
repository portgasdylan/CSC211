create database UniversalOrlando;
use UniversalOrlando;

-- Create Rides Table
create table Rides (
	RideID int primary key,
    Name varchar(50),
    Type varchar(30),
    duration int,
    HeightRequirement int
);

-- Create Attractions Table
create table Attractions (
	AttractionID int primary key,
    name varchar(50),
    description text,
    location varchar(30)
);

-- Create Employees Table
create table Employees (
	EmployeeID int primary key,
    name varchar(50),
    role varchar(30),
    AssignedRideID int,
    foreign key (AssignedRideID) references Rides(RideID)
);

-- Create Visitors Table
create table Visitors (
	VisitorID int primary key,
    name varchar(50),
    age int,
    ContactInfo varchar(100)
);

-- Create Tickets Table
create table Tickets (
	TicketID int primary key,
    VisitorID int,
    price decimal(5,2),
    type varchar(20),
    foreign key (VisitorID) references Visitors(VisitorID)
);

-- Create FoodAndBeverage Table
create table FoodAndBeverage (
	ItemID int primary key, 
    name varchar(50),
    type varchar(30),
    price decimal(5,2),
    location varchar(50)
);

-- Create Merchandise Table
create table Merchandise (
	MerchID int primary key,
    name varchar(50),
    price decimal(5,2),
    category varchar(30),
    location varchar(50)
);

-- Create ParkZones Table
create table ParkZones (
	ZoneID int primary key,
    name varchar(50),
    description text
);

-- Create MaintenanceSchedule Table
create table MaintenanceSchedule (
	MaintenanceID int primary key,
    RideID int,
    date date,
    TechnicianName varchar(50),
    details text,
    foreign key (RideID) references Rides(RideID)
);

-- Create SpecialEvents Table
create table SpecialEvents (
	EventID int primary key,
    name varchar(50),
    date date,
    location varchar(50),
    description text
);

-- Insert sample data
insert into Rides values (1, 'Velocicoaster', 'Roller Coaster', 5, 52);
insert into Attractions values (1, 'The Wizarding World of Harry Potter', 'Immersive experience', 'Hogsmeade');
insert into Employees values (1, 'Dylan Maxwell', 'Operator', 1);
insert into Visitors values (1, 'Marcus Frazier', 28, 'marcusfrazier@example.com');
insert into Tickets values (1, 1, 159.00, 'Day Pass');

-- Insert more data
insert into Rides
values
(2, 'Hollywood Rip Ride Rockit', 'Roller Coaster', '5', '51'),
(3, 'Revenge of the Mummy', 'Indoor Coaster', '3', '48'),
(4, 'Harry Potter and the Escape from Gringotts', 'Dark Ride', '4', '42'),
(5, 'Transformers: The Ride - 3D', '3D Simulator', '5', '40'),
(6, 'Despicable Me Minion Mayhem', 'Motion Simulator', '4', '40'),
(7, 'The Simpsons Ride', 'Motion Simulator', '6', '40'),
(8, 'E.T Adventure', 'Dark Ride', '5', '34'),
(9, 'Fast & Furious: Supercharged', '3D Simulator', '5', '40'),
(10, 'Hogwarts Express', 'Train Ride', '7', '0');

insert into Attractions
values
(2, 'Springfield, U.S.A.', 'Themed area based on The Simpsons, featuring eateries and shops.', 'Springfield'),
(3, 'New York', 'Area replicating NYC streets, includes attractions and dining.', 'New York'),
(4, 'San Francicso', 'Themed area with dining options and scenic views.', 'San Francicso'),
(5, 'Hollywood', 'Area themed after Hollywood Boulevard with shows and dining.', 'Hollywood'),
(6, 'Minion Land on Illumination Ave', 'Minion-themed area with attractions and eateries.', 'Minion Land'),
(7, 'DreamWorks Land', 'Features characters from Shrek, Trolls, and Kung Fu Panda.', 'DreamWorks Land'),
(8, 'World Expo', 'Adrea featuring futuristic attractions and exhibits', 'World Expo');

insert into Employees
values
(2, 'Rhyan Maxwell', 'Attendant', 3),
(3, 'Brayden Maxwell', 'Technician', 2),
(4, 'Emily Davis', 'Operator', 5),
(5, 'Robert Walker', 'Attendant', 7),
(6, 'Rae Crusoe', 'Supervisor', 4),
(7, 'Jael Battana', 'Operator', 6),
(8, 'Jacob Perrine', 'Attendant', 8),
(9, 'Tony Hinton', 'Technician', 9),
(10, 'Mark Smith', 'Operator', 10);

insert into Tickets
values
(2, 2, 150.00, 'Park-to-Park'),
(3, 3, 200.00, 'Annual Pass'),
(4, 4, 130.00, 'Day Pas'),
(5, 5, 160.00, 'Park-to-Park'),
(6, 6, 210.00, 'Annual Pass'),
(7, 7, 125.00, 'Day Pass'),
(8, 8, 155.00, 'Park-to-Park'),
(9, 9, 205.00, 'Annual Pass'),
(10, 10, 135.00, 'Day Pass');

insert into Visitors
values
(2, 'Levi Terry', 19, 'leviterry@example.com'),
(3, 'Larry Hernandez', '20', 'larryhernandez@example.com'),
(4, 'Cristian Cernas', '19', 'cristiancernas@example.com'),
(5, 'Alexa Tuchtenhagen', '19', 'alexatuchtenhagen@example.com'),
(6, 'Daljeet Singh', '19', 'daljeetsingh@example.com'),
(7, 'Mason Griffith', '19', 'masongriffith@example.com'),
(8, 'Omarie Welsh', '17', 'omariewelsh@example,com'),
(9, 'Taren Miller', '18', 'tarenmiller@example.com'),
(10, 'Boone Stewart', '18', 'boonestewart@example.com');

insert into MaintenanceSchedule
values
(1, 1, '2024-12-10', 'John Doe', 'Routine inspection and lubrication'),
(2, 2, '2024-12-11', 'Jane Smith', 'Safety check and break testing'),
(3, 3, '2024-12-12', 'Mike Brown', 'Structural integrity evaluation'),
(4, 4, '2024-12-13', 'Sarah Johnson', 'Simulator software update'),
(5, 5, '2024-12-14', 'Chris Lee', 'Motion calibration and cleaning');

insert into ParkZones
values
(1, 'Hogsmeade', 'Harry Potter-themed zone'),
(2, 'Springfield', 'Simpsons-themed zone'),
(3, 'New York', 'New York City-themed zone'),
(4, 'Hollywood', 'Hollywood Boulevard zone'),
(5, 'Minion Land', 'Minion-themed zone');

insert into SpecialEvents
values
(1, 'Halloween Horror Nights', '2024-10-31', 'Entire Park', 'Annual Halloween Event'),
(2, 'Mardi Gras Celebration', '2024-03-15', 'New York', 'Music and parades'),
(3, 'Holiday Parade', '2024-12-25', 'Main Street', 'Christmas-themed parade'),
(4, 'Concert Series', '2024-07-20', 'Amphitheater', 'Live performances'),
(5, 'Food Festival', '2024-05-10', 'Springfield', 'Culnary delights and tastings');

insert into FoodAndBeverage
values
(1, 'Butterbeer', 'Drink', 7.99, 'Hogsmeade'),
(2, 'Krusty Burger', 'Food', 12.99, 'Springfield'),
(3, 'Turkey Leg', 'Food', 14.99, 'New York'),
(4, 'Dole Whip', 'Dessert', 5.99, 'Hollywood'),
(5, 'Minion Ice Cream', 'Dessert', 4.99, 'Minion Land');

insert into Merchandise
values
(1, 'Gryffindor Scarf', 19.99, 'Clothing', 'Hogsmeade'),
(2, 'Duff Beer Mug', 14.99, 'Drinkware', 'Springfield'),
(3, 'NYC T-Shirt', 24.99, 'Clothing', 'New York'),
(4, 'Hollywood Poster', 9.99, 'Souvenir', 'Hollywood'),
(5, 'Minion Plush Toy', 29.99, 'Toys', 'Minion Land');

-- Update Command
update Visitors set age = '19' where VisitorID = 9;

-- Delete Command
delete from Attractions where AttractionID = 8;

-- Select Statements
select Visitors.name, Tickets.type, Tickets.price
from Visitors
join Tickets on Visitors.VisitorID = Tickets.VisitorID;

select Employees.name, Employees.role, Rides.name as Ride
from Employees
join Rides on Employees.AssignedRideID = Rides.RideID;

select Visitors.Name, Attractions.Name as Attraction, Attractions.Location
from Visitors
join Tickets on Visitors.VisitorID = Tickets.VisitorID
join Attractions on Tickets.TicketID = Attractions.AttractionID;

