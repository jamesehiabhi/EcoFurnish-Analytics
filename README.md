# EcoFurnish-Analytics
## EcoFurnish Sales and Customer Insights Report

<img src="https://github.com/jamesehiabhi/EcoFurnish-Analytics/blob/main/Displays/Cover.jpg" width="800" height="400"/> 

### ✨Overview

EcoFurnish is a leading provider of eco-friendly furniture, committed to sustainable sourcing and creating stylish, environmentally responsible pieces. Operating through both online platforms and physical stores, EcoFurnish offers a diverse range of products, from office chairs to bedroom sets.

This project utilizes PostgreSQL to analyze sales, inventory, and customer data to provide valuable insights into EcoFurnish’s operations and enhance decision-making processes.

### ✨Objectives

This analysis aims to achieve the following:

  - **Customer Purchase Insights:** Retrieve customer names alongside the quantity of products they purchased, including customers who haven’t made any purchases.
  - **Sales and Customer Information:** Extract all sales_id, sale_date, and customer_email details, ensuring inclusion of sales records without customer information where applicable.
  - **Product Sales Data:** Display all product_id values sold, accompanied by the customer’s first name. Retrieve all product names, casting their prices as text for consistency across price representations.
  - **Purchase Amounts:** Display customer names (first and last) with the sale amount for purchased products or “No amount” if no sale exists.
  - **Product Stock Levels:** List all products and show the total quantity sold, displaying a 0 for products with no recorded sales. Classify products by stock levels, with labels for "Low Stock" (less than 10 units), "Medium Stock" (10-50 units), and "High Stock" (more than 50 units).
  - **Date-Based Sales Analysis:** Extract sale information, including sale_id, sale_date, and the sale year. Segment sales by quarter based on the sale date, labeling as “Q1” (January to March), “Q2” (April to June), “Q3” (July to September), or “Q4” (October to December).

### ✨Methodology
1. Data Understanding:
    - Reviewed the provided information about EcoFurnish's business overview and the specific problem they are facing.
    - Familiarized myself with the database schema, including the tables dimproduct, dimcustomer, and factsales.

2. SQL Query Development:
    - Utilized SQL queries to extract relevant information from the database to address the tasks outlined in the case study.
    - Applied various SQL operations such as SELECT, JOIN, GROUP BY, COUNT, and aggregate functions to analyze sales data, customer information, and product details.

3. Analysis and Interpretation:
    - Analyzed the sales data to identify trends, customer preferences, and product performance metrics.
    - Calculated total revenue, average sale amount per transaction, and other key metrics to gain insights into EcoFurnish's sales performance.
    - Identified loyal customers based on their purchase history and recommended product categories for a promotional campaign.

<img src="https://github.com/jamesehiabhi/EcoFurnish-Analytics/blob/main/Displays/ERD%20Database.png" alt="Displays" width="800" height="400"/>

### ✨Sales and Customer Insights
**1. Customer Purchase Behavior**
- Customer Purchase Data: The data reveals the quantity of products purchased by each customer, including those who haven't made any purchases, ensuring a comprehensive view of customer engagement.
- Loyal Customers: Identified customers who made at least 5 purchases in the past year, representing the most engaged and potentially valuable customers for targeted marketing campaigns.

**2. Sales Transactions Analysis**
- Sales Records: Detailed records of sales transactions, including sales IDs, dates, and customer emails, help track sales trends and customer interactions.
- Total Sales Transactions: The total number of sales transactions provides an overview of the business's sales volume.

**3. Product Inventory and Sales**
- Product Stock Levels: Products are classified based on their stock levels into categories such as "low stock," "medium stock," and "high stock," aiding in inventory management and identifying products that need restocking.
- Top Products: The top 10 product categories based on profitability are identified, which can be used for promotional campaigns to boost sales.

**4. Financial Insights**
- Average Sale Amount: The average sale amount per transaction is calculated, providing insights into customer spending behavior.
- Total Revenue: The total revenue generated from sales is calculated, offering a clear picture of the business's financial performance.
- Product Pricing: Products priced above $500 and those priced between $200 and $500 are listed, highlighting high-value items.

**5. Customer Demographics**
- New Customers: Customers who signed up in 2023 are identified, helping understand the growth of the customer base.
- Customer Emails: Emails containing 'gmail' are listed, useful for targeted email marketing campaigns.

**6. Product Sales and Inventory**
- Sales and Stock Quantities: Total sales and stock quantities for all products are analyzed, including those never sold, helping understand product performance and inventory needs.
- Products with Low Stock: Products with less than 50 items in stock are listed, indicating items that may need restocking soon.

**7. Promotional Campaigns**
- Top Product Categories: The top 10 product categories for promotional campaigns are identified based on profitability, aiding in strategic marketing planning.

**8. Detailed Product Information**
- Product Details: All products available in the inventory are listed, providing a comprehensive view of the product range.
- Distinct Product Categories: The distinct categories of products sold are identified, helping understand the diversity of the product offerings.

**9. Sales Amount Analysis**
- Sale Amounts: The sale amounts are retrieved and rounded to three decimal places for precise financial analysis.
- Average Sale Amount by Category: The average sale amount for each product category is calculated, providing insights into the profitability of different product categories.

**10. Customer Purchase Counts**
- Frequent Buyers: Customers who have bought more than 3 items are listed, highlighting frequent buyers who can be targeted for loyalty programs.

<img src="https://github.com/jamesehiabhi/EcoFurnish-Analytics/blob/main/Displays/Total%20Product.png" alt="Displays" width="800" height="400"/>

### ✨Recommendations

1. Inventory Management:
    - Keep track of products with low stock quantities to avoid stockouts and optimize inventory levels.
    - Consider offering discounts or promotions to clear out excess inventory of expensive products (priced above $500).

2. Customer Engagement:
    - Target customers with personalized marketing campaigns to enhance engagement.
    - Segment customers based on their purchase history (e.g., high-frequency, low-frequency, big spenders) and target promotions and loyalty programs towards them.
    - Consider email marketing campaigns to target specific customer segments based on their product preferences (identified through purchase history).

3. Promotional Campaign:
    - Focus promotional efforts on the identified loyal customers to maximize return on investment.
Highlight product categories with high profitability to drive sales during the campaign.

________________________________________
### ✨Conclusion

The SQL-based analysis presented in this report serves as a foundational tool for EcoFurnish to gain actionable insights into their sales data, customer preferences, and product performance. By leveraging these insights, the company can make informed decisions to address challenges, capitalize on opportunities, and ultimately achieve its business objectives in the competitive eco-friendly furniture market.
________________________________________

<br>

### *Kindly share your feedback and I am happy to Connect 🌟*

<img src="https://github.com/jamesehiabhi/EcoFurnish-Analytics/blob/main/Displays/My%20Card1.jpg" alt="Displays" width="600" height="150"/>



