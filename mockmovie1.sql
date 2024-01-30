CREATE TABLE Customers (
  customer_id SERIAL primary key,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  email_address VARCHAR(20),
  phone_number VARCHAR(20),
  payment_info VARCHAR(30)
);

CREATE TABLE Tickets (
  ticket_id SERIAL primary key,
  name VARCHAR(15),
  ticket_number VARCHAR(50),
  ticket_date DATE,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Movies (
  movie_id SERIAL primary key,
  title VARCHAR(20),
  date DATE,
  genre VARCHAR(20)
  
);

CREATE TABLE Concessions (
  concessions_id SERIAL primary key,
  food VARCHAR(15),
  drinks VARCHAR(15),
  price VARCHAR(15),
  movie_id INTEGER,
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
