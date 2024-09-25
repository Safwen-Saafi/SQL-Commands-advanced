
-- Users Table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email, password) VALUES 
('User 1', 'user1@example.com', 'hashedpassword1'),
('User 2', 'user2@example.com', 'hashedpassword2'),
('User 3', 'user3@example.com', 'hashedpassword3'),
('User 4', 'user4@example.com', 'hashedpassword4'),
('User 5', 'user5@example.com', 'hashedpassword5'),
('User 6', 'user6@example.com', 'hashedpassword6'),
('User 7', 'user7@example.com', 'hashedpassword7'),
('User 8', 'user8@example.com', 'hashedpassword8'),
('User 9', 'user9@example.com', 'hashedpassword9'),
('User 10', 'user10@example.com', 'hashedpassword10'),
('User 11', 'user11@example.com', 'hashedpassword11'),
('User 12', 'user12@example.com', 'hashedpassword12'),
('User 13', 'user13@example.com', 'hashedpassword13'),
('User 14', 'user14@example.com', 'hashedpassword14'),
('User 15', 'user15@example.com', 'hashedpassword15'),
('User 16', 'user16@example.com', 'hashedpassword16'),
('User 17', 'user17@example.com', 'hashedpassword17'),
('User 18', 'user18@example.com', 'hashedpassword18'),
('User 19', 'user19@example.com', 'hashedpassword19'),
('User 20', 'user20@example.com', 'hashedpassword20'),
('User 21', 'user21@example.com', 'hashedpassword21'),
('User 22', 'user22@example.com', 'hashedpassword22'),
('User 23', 'user23@example.com', 'hashedpassword23'),
('User 24', 'user24@example.com', 'hashedpassword24'),
('User 25', 'user25@example.com', 'hashedpassword25'),
('User 26', 'user26@example.com', 'hashedpassword26'),
('User 27', 'user27@example.com', 'hashedpassword27'),
('User 28', 'user28@example.com', 'hashedpassword28'),
('User 29', 'user29@example.com', 'hashedpassword29'),
('User 30', 'user30@example.com', 'hashedpassword30'),
('User 31', 'user31@example.com', 'hashedpassword31'),
('User 32', 'user32@example.com', 'hashedpassword32'),
('User 33', 'user33@example.com', 'hashedpassword33'),
('User 34', 'user34@example.com', 'hashedpassword34'),
('User 35', 'user35@example.com', 'hashedpassword35'),
('User 36', 'user36@example.com', 'hashedpassword36'),
('User 37', 'user37@example.com', 'hashedpassword37'),
('User 38', 'user38@example.com', 'hashedpassword38'),
('User 39', 'user39@example.com', 'hashedpassword39'),
('User 40', 'user40@example.com', 'hashedpassword40'),
('User 41', 'user41@example.com', 'hashedpassword41'),
('User 42', 'user42@example.com', 'hashedpassword42'),
('User 43', 'user43@example.com', 'hashedpassword43'),
('User 44', 'user44@example.com', 'hashedpassword44'),
('User 45', 'user45@example.com', 'hashedpassword45'),
('User 46', 'user46@example.com', 'hashedpassword46'),
('User 47', 'user47@example.com', 'hashedpassword47'),
('User 48', 'user48@example.com', 'hashedpassword48'),
('User 49', 'user49@example.com', 'hashedpassword49'),
('User 50', 'user50@example.com', 'hashedpassword50');

SELECT *
FROM users;




-- Orders table


CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  -- Foreign key referencing the users table
  order_date DATE NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE -- Foreign key constraint
);

INSERT INTO orders (user_id, order_date, total_amount)
VALUES 
  (1, '2024-09-25', 150.00),
  (1, '2024-09-26', 200.00),
  (2, '2024-09-25', 120.00),
  (2, '2024-09-26', 180.00),
  (3, '2024-09-25', 130.00),
  (3, '2024-09-26', 210.00),
  (4, '2024-09-25', 110.00),
  (4, '2024-09-26', 160.00),
  (5, '2024-09-25', 140.00),
  (5, '2024-09-26', 190.00),
  (6, '2024-09-25', 115.00),
  (6, '2024-09-26', 175.00),
  (7, '2024-09-25', 125.00),
  (7, '2024-09-26', 155.00),
  (8, '2024-09-25', 135.00),
  (8, '2024-09-26', 205.00),
  (9, '2024-09-25', 145.00),
  (9, '2024-09-26', 165.00),
  (10, '2024-09-25', 150.00),
  (10, '2024-09-26', 220.00),
  (11, '2024-09-25', 130.00),
  (11, '2024-09-26', 175.00),
  (12, '2024-09-25', 110.00),
  (12, '2024-09-26', 180.00),
  (13, '2024-09-25', 125.00),
  (13, '2024-09-26', 190.00),
  (14, '2024-09-25', 135.00),
  (14, '2024-09-26', 200.00),
  (15, '2024-09-25', 145.00),
  (15, '2024-09-26', 210.00),
  (16, '2024-09-25', 115.00),
  (16, '2024-09-26', 160.00),
  (17, '2024-09-25', 125.00),
  (17, '2024-09-26', 170.00),
  (18, '2024-09-25', 135.00),
  (18, '2024-09-26', 190.00),
  (19, '2024-09-25', 145.00),
  (19, '2024-09-26', 205.00),
  (20, '2024-09-25', 150.00),
  (20, '2024-09-26', 220.00),
  (21, '2024-09-25', 130.00),
  (21, '2024-09-26', 175.00),
  (22, '2024-09-25', 110.00),
  (22, '2024-09-26', 180.00),
  (23, '2024-09-25', 125.00),
  (23, '2024-09-26', 190.00),
  (24, '2024-09-25', 135.00),
  (24, '2024-09-26', 200.00),
  (25, '2024-09-25', 145.00),
  (25, '2024-09-26', 210.00),
  (26, '2024-09-25', 115.00),
  (26, '2024-09-26', 160.00),
  (27, '2024-09-25', 125.00),
  (27, '2024-09-26', 170.00),
  (28, '2024-09-25', 135.00),
  (28, '2024-09-26', 190.00),
  (29, '2024-09-25', 145.00),
  (29, '2024-09-26', 205.00),
  (30, '2024-09-25', 150.00),
  (30, '2024-09-26', 220.00),
  (31, '2024-09-25', 130.00),
  (31, '2024-09-26', 175.00),
  (32, '2024-09-25', 110.00),
  (32, '2024-09-26', 180.00),
  (33, '2024-09-25', 125.00),
  (33, '2024-09-26', 190.00),
  (34, '2024-09-25', 135.00),
  (34, '2024-09-26', 200.00),
  (35, '2024-09-25', 145.00),
  (35, '2024-09-26', 210.00),
  (36, '2024-09-25', 115.00),
  (36, '2024-09-26', 160.00),
  (37, '2024-09-25', 125.00),
  (37, '2024-09-26', 170.00),
  (38, '2024-09-25', 135.00),
  (38, '2024-09-26', 190.00),
  (39, '2024-09-25', 145.00),
  (39, '2024-09-26', 205.00),
  (40, '2024-09-25', 150.00),
  (40, '2024-09-26', 220.00),
  (41, '2024-09-25', 130.00),
  (41, '2024-09-26', 175.00),
  (42, '2024-09-25', 110.00),
  (42, '2024-09-26', 180.00),
  (43, '2024-09-25', 125.00),
  (43, '2024-09-26', 190.00),
  (44, '2024-09-25', 135.00),
  (44, '2024-09-26', 200.00),
  (45, '2024-09-25', 145.00),
  (45, '2024-09-26', 210.00),
  (46, '2024-09-25', 115.00),
  (46, '2024-09-26', 160.00),
  (47, '2024-09-25', 125.00),
  (47, '2024-09-26', 170.00),
  (48, '2024-09-25', 135.00),
  (48, '2024-09-26', 190.00),
  (49, '2024-09-25', 145.00),
  (49, '2024-09-26', 205.00),
  (50, '2024-09-25', 150.00),
  (50, '2024-09-26', 220.00);


-- Modifying Tables and Displaying them
SHOW CREATE table orders;   -- Shows the table structure

DELETE FROM users
WHERE id = 1;

DROP table users;

DROP table orders;

SHOW tables;

TRUNCATE TABLE orders; -- Truncate command deletes the data from inside the table

ALTER TABLE users CHANGE COLUMN name full_name VARCHAR(100);

ALTER TABLE users
ADD COLUMN phone VARCHAR(15);




-- Select Commands

SELECT * FROM orders;

SELECT distinct order_id as order_num,
  user_id
FROM orders
LIMIT 10;

SELECT count(*) as total_rows,
  min(total_amount) as min_amount,
  max(total_amount) as max_amount
FROM orders;



-- Order by clause

SELECT *
FROM orders
ORDER BY total_amount;  -- desc, asc
