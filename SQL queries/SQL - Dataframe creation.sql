-- Creating dataframe for modular data analysis 

CREATE TABLE suppliers (
    supplier_id VARCHAR(20) PRIMARY KEY,
    supplier_name VARCHAR(100)
);

CREATE TABLE warehouses (
    warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(255) UNIQUE
);

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    supplier_id VARCHAR(20),
    unit_price DECIMAL(10,2),
    sale_price DECIMAL(10,2),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE inventory_sales (
    product_id VARCHAR(20),
    date_received DATE,
    expiration_date DATE,
    current_stock INT,
    beginning_inventory INT,
    ending_inventory INT,
    average_inventory DECIMAL(10,2),
    average_inventory_value DECIMAL(10,2),
    sales_volume INT,
    cogs DECIMAL(10,2),
    revenue DECIMAL(10,2),
    inventory_turnover_rate DECIMAL(10,4),
    percentage_sales DECIMAL(10, 4),
    cumulative DECIMAL(10, 4),
    PRIMARY KEY (product_id, warehouse_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);
