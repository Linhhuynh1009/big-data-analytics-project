# Big Data Analytics Project - Sales Forecasting

## Project Overview
Dự án phân tích và dự báo chuỗi thời gian doanh số bán hàng (M5 Forecasting) sử dụng pipeline tích hợp MySQL, KNIME Analytics Platform và Power BI.

## System Architecture & Pipeline
- **Storage & Ingestion:** MySQL Database (lưu trữ và tiền xử lý dữ liệu thô `sales_history`, `calendar`).
- **Feature Engineering:** Viết lệnh SQL kết hợp bảng và tạo biến đặc trưng ngày lễ (`is_holiday`).
- **Data Prep & Modeling:** KNIME Platform (làm sạch dữ liệu, xử lý outlier, huấn luyện mô hình Machine Learning).
- **Visualization:** Power BI Dashboard trực quan hóa thực tế và dự báo.

## Repository Structure
- `data_preparation.sql`: Script SQL tiền xử lý và kết hợp dữ liệu bảng sales và calendar.
