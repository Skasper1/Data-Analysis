--Data Exploration with SQL--
--Find the average price based on category.--
SELECT category, round(avg(price),2) as Avg_Price FROM bookdata_table_copy GROUP by category;

--List the top 10 most expensive products.--
SELECT title,price FROM bookdata_table_copy ORDER by price DESC LIMIT 10;

--List all products that are currently available and have a 5-star rating.--
SELECT title,stars from bookdata_table_copy WHERE stars = '5' and availability > 0;


--Find the average price excluding tax for each category.--
SELECT category,round(avg(price_excl_tax),2) as Avg_price_without_tax FROM bookdata_table_copy GROUP by category;

--Count the number of products in each category.--
SELECT category, COUNT(category) as Num_of_Products FROM bookdata_table_copy GROUP by category ORDER by category;



--Link to Power BI Dashboard--
--https://app.powerbi.com/links/l1Rup9ncme?ctid=5cdc5b43-d7be-4caa-8173-729e3b0a62d9&pbi_source=linkShare ---

