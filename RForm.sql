-- Create Database
CREATE DATABASE IF NOT EXISTS registrationform;
USE registrationform;

-- Create Users Table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(255) NOT NULL,
    stdid int (8) not null,
    email VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL
);

-- Insert Sample Data (Optional)
INSERT INTO users (fullName,stdid email, phoneNumber) VALUES
    ('John Doe',12345678, 'john.doe@example.com', '1234567890'),
    ('Jane Smith',87654321, 'jane.smith@example.com', '9876543210');
