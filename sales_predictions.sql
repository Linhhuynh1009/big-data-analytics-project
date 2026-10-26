SHOW DATABASES;
USE bigdataprj;
CREATE TABLE IF NOT EXISTS sales_predictions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    item_id VARCHAR(100) NOT NULL,
    store_id VARCHAR(20) NOT NULL,
    forecast_day VARCHAR(20) NOT NULL,
    predicted_sales DECIMAL(12,4) NOT NULL,
    actual_sales DECIMAL(12,4) NULL,
    model_name VARCHAR(100),
    prediction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

SHOW TABLES;
DESCRIBE sales_predictions;
