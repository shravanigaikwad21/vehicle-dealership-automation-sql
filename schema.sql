CREATE DATABASE vehicle_dealership;
USE vehicle_dealership;

CREATE TABLE customers (customer_id INT PRIMARY KEY, name VARCHAR(100), city VARCHAR(50), phone VARCHAR(15));
CREATE TABLE employees (employee_id INT PRIMARY KEY, name VARCHAR(100), role VARCHAR(50), showroom_city VARCHAR(50));
CREATE TABLE vehicles (vehicle_id INT PRIMARY KEY, model_name VARCHAR(100), price DECIMAL(10,2), fuel_type VARCHAR(20));
CREATE TABLE inventory (inventory_id INT PRIMARY KEY, vehicle_id INT, stock_quantity INT, showroom_city VARCHAR(50));
CREATE TABLE sales (sale_id INT PRIMARY KEY, customer_id INT, vehicle_id INT, employee_id INT, sale_date DATE, sale_amount DECIMAL(10,2));
CREATE TABLE service_records (service_id INT PRIMARY KEY, vehicle_id INT, customer_id INT, service_date DATE, service_type VARCHAR(50));