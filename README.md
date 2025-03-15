
# Bank Customers Data Analysis using MySQL

## 📌 Project Overview
This project involves analyzing bank customer data using MySQL. The dataset consists of customer information and loan details, allowing us to extract meaningful insights about banking operations, loan distribution, and customer demographics.

## 📊 Dataset Information
### 1. **Customers Table**
The `customers` table contains information about bank customers, including their ID, name, account details, IFSC code, PAN number, email, address, and gender.

### 2. **Loan Details Table**
The `loan_details` table stores information about customer loans, including loan type, amount, interest rate, loan term, EMI, loan status, and loan start and end dates.

### 3. **Fixed Deposit Table**
The `fixed_deposit` table stores information about customer fixed deposits, including fixed_deposit amount, fd_period, fd_interest, and fd start and end dates.

### 4. ** Transactions Table**
The `Transactions` table stores information about customer Transactions, including Transaction_type, Transaction amount, Transaction to, Transaction from, Transaction date & time, Transaction_balance.

## 🔍 Queries and Analysis Performed
### 1. **Retrieve All Customers**
```sql
SELECT * FROM customers;
```
✅ Extracts complete customer details.

### 2. **Retrieve All Loan Details**
```sql
SELECT * FROM loan_details;
```
✅ Displays information about all loans.

### 3. **Count of Male and Female Customers**
```sql
SELECT customer_gender, COUNT(*) AS count
FROM customers
GROUP BY customer_gender;
```
✅ Identifies gender distribution among bank customers.

### 4. **Find Customers with Active Loans**
```sql
SELECT c.customer_name, c.customer_email_id, l.loan_type, l.loan_amount, l.loan_status
FROM customers c
JOIN loan_details l ON c.customer_acc_num = l.loan_acc_num
WHERE l.loan_status = 'Active';
```
✅ Lists customers who currently have active loans.

### 5. **Calculate Average Loan Amount by Type**
```sql
SELECT loan_type, AVG(loan_amount) AS avg_loan_amount
FROM loan_details
GROUP BY loan_type;
```
✅ Shows the average loan amount for each loan type.

### 6. **Find Customers Who Defaulted on Loans**
```sql
SELECT c.customer_name, c.customer_email_id, l.loan_amount, l.loan_status
FROM customers c
JOIN loan_details l ON c.customer_acc_num = l.loan_acc_num
WHERE l.loan_status = 'Defaulted';
```
✅ Extracts customers who have defaulted on their loans.

### 7. **Total Loan Amount by Status**
```sql
SELECT loan_status, SUM(loan_amount) AS total_loan_amount
FROM loan_details
GROUP BY loan_status;
```
✅ Summarizes loan distribution by loan status (Active, Closed, Defaulted).

### 8. **Find Customers from Chennai with Active Loans**
```sql
SELECT c.customer_name, c.customer_address, l.loan_type, l.loan_status
FROM customers c
JOIN loan_details l ON c.customer_acc_num = l.loan_acc_num
WHERE c.customer_address LIKE '%chennai%' AND l.loan_status = 'Active';
```
✅ Identifies Chennai-based customers with active loans.

### 9. **Find the Highest Loan Amount Approved**
```sql
SELECT MAX(loan_amount) AS highest_loan_amount FROM loan_details;
```
✅ Retrieves the largest loan amount in the dataset.

### 10. **Find Loan Distribution by Interest Rate Brackets**
```sql
SELECT CASE
    WHEN interest_rate < 8 THEN 'Low Interest (<8%)'
    WHEN interest_rate BETWEEN 8 AND 12 THEN 'Medium Interest (8-12%)'
    ELSE 'High Interest (>12%)'
END AS interest_bracket, COUNT(*) AS loan_count
FROM loan_details
GROUP BY interest_bracket;
```
✅ Groups loans based on interest rate ranges.

### 11. **Total Fixed Deposit Amount**
```sql
SELECT SUM(fd_amount) as Total_fixed_deposit FROM fixed_deposit;
```
✅ Identifies Total Fixed Deposit Amount.

### 12. **Customers with Fixed Deposits Above ₹40,000**
```sql
SELECT * FROM fixed_deposit WHERE fd_amount > 40000;
```
✅ Identifies Fixed Deposits above 40,000.

### 13. **Customers with Highest Fixed Deposit Amount**
```sql
SELECT fd_acc_num, fd_amount, customer_name from customers cs
inner join fixed_deposit fd
on cs.customer_acc_num = fd.fd_acc_num
order by fd.fd_amount desc
limit 5;
```
✅ Identifies Top 5 Fixed Deposit Amount.

### 14. **Total Transaction Amount by Type (Credit vs Debit)**
```sql
SELECT trans_type, SUM(trans_amount) AS total_amount
FROM transactions
GROUP BY trans_type;
```
✅ Identifies Total Transaction Amount by Type.


### 15. **Top 5 Customers with Highest Transaction Amounts**
```sql
SELECT customer_name, trans_amount, trans_type FROM transactions ts
INNER JOIN customers cs
ON ts.tran_acc_number = cs.customer_acc_num
ORDER BY trans_amount desc
LIMIT 5;
```
✅ Identifies Top 5 transactions Amounts.



## 📈 Insights from the Analysis
- The bank has a diverse customer base with varying loan types.
- A significant portion of loans are **home loans and personal loans**.
- **Chennai** has a high number of customers with active loans.
- **Loan defaults** are observed in personal loans more frequently than other types.
- The **highest loan amount** disbursed is significant, indicating large-scale banking operations.

## 🚀 Conclusion
This project showcases SQL querying and data analysis techniques applied to banking datasets. The insights derived from this analysis can help financial institutions in risk assessment, loan approvals, and customer segmentation.

---
⭐ **Like this project?** Feel free to fork and contribute!

