# Digital Notice Board - Setup Guide

## Project Overview
The Digital Notice Board is a Java-based application that uses MySQL database to manage and display notices. This guide will help you set up and run the project on your local machine.

## Prerequisites

Before running the project, ensure you have the following installed:

### 1. Java Development Kit (JDK)
- **Version**: JDK 8 or higher
- **Check installation**: Open Command Prompt and run:
  ```bash
  java -version
  javac -version
  ```
- **Download**: [Oracle JDK](https://www.oracle.com/java/technologies/downloads/) or [OpenJDK](https://openjdk.org/)

### 2. MySQL Server
- **Version**: MySQL 5.7 or higher
- **Check installation**: Open Command Prompt and run:
  ```bash
  mysql --version
  ```
- **Download**: [MySQL Community Server](https://dev.mysql.com/downloads/mysql/)

## Project Structure

```
Digital notice board/
├── src/
│   ├── Main.java                 # Main application entry point
│   ├── model/                    # Data models
│   │   ├── User.java
│   │   ├── Admin.java
│   │   └── Notice.java
│   ├── dao/                      # Data Access Objects
│   │   ├── NoticeDAOInterface.java
│   │   └── NoticeDAO.java
│   ├── util/                     # Utilities
│   │   └── DBConnection.java     # Database connection handler
│   └── lib/                      # Libraries
│       └── mysql-connector-j-9.5.0/
├── bin/                          # Compiled classes (generated)
├── database/
│   └── schema.sql                # Database schema and sample data
├── compile.bat                   # Compilation script
├── run.bat                       # Execution script
└── SETUP.md                      # This file
```

## Setup Instructions

### Step 1: Configure MySQL Database Credentials

1. Open `src\util\DBConnection.java`
2. Update the following constants if your MySQL credentials are different:
   ```java
   private static final String USER = "root";           // Your MySQL username
   private static final String PASSWORD = "root@123";   // Your MySQL password
   ```

### Step 2: Create the Database

Open MySQL Command Line Client or MySQL Workbench and execute the schema file:

#### Option A: Using MySQL Command Line
```bash
mysql -u root -p < database\schema.sql
```

#### Option B: Using MySQL Command Line Client (Interactive)
```sql
source C:\Users\Shalini\OneDrive\Desktop\Digital notice board\database\schema.sql
```

#### Option C: Manual Steps
1. Open MySQL Command Line Client
2. Enter your password
3. Run the following commands:
   ```sql
   source database/schema.sql
   ```

The schema file will:
- Create the `notice_board` database
- Create tables: `users`, `admins`, `notices`
- Insert sample data for testing

### Step 3: Verify Database Setup

Check if the database and tables were created successfully:

```sql
USE notice_board;
SHOW TABLES;
SELECT * FROM notices;
```

You should see 5 sample notices.

### Step 4: Compile the Project

Run the compilation script:

```bash
compile.bat
```

This will:
- Compile all Java source files
- Place compiled `.class` files in the `bin` directory
- Include MySQL connector JAR in the classpath

### Step 5: Run the Application

Execute the application:

```bash
run.bat
```

## Expected Output

When you run the application successfully, you should see:

```
============================================================
    DIGITAL NOTICE BOARD SYSTEM
============================================================

[1] Testing Database Connection...
    ✓ Database connected successfully!

[2] Testing Model Classes...
    Admin Name: Alice
    Admin Email: alice@example.com
    Admin Role: SuperAdmin

    Notice Title: Meeting
    Notice Message: Staff meeting at 5 PM

[3] Retrieving All Notices from Database...
    Total Notices: 5
    --------------------------------------------------------
    ID: 1
    Title: Welcome Notice
    Message: Welcome to the Digital Notice Board System!
    Date: 2026-01-19 16:54:00
    --------------------------------------------------------
    ... (more notices)

[4] Adding New Notice to Database...
    ✓ New notice added successfully!

[5] Retrieving Updated Notice List...
    Total Notices: 6

============================================================
    ALL TESTS COMPLETED SUCCESSFULLY!
============================================================
```

## Troubleshooting

### Issue: "MySQL JDBC Driver not found!"
**Solution**: Ensure the MySQL connector JAR is present at:
```
src\lib\mysql-connector-j-9.5.0 (1)\mysql-connector-j-9.5.0\mysql-connector-j-9.5.0.jar
```

### Issue: "Database connection failed!"
**Solutions**:
1. Check if MySQL server is running:
   - Windows: Open Services and look for "MySQL" service
   - Or run: `net start MySQL80` (version may vary)

2. Verify database exists:
   ```sql
   SHOW DATABASES;
   ```
   
3. Check credentials in `DBConnection.java` match your MySQL setup

4. Ensure the database was created by running `schema.sql`

### Issue: "javac is not recognized"
**Solution**: Add Java to your PATH environment variable:
1. Find your JDK installation path (e.g., `C:\Program Files\Java\jdk-17`)
2. Add `[JDK_PATH]\bin` to your System PATH
3. Restart Command Prompt

### Issue: "Access denied for user 'root'@'localhost'"
**Solution**: 
1. Reset MySQL root password
2. Update the password in `DBConnection.java`

## Manual Compilation and Execution

If the batch files don't work, you can compile and run manually:

### Compile:
```bash
javac -d bin -cp "src\lib\mysql-connector-j-9.5.0 (1)\mysql-connector-j-9.5.0\mysql-connector-j-9.5.0.jar" src\Main.java src\model\*.java src\dao\*.java src\util\*.java
```

### Run:
```bash
java -cp "bin;src\lib\mysql-connector-j-9.5.0 (1)\mysql-connector-j-9.5.0\mysql-connector-j-9.5.0.jar" Main
```

## Next Steps

Once the application runs successfully:

1. **Explore the Code**: Review the source files to understand the architecture
2. **Modify**: Try adding new features like:
   - Delete notice functionality
   - Update notice functionality
   - Search notices by title
   - User authentication
3. **Extend**: Add a GUI using JavaFX or Swing
4. **Web Interface**: Create a web interface using servlets or Spring Boot

## Support

If you encounter issues not covered here, check:
- Java version compatibility
- MySQL server status
- Database credentials
- File paths (ensure no spaces cause issues)

## Project Information

- **Language**: Java
- **Database**: MySQL
- **JDBC Driver**: mysql-connector-j-9.5.0
- **Architecture**: DAO Pattern
