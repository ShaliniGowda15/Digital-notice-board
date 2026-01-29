# 🚀 How to Run - Digital Notice Board

This project has been optimized for **simplicity** and **reliability**. Follow these steps to run it.

## 📋 Prerequisites
1.  **Java JDK 8 or higher** installed.
2.  **MySQL Server** installed and running.

---

## 🛠️ Step 1: Database Setup
Ensure your MySQL database allows the application to connect.
- **Database Name**: `notice_board`
- **User**: `root`
- **Password**: `root@123`

If you haven't set up the database yet, run:
```cmd
setup-database.bat
```
*(Enter `root@123` when asked for password)*

---

## ▶️ Step 2: Run the Application
We have created a single script that handles **compilation** and **execution automatically**.

1.  Double-click **`run-web.bat`**.
2.  Wait for the message: `SERVER RUNNING ON: http://localhost:8080`.

---

## 🌐 Step 3: Access the Application

| Page | URL | Description |
|------|-----|-------------|
| **Student View** | [http://localhost:8080](http://localhost:8080) | View public notices. Auto-refreshes. |
| **Admin Login** | [http://localhost:8080/login.html](http://localhost:8080/login.html) | Login to manage notices. |

---

## 🔑 Default Credentials

| Role | Username | Password |
|------|----------|----------|
| **Admin** | `admin` | `admin123` |

---

## ❓ Troubleshooting
- **"Address already in use"**: Another server is running. Close existing command prompt windows running Java and try again.
- **"Access Denied" (Database)**: Check if your MySQL root password is truly `root@123`. If different, update `src/util/DBConnection.java`.
