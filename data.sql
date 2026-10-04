USE vehicle_dealership;
INSERT INTO customers VALUES (101, 'Rahul Sharma', 'Nagpur', '9876543210'), (102, 'Priya Singh', 'Pune', '9876543211'), (103, 'Amit Verma', 'Mumbai', '9876543212');
INSERT INTO employees VALUES (1, 'Shravani', 'Sales Manager', 'Nagpur'), (2, 'Anjali', 'Service Advisor', 'Pune'), (3, 'Rohan', 'Sales Executive', 'Mumbai');
INSERT INTO vehicles VALUES (1, 'Thar', 1500000, 'Diesel'), (2, 'Scorpio', 1800000, 'Diesel'), (3, 'City', 1200000, 'Petrol'), (4, 'Creta', 1400000, 'Petrol');
INSERT INTO inventory VALUES (1, 1, 5, 'Nagpur'), (2, 2, 2, 'Nagpur'), (3, 3, 0, 'Pune'), (4, 4, 8, 'Mumbai');
INSERT INTO sales VALUES (1, 101, 1, 1, '2026-01-15', 700000), (2, 102, 2, 3, '2026-02-20', 1500000), (3, 103, 4, 1, '2026-03-10', 1400000);
INSERT INTO service_records VALUES (1, 1, 101, '2026-04-01', 'Free Service'), (2, 2, 102, '2026-04-10', 'Paid Service');