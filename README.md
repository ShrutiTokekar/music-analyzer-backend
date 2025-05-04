#  Music Analyzer Backend

This is a PHP-based backend project for a simple Music Database website. It allows users to view and interact with stored music records from a MySQL database through a user-friendly interface.

## Features

- Displays music records in a structured format
- Connects to a MySQL database (`musicdb`)
- Clean separation between backend (PHP) and frontend (HTML)
- Easy to extend or integrate into larger applications
- View music data in a browser


 ## Project Structure

- index.html – Static frontend with iframe

- display.php – Outputs album data from MySQL

- connect.php – PHP script for DB connection

- schema.sql – Full music industry schema + sample data

- Dockerfile & docker-compose.yml – Container setup

- logo.png – Site branding

- .gitignore / .dockerignore – Cleanup and optimization

- README.md # You're here!

## Tech Stack
- **PHP** – Backend scripting
- **MySQL** – Database management
- **HTML** – Frontend structure
- **CSS** – Styling (if applicable)
- **Docker** – Optional containerization for easy setup

## How to Run Locally

### Method 1: Using Docker (Recommended)

1. Ensure Docker is installed:  
   Run `docker --version` to check.

2. Create a `Dockerfile` like this:

   ```Dockerfile
   FROM php:8.2-apache
   COPY . /var/www/html/
   EXPOSE 80
3. Build and run the Docker container:
  $docker build -t my-php-backend .
  $docker run -p 8080:80 my-php-backend

5. Visit (http://localhost:8080/index.html) in your browser.

## Method 2: Without Docker
  - Install XAMPP, MAMP, or any LAMP stack.
  - Place your project files in the server directory.
  - Start Apache and MySQL services.
  - Access your site at http://localhost/index.html.

## Author
Shruti Tokekar
B.S Computer Science and Graphic/Web Design | East Stroudsburg University
Email: shruti.tokekar23@gmail.com
www.linkedin.com/in/shruti-tokekar
www.github.com/ShrutiTokekar


