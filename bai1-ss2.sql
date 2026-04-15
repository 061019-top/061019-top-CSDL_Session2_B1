-- 1. Cột Price dùng DECIMAL(18,2) gây sai số làm thất thoát tiền lẻ, cần tăng độ chính xác và chặn số âm.
-- 2. Cột ProductName (VARCHAR 255) và Description (TEXT) khai báo quá mức cần thiết, gây lãng phí bộ nhớ RAM.
CREATE TABLE PRODUCTS (
    ID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(18, 4) NOT NULL CHECK (Price >= 0),
    Description VARCHAR(1000)
);