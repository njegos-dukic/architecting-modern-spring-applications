CREATE TABLE ORDER_ (
    ID SERIAL PRIMARY KEY,
    CUSTOMER_ID VARCHAR(255) NOT NULL,
    PRODUCT_ID VARCHAR(255) NOT NULL,
    QUANTITY NUMERIC(2) NOT NULL
);

CREATE EXTENSION vector;

CREATE TABLE CAR (
    ID BIGINT PRIMARY KEY,
    MANUFACTURER VARCHAR(255) NOT NULL,
    MODEL VARCHAR(255) NOT NULL,
    DESCRIPTION VARCHAR(1000)
);

INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (1, 'Toyota', 'Corolla', 'A reliable and fuel-efficient sedan, ideal for young professionals and retirees looking for affordability and practicality for family and daily use.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (2, 'Honda', 'Civic', 'A compact car with sporty looks, perfect for city-dwelling singles or couples who appreciate modern styling and a responsive driving experience.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (3, 'Ford', 'Mustang', 'A classic muscle car known for its power and bold styling, ideal for thrill-seekers and enthusiasts who love a high-performance vehicle.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (4, 'Chevrolet', 'Camaro', 'A sporty coupe designed for drivers who crave adventure and individuality, appealing to both young and experienced drivers.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (5, 'BMW', '3 Series', 'A luxury sedan that balances style, performance, and comfort, popular among mid-career professionals and small families.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (6, 'Audi', 'A4', 'An elegant sedan that blends modern design with high-tech features, ideal for executives and small families who value prestige.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (7, 'Tesla', 'Model S', 'An electric luxury sedan offering cutting-edge features, appealing to environmentally-conscious tech-savvy professionals.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (8, 'Mercedes-Benz', 'C-Class', 'A premium sedan with a refined interior, suited for mature drivers or families who prioritize safety, comfort, and class.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (9, 'Volkswagen', 'Golf', 'A versatile hatchback that offers European styling, perfect for young adults or retirees looking for a reliable compact car.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (10, 'Hyundai', 'Elantra', 'An affordable sedan with advanced safety features, designed for young families or first-time buyers.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (11, 'Toyota', 'RAV4', 'A compact SUV ideal for active families who need space and all-weather capability for outdoor adventures.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (12, 'Honda', 'CR-V', 'A reliable and spacious SUV, perfect for growing families and those who love weekend road trips.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (13, 'Ford', 'Explorer', 'A versatile SUV with ample seating, popular among larger families or those who enjoy off-road adventures.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (14, 'Chevrolet', 'Tahoe', 'A full-size SUV designed for large families or professionals who need a strong, reliable vehicle for work and leisure.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (15, 'BMW', 'X5', 'A luxury SUV that combines performance, technology, and comfort, perfect for affluent families and executives.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (16, 'Audi', 'Q5', 'A premium crossover SUV with advanced safety features, suitable for small families and urban professionals.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (17, 'Tesla', 'Model Y', 'A compact electric SUV with cutting-edge features, ideal for environmentally-conscious families or tech enthusiasts.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (18, 'Mercedes-Benz', 'GLE', 'A luxurious midsize SUV with refined interiors, popular among families who appreciate comfort and safety.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (19, 'Volkswagen', 'Tiguan', 'A compact SUV with European styling, perfect for small families and urban adventurers.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (20, 'Hyundai', 'Tucson', 'A budget-friendly SUV with a spacious cabin, designed for young families and first-time SUV buyers.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (21, 'Toyota', 'Highlander', 'A midsize SUV that provides room for the whole family, ideal for road trips and daily errands.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (22, 'Honda', 'Pilot', 'A family-friendly SUV with three-row seating, perfect for larger families and road trips.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (23, 'Ford', 'F-150', 'A legendary pickup truck known for its toughness, favored by workers and adventure seekers alike.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (24, 'Chevrolet', 'Silverado', 'A durable pickup truck designed for heavy-duty tasks and outdoor enthusiasts.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (25, 'RAM', '1500', 'A full-size pickup truck with a luxurious interior, appealing to professionals who need power and comfort.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (26, 'BMW', 'X3', 'A sporty luxury SUV ideal for small families and professionals who value performance and style.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (27, 'Audi', 'Q7', 'A large luxury SUV with three-row seating, perfect for affluent families with a taste for premium features.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (28, 'Tesla', 'Cybertruck', 'A futuristic electric pickup truck, designed for tech-savvy individuals who want innovation and capability.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (29, 'Jeep', 'Wrangler', 'An off-road SUV designed for adventure seekers and outdoor enthusiasts who love rugged terrain.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (30, 'Subaru', 'Outback', 'A versatile crossover wagon, ideal for families and individuals who enjoy road trips and outdoor activities.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (31, 'Mazda', 'CX-5', 'A compact SUV with sleek styling and sporty handling, appealing to young professionals and small families.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (32, 'Nissan', 'Rogue', 'A practical SUV with modern features, great for families looking for reliability and comfort.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (33, 'Kia', 'Sportage', 'A stylish and affordable SUV, perfect for young families or singles seeking versatility.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (34, 'Hyundai', 'Santa Fe', 'A midsize SUV designed for families who need extra space and safety features for long drives.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (35, 'Toyota', 'Prius', 'A hybrid car with exceptional fuel efficiency, ideal for environmentally-conscious drivers who commute frequently.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (36, 'Honda', 'Accord', 'A midsize sedan with a spacious interior, appealing to families and professionals seeking comfort and reliability.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (37, 'Chevrolet', 'Malibu', 'A stylish sedan with a smooth ride, perfect for mid-career professionals or families looking for value.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (38, 'Ford', 'Escape', 'A compact SUV with modern safety features, designed for families or singles who enjoy a mix of city and outdoor driving.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (39, 'Volkswagen', 'Atlas', 'A three-row SUV with a spacious cabin, perfect for larger families who prioritize comfort and practicality.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (40, 'Jeep', 'Grand Cherokee', 'A rugged SUV with luxurious features, appealing to adventure-seeking families and individuals.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (41, 'Tesla', 'Model 3', 'An electric sedan with impressive performance, perfect for tech-savvy professionals and small families.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (42, 'BMW', '5 Series', 'A luxury sedan with advanced features, ideal for executives and families who value prestige and performance.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (43, 'Audi', 'A6', 'A premium sedan with elegant styling, designed for professionals and families with refined tastes.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (44, 'Mercedes-Benz', 'GLA', 'A compact luxury SUV with urban styling, appealing to young professionals and small families.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (45, 'Hyundai', 'Venue', 'A compact SUV with a budget-friendly price, ideal for singles or couples starting out.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (46, 'Kia', 'Seltos', 'A small SUV with modern features, perfect for young adults or families seeking affordability and style.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (47, 'Mazda', 'Mazda3', 'A compact sedan or hatchback with sporty performance, great for singles and couples with an active lifestyle.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (48, 'Subaru', 'Impreza', 'An all-wheel-drive sedan or hatchback, ideal for families or individuals in regions with challenging weather conditions.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (49, 'Nissan', 'Altima', 'A midsize sedan with modern safety features, perfect for families or professionals on the go.');
INSERT INTO CAR (ID, MANUFACTURER, MODEL, DESCRIPTION) VALUES (50, 'Toyota', 'Camry', 'A dependable sedan with a spacious interior, designed for families and professionals seeking reliability and comfort.');
