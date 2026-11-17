-- =============================================
-- THÀNH VIÊN: HIẾU (C - DATA ANALYST)
-- TUẦN 1: KHÁM PHÁ DỮ LIỆU BAN ĐẦU (EDA)
-- =============================================

USE m5_forecasting;

-- 1. Xem tổng doanh số theo từng ngành hàng (Category)
SELECT 
    cat_id, 
    SUM(sales) AS total_sales 
FROM sales_history 
GROUP BY cat_id 
ORDER BY total_sales DESC;

-- 2. Xem Top 5 cửa hàng có doanh số cao nhất
SELECT 
    store_id, 
    SUM(sales) AS total_sales 
FROM sales_history 
GROUP BY store_id 
ORDER BY total_sales DESC 
LIMIT 5;

-- 3. Xem xu hướng biến động doanh số theo từng ngày (Timeline)
SELECT 
    day, 
    SUM(sales) AS daily_sales 
FROM sales_history 
GROUP BY day 
ORDER BY day;
