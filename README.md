# Overview

This project delves into the exploration and analysis of a dataset sourced from Kaggle, which provides insights into supermarket sales. The dataset comprises various attributes such as invoice details, branch information, customer demographics, product lines, and sales statistics. By leveraging SQL queries and database management, we aim to derive valuable insights that drive decision-making for supermarket management. The project involves hypothesis formulation, data exploration, database creation, SQL analysis, and visualization to encapsulate the data story from exploration to insights.

## Dataset Description

The dataset from Kaggle on Supermarket Sales includes the following columns:

- Invoice id
- Branch
- City
- Customer type
- Gender
- Product line
- Unit price
- Quantity
- Tax
- Total
- Date
- Time
- Payment
- COGS (Cost of goods sold)
- Gross margin percentage
- Gross income
- Rating


## Database Schema

We structured our database with the following tables:

- Invoice: Records invoice details including date, time, quantity, total, payment method, customer type, product line, branch, and unit price.
- Invoice details: Contains details such as gross margin percentage, gross income, COGS, unit price, tax, rating, and product line associated with each invoice.
- Customer: Stores customer information including customer ID, gender, and customer type.
- Products: Holds product information with a unique product ID and product line.
- Branch: Manages branch details with branch ID, branch name, and city.

## SQL Analysis

We analyzed the dataset using SQL queries to derive insights.
Determined that females spend more than male customers on average.
Explored the spending patterns of each gender across different product lines to tailor sales strategies.

## Visualization

Visualized insights derived from SQL analysis using Python libraries such as Matplotlib and Seaborn.
Created visual representations to communicate findings effectively.

## Conclusion

This project serves as a comprehensive exploration and analysis of supermarket sales data. By leveraging SQL queries and database management techniques, we derived valuable insights that inform decision-making processes. The visualization of insights enhances the communication of findings, enabling stakeholders to make informed decisions and devise effective sales strategies. We determined from our project which gender spent more, and how much each gender spends on every product line to promote a sale for the supermarket.