CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_acc_num VARCHAR(20),
    customer_ifsc_code VARCHAR(20),
    customer_pan_num VARCHAR(20) UNIQUE,
    customer_email_id VARCHAR(100) UNIQUE,
    customer_address TEXT,
    customer_gender VARCHAR(10)
);

CREATE TABLE loan_details (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_acc_num VARCHAR(20),
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_term_years INT,
    emi_amount DECIMAL(12,2),
    loan_status VARCHAR(20),
    loan_start_date DATE,
    loan_end_date DATE
);

CREATE TABLE fixed_deposit (
    fd_id INT PRIMARY KEY AUTO_INCREMENT,
    fd_acc_num VARCHAR(20),
    fd_period VARCHAR(10),
    fd_start_date DATE,
    fd_end_date DATE,
    fd_interest DECIMAL(4,2),
    fd_amount DECIMAL(12,2)
);

CREATE TABLE transactions (
    tran_id INT PRIMARY KEY,
    tran_acc_number varchar(20),
    trans_type VARCHAR(10),
    trans_form BIGINT,
    trans_to BIGINT,
    trans_date_time DATETIME,
    trans_amount DECIMAL(15,2),
    trans_balance DECIMAL(15,2)
);