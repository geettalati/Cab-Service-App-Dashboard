# 100 Technical Interview Questions: Cab Service App Analysis

This document contains an exhaustive list of 100 potential interview questions based on the Cab Service App Analysis project. They are categorized from basic business logic to advanced SQL optimization and Power BI DAX concepts.

## Section 1: General Project & Behavioral (1-10)
1. Walk me through the Cab Service App Analysis project from end to end.
2. What was the primary business problem you were trying to solve with this dashboard?
3. Why did you choose Power BI and SQL for this specific project?
4. What was the most challenging part of cleaning and analyzing this cab service data?
5. If you had an extra month to work on this, what additional features or analysis would you add?
6. How did you validate that your SQL query results matched the metrics in your Power BI dashboard?
7. Explain a time when the data didn't show what you expected it to. How did you handle it?
8. Who is the target audience for this dashboard, and how did that influence your design?
9. How would you present these findings to a non-technical stakeholder?
10. What limitations exist in this dataset, and how would they impact your conclusions?

## Section 2: Business Understanding & Metrics (11-20)
11. How do you define a "successful" trip in the context of this data?
12. Explain the concept of a "cancellation funnel." What stages are involved in this dataset?
13. How did you calculate the overall search-to-estimate conversion rate?
14. What could be the business reasons behind a high driver cancellation rate?
15. How would you identify the most profitable locations for drivers?
16. If a specific payment method has the highest average fare, what business decisions could be made from that?
17. What metrics would you use to define a "loyal" customer versus a "one-time" rider?
18. How would you calculate driver retention or driver churn using this data?
19. How does analyzing `loc_from` and `loc_to` pairs help in fleet optimization?
20. What external data sources (e.g., weather, traffic) would you integrate to improve this analysis, and why?

## Section 3: Data Architecture & Modeling (21-30)
21. Describe the difference between fact and dimension tables in this dataset.
22. How did you handle the relationships between `trips`, `trips_details`, and the dimension tables (`payment`, `loc`, `duration`)?
23. Did you use a Star schema or a Snowflake schema? Why?
24. What are the primary keys in your tables, and how are foreign keys mapped?
25. If `trips_details` has multiple rows per `tripid`, how would you resolve a many-to-many relationship?
26. How would you design a slowly changing dimension (SCD) if the names of payment methods changed over time?
27. Why is it beneficial to separate `duration` and `location` into lookup tables instead of storing strings directly in the `trips` table?
28. How would you design the data model to handle real-time streaming data instead of static CSVs?
29. What anomalies or data integrity issues might arise if a `faremethod` in `trips` is missing from the `payment` table?
30. Explain how you would implement row-level security (RLS) if city managers should only see data for their locations.

## Section 4: SQL - Basics & Data Retrieval (31-40)
31. Write a query to count the total number of records in the `trips` table.
32. How do you select all unique payment methods used in the `trips` table?
33. Write a query to find all trips where the fare is greater than a specific amount.
34. How would you filter the `trips_details` table to only show records where `driver_not_cancelled` is 0?
35. How do you find trips that have missing (NULL) customer IDs?
36. Write a query to extract the top 10 highest fares from the `trips` table.
37. How would you find trips that occurred between specific `loc_from` and `loc_to` IDs?
38. Use a string function to format the driver IDs if they needed a specific prefix.
39. Write a query using a CASE statement to categorize fares as 'Low', 'Medium', or 'High'.
40. How do you use the IN operator to filter trips for three specific payment methods?

## Section 5: SQL - Aggregation & Grouping (41-50)
41. Write a query to calculate the total revenue (sum of fare) generated across all trips.
42. How do you calculate the average fare per trip?
43. Write a query to find the total number of trips completed by each driver.
44. How would you calculate the total earnings grouped by each payment method?
45. Write a query to find the maximum and minimum fare grouped by `loc_from`.
46. How do you use the HAVING clause to filter out drivers who have completed less than 50 trips?
47. Write a query to count the number of unique customers each driver has serviced.
48. How would you calculate the percentage of total revenue each driver contributes?
49. Write a query to find the top 5 location pairs (`loc_from` and `loc_to`) with the highest trip volume.
50. How would you calculate the standard deviation of fares to understand pricing variance?

## Section 6: SQL - Joins & Subqueries (51-60)
51. Write a query using a LEFT JOIN to map `faremethod` IDs in `trips` to their actual names in the `payment` table.
52. What would happen if you used an INNER JOIN instead of a LEFT JOIN between `trips` and `payment`?
53. Write a query to find the `loc_from` name (from the `loc` table) for every trip.
54. How do you join the `trips` table with `trips_details` to find the average fare for trips where the driver did not cancel?
55. Write a subquery to find the details of the trip that had the absolute highest fare.
56. How do you use a Correlated Subquery to find drivers who earn above the average fare of all drivers?
57. Write a query using a Common Table Expression (CTE) to calculate total earnings per driver, and then select the top 3.
58. How do you perform a FULL OUTER JOIN, and in what scenario would it be useful here?
59. Write a query using a CROSS JOIN. When would this be conceptually useful in this analysis?
60. How would you use a window function (e.g., ROW_NUMBER) to find the most recent trip for each customer?

## Section 7: SQL - Advanced & Performance Optimization (61-70)
61. Explain the difference between `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()` when ranking drivers by revenue.
62. How would you use the `LEAD()` or `LAG()` function to calculate the time difference between consecutive trips for a driver?
63. If your `GROUP BY loc_from, loc_to` query is running too slowly, what indexes would you create?
64. What is the execution plan in SQL, and how would you use it to debug a slow-running join?
65. Explain the difference between an Index Scan and an Index Seek. Which is preferred for finding a specific `tripid`?
66. How does partitioning the `trips` table by month improve query performance?
67. What is a materialized view, and how would you use it for the dashboard's daily revenue aggregations?
68. If the `trips` table has 10 million rows, how do you efficiently delete 1 million canceled trips without locking the table?
69. Explain how you would handle transaction rollbacks if a payment update fails midway.
70. What are temporary tables, and when would you use them instead of CTEs in complex data transformations?

## Section 8: Power BI - Data Import & Transformation (Power Query) (71-80)
71. Describe the steps you took in Power Query to clean the CSV files before loading them into the model.
72. How do you handle missing values or blank rows in Power Query?
73. Explain the difference between "Merge Queries" and "Append Queries." When did you use each?
74. How do you change data types in Power Query, and why is it crucial for the `fare` column?
75. If the `duration.csv` file path changes, how do you update the data source settings without breaking the report?
76. What is Query Folding in Power BI, and why is it important when connecting to a SQL Server database?
77. How would you unpivot columns if your payment methods were structured as separate columns instead of rows?
78. Explain how you created conditional columns in Power Query to group trip distances.
79. What are the performance implications of doing heavy data transformations in Power BI vs. SQL?
80. How do you parameterize a data source to switch between development and production databases?

## Section 9: Power BI - DAX & Calculations (81-90)
81. What is the difference between a Calculated Column and a Measure in DAX? Which did you use for Total Revenue?
82. Write the DAX formula to calculate the Total Fare.
83. How would you write a DAX measure to calculate the Driver Cancellation Rate?
84. Explain the `CALCULATE()` function. How would you use it to find the revenue generated only by 'Cash' payments?
85. What is the `FILTER()` function, and how does it interact with `CALCULATE()`?
86. How would you use Time Intelligence functions (e.g., `TOTALYTD`) if you had a Date dimension?
87. Write a DAX formula to rank drivers based on their total trips.
88. Explain the concept of Row Context vs. Filter Context in DAX.
89. How do you use the `DIVIDE()` function in DAX, and why is it safer than using the `/` operator?
90. Write a DAX measure to calculate the moving average of fares over the last 7 days.

## Section 10: Power BI - Visualization & Dashboarding (91-100)
91. Why did you choose a bar chart versus a line chart for visualizing revenue by location?
92. Explain how cross-filtering works between visuals when you click on a specific driver.
93. How do you configure drill-through so a user can click on a location and see individual trip details?
94. What is the purpose of the Edit Interactions feature, and when would you disable filtering for a specific visual?
95. How do you use bookmarks to create a dynamic, tabbed navigation experience in the dashboard?
96. Explain how you would optimize a Power BI report if the dashboard is loading too slowly.
97. How do you design for accessibility in Power BI (e.g., color contrast, alt text)?
98. What are tooltips, and how did you use custom report page tooltips to show extra details?
99. How would you configure alerts in the Power BI Service if the daily cancellation rate spikes above 20%?
100. Explain the process of publishing this dashboard to a workspace and setting up scheduled refresh.
