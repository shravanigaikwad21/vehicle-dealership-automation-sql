-- Q1. Automation: Low Stock Alert (Reorder needed)
SELECT v.model_name, i.stock_quantity, i.showroom_city
FROM inventory i JOIN vehicles v ON i.vehicle_id = v.vehicle_id
WHERE i.stock_quantity < 3;

-- Q2. Highest Revenue by Vehicle Model
SELECT v.model_name, SUM(s.sale_amount) as total_revenue
FROM sales s JOIN vehicles v ON s.vehicle_id = v.vehicle_id
GROUP BY v.model_name ORDER BY total_revenue DESC;

-- Q3. Employee Performance - Who sold most?
SELECT e.first_name, e.dept_name, COUNT(s.sale_id) as total_sales, SUM(s.sale_amount) as revenue
FROM employees e LEFT JOIN sales s ON e.emp_id = s.emp_id
GROUP BY e.emp_id ORDER BY revenue DESC;

-- Q4. Service Due Automation (Service after 90 days)
SELECT c.first_name, v.model_name, sr.service_date
FROM service_records sr JOIN customers c ON sr.customer_id = c.customer_id
JOIN vehicles v ON sr.vehicle_id = v.vehicle_id
WHERE sr.service_date < DATE_SUB(CURDATE(), INTERVAL 90 DAY);

-- Q5. City-wise Sales Report
SELECT c.city, SUM(s.sale_amount) as city_revenue
FROM sales s JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.city;

-- Q6. Total Dealership Revenue
SELECT SUM(sale_amount) as total_revenue FROM sales;

-- Q7. Most Popular Model
SELECT v.model_name, COUNT(s.sale_id) as times_sold
FROM sales s JOIN vehicles v ON s.vehicle_id = v.vehicle_id
GROUP BY v.model_name ORDER BY times_sold DESC;

-- Q8. Fuel Type Analysis
SELECT v.fuel_type, COUNT(s.sale_id) as total_sold
FROM vehicles v JOIN sales s ON v.vehicle_id = s.vehicle_id
GROUP BY v.fuel_type;

-- Q9. Customers with Service History
SELECT c.first_name, c.city, sr.service_type, sr.service_cost
FROM customers c JOIN service_records sr ON c.customer_id = sr.customer_id;

-- Q10. Inventory Value
SELECT SUM(v.price * i.stock_quantity) as total_inventory_value
FROM inventory i JOIN vehicles v ON i.vehicle_id = v.vehicle_id;