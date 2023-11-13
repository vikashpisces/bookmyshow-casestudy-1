USE book_my_show_1;
-- Create THEATRES Table
DROP TABLE IF EXISTS THEATRES_SHOWS;
DROP TABLE IF EXISTS TICKET_SEATS;
DROP TABLE IF EXISTS TICKETS;
DROP TABLE IF EXISTS SCREENS;
DROP TABLE IF EXISTS THEATRES;
CREATE TABLE THEATRES (
  theatre_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  pin_code INT(6),
  contact_no INT(10),
  email_id VARCHAR(100)
);

-- Create SHOWS Table
DROP TABLE IF EXISTS SHOWS;
CREATE TABLE SHOWS (
  show_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  release_date DATE,
  show_type VARCHAR(50),
  show_duration_in_minutes INT,
  show_price DECIMAL(10, 2),
  age_limit_in_years INT(3)
);

-- Create SCREENS Table
CREATE TABLE SCREENS (
  screen_id INT PRIMARY KEY AUTO_INCREMENT,
  screen_name VARCHAR(255),
  screen_capacity INT,
  theatre_id INT,
  FOREIGN KEY (theatre_id) REFERENCES THEATRES(theatre_id)
);

-- Create USERS Table 
DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS(
  user_id VARCHAR(16) PRIMARY KEY,
  name VARCHAR(255),
  email_id VARCHAR(100),
  contact_no INT(10)
);

-- Create TICKETS Table

CREATE TABLE TICKETS (
  ticket_id INT PRIMARY KEY AUTO_INCREMENT,
  ticket_booking_id VARCHAR(16),
  show_id INT,
  theatre_id INT,
  screen_id INT,
  ticket_quantity INT,
  ticket_discount DECIMAL(10, 2),
  booking_amount DECIMAL(10, 2),
  user_id VARCHAR(16) DEFAULT 'Guest',
  FOREIGN KEY (show_id) REFERENCES SHOWS(show_id),
  FOREIGN KEY (theatre_id) REFERENCES THEATRES(theatre_id),
  FOREIGN KEY (screen_id) REFERENCES SCREENS(screen_id),
  FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

-- Create THEATRES_SHOWS Table
CREATE TABLE THEATRES_SHOWS(
  theatre_show_id INT PRIMARY KEY AUTO_INCREMENT,
  theatre_id INT,
  show_id INT,
  show_start_time TIME,
  show_end_time TIME,
  screen_id INT,
  show_start_date DATETIME,
  show_end_date DATETIME,
  FOREIGN KEY (theatre_id) REFERENCES THEATRES(theatre_id),
  FOREIGN KEY (show_id) REFERENCES SHOWS(show_id),
  FOREIGN KEY (screen_id) REFERENCES SCREENS(screen_id)
);

-- Create TICKET_SEAT Table: Contains mapping of seat no against a booking ID
DROP TABLE IF EXISTS TICKET_SEATS;
CREATE TABLE TICKET_SEATS(
  ticket_id INT,
  seat_no VARCHAR(5) NOT NULL,
  FOREIGN KEY (ticket_id) REFERENCES TICKETS(ticket_id)
);
