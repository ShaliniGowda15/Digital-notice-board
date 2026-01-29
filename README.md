# Digital Notice Board

A Java-based digital notice board application with MySQL database backend and modern web interface.

## Quick Start

### Prerequisites
- Java JDK 8 or higher installed
- MySQL Server running

### 1. Setup Database
```bash
setup-database.bat
```
Or manually:
```bash
mysql -u root -p < database\schema.sql
```

### 2. Run Web Application (Recommended)
```bash
run-web.bat
```
Then open your browser to: **http://localhost:8080**

### 3. Or Run Console Application
```bash
compile.bat
run.bat
```

## Features

### Web Interface ✨
- **Modern UI**: Clean, professional dark mode design with gradient accents
- **Real-time Updates**: Auto-refreshes every 30 seconds
- **Responsive Design**: Works on desktop, tablet, and mobile
- **Admin Panel**: Easy-to-use form for posting notices
- **RESTful API**: JSON endpoints for integration

### Backend
- User and Admin management
- Notice CRUD operations
- MySQL database integration
- DAO design pattern
- HTTP server with API endpoints

## Project Structure

- `src/` - Java source files
  - `model/` - Data models (User, Admin, Notice)
  - `dao/` - Data Access Objects
  - `util/` - Database utilities
  - `handlers/` - API request handlers
  - `WebServer.java` - HTTP server
  - `Main.java` - Console application
- `web/` - Web interface files
  - `index.html` - Main notice board page
  - `admin.html` - Admin page for posting notices
  - `styles.css` - Modern styling
  - `script.js` - Frontend logic
  - `admin.js` - Admin form logic
- `database/` - SQL schema and scripts
- `bin/` - Compiled classes
- `compile.bat` - Compilation script (console app)
- `run.bat` - Execution script (console app)
- `run-web.bat` - Web server script
- `setup-database.bat` - Database setup script

## Configuration

Database credentials in `src/util/DBConnection.java`:
- **URL**: `jdbc:mysql://localhost:3306/notice_board`
- **Username**: `root`
- **Password**: `root@123` (change as needed)

## API Endpoints

- `GET /api/notices` - Retrieve all notices as JSON
- `POST /api/notices` - Add new notice
  - Body: `{"title": "Notice Title", "message": "Notice message"}`

## Documentation

See [SETUP.md](SETUP.md) for detailed setup instructions and troubleshooting.

## Requirements

- Java JDK 8+
- MySQL 5.7+
- MySQL Connector/J 9.5.0 (included in `src/lib/`)
- Modern web browser (Chrome, Firefox, Edge, Safari)
