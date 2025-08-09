# 🏦 Banking Customer Data Analysis

This project performs **data analysis** on a banking dataset using **MySQL** for structured queries and **Python (Pandas, Matplotlib, Seaborn)** for exploratory data analysis (EDA) and visualization.  
It helps in understanding **customer demographics, financial habits, and risk categories**.

---

## 📌 Objectives
- Store and query customer banking data using **MySQL**.
- Perform **aggregations and group analysis** on deposits, accounts, and loans.
- Categorize customers based on **income** and analyze patterns.
- Visualize data distributions and correlations using **Python**.

---

## 🛠 Tech Stack
- **Languages:** Python, SQL  
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn  
- **Database:** MySQL  
- **Tools:** Jupyter Notebook, Power BI

---

## 📂 Dataset
The dataset contains various customer details such as:
- Demographics: `GenderId`, `Age`, `Nationality`, `Occupation`
- Financial Data: `Bank Deposits`, `Checking Accounts`, `Saving Accounts`, `Foreign Currency Account`, `Business Lending`
- Assets: `Properties Owned`
- Risk Category: `Risk Weighting`
- Credit Details: `Amount of Credit Cards`, `Credit Card Balance`
- Income: `Estimated Income`

---

## 🗄 SQL Analysis

**Database Creation & Setup**
```sql
CREATE DATABASE banking;
USE banking;
