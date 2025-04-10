#🎓 Student Record Management System #

A simple and user-friendly **Student Record Management System** built using **Python (Tkinter GUI)** and **MySQL**. This application allows users to manage student records efficiently with a graphical user interface, enabling **CRUD operations** (Create, Read, Update, Delete).

---

## 🛠️ Features

- Add new student records
- View all existing student records in a tabular format
- Update student information
- Delete student records
- Search functionality
- User-friendly interface using Tkinter
- Data storage and retrieval via MySQL

---

## 📸 Screenshots

*(Add your screenshots here showing the GUI and features in action)*

---

## 💻 Tech Stack

- **Frontend**: Python Tkinter
- **Backend**: MySQL
- **Connector**: `mysql-connector-python`

---

## ⚙️ Prerequisites

Make sure you have the following installed:

- Python 3.x
- MySQL Server
- `mysql-connector-python` library

Install the MySQL connector using:

```bash
pip install mysql-connector-python
```

---

## 🗂️ Project Structure

```bash
student-record-system/
│
├── main.py                # Main application file
├── db_config.py           # Database connection and setup
├── requirements.txt       # Python dependencies
├── README.md              # Project documentation
└── assets/                # Images, logos (optional)
```

---

## 🧑‍💻 How to Run

1. **Clone the repository**

```bash
git clone https://github.com/your-username/student-record-system.git
cd student-record-system
```

2. **Set up the database**

Run the SQL script (if provided) or create a MySQL database and table manually:

```sql
CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    roll_no VARCHAR(100),
    department VARCHAR(100),
    email VARCHAR(255),
    contact VARCHAR(20)
);
```

3. **Update your DB credentials** in `db_config.py`.

4. **Run the application**

```bash
python main.py
```

---

## 🚀 Future Enhancements

- Login system for admin access
- Export student data to CSV or Excel
- Sorting and filtering records
- Input validation and error handling improvements
- Dark mode theme

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork this repo, raise issues, or submit pull requests.

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---
