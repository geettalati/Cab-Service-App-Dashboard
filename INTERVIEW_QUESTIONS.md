# Technical Interview Questions: Cab Service App Analysis

This guide contains potential interview questions and suggested answers based on the **Cab Service App Analysis** project. Reviewing these will help you articulate your project's technical depth, data architecture, and business insights.

---

## 📊 1. Business Logic & Insights

### **Q: Can you walk me through the main objective of your Cab Service Analysis project?**
**Answer Strategy:** Focus on the business value. 
*   **Response:** "The goal of this project was to understand the operational health of a cab service platform. I analyzed a multi-table dataset consisting of trip logs, cancellation statuses, and payment methods. By doing so, I was able to identify drop-off points in the user journey (like searches that didn't lead to estimates), determine the most lucrative payment methods, and pinpoint the most active geographical routes. I then built a Power BI dashboard to make these insights accessible to non-technical stakeholders."

### **Q: How did you measure the platform's 'cancellation funnel' or booking success rate?**
**Answer Strategy:** Mention specific metrics calculated in the SQL script.
*   **Response:** "I looked at the `trips_details` table to track the user journey. I measured the total number of searches, how many of those searches successfully generated an estimate (`searches_got_estimate = 1`), and finally, how many trips were not cancelled by the driver (`driver_not_cancelled = 0`). This acts as a funnel analysis, helping business operations identify exactly where users are dropping off."

---

## 💻 2. SQL & Data Engineering

### **Q: You mentioned finding the 'highest payment method'. How did you write the SQL query to find which payment method generated the maximum single fare?**
**Answer Strategy:** Explain the subquery and JOIN logic used in your project.
*   **Response:** "I used a `LEFT JOIN` to combine the `trips` table with the `payment` lookup table on `faremethod`. To find the highest fare, I filtered the result using a subquery in the `WHERE` clause: `WHERE t.fare = (SELECT MAX(fare) FROM trips)`. This allowed me to map the maximum fare amount directly back to its descriptive payment method string."

### **Q: How did you identify the most frequent driver-customer pairs?**
**Answer Strategy:** Explain grouping and ordering.
*   **Response:** "I used the `GROUP BY` clause on both `driverid` and `custid`. I then used the `COUNT(*)` aggregate function to calculate the number of trips for each unique pair. Finally, I sorted the results in descending order using `ORDER BY` to bubble the most frequent, loyal pairs to the top."

### **Q: If your dataset grew from thousands of rows to 100 million rows, how would you optimize your SQL queries?**
**Answer Strategy:** Show an understanding of database performance.
*   **Response:** "With a massive dataset, `GROUP BY` and `ORDER BY` operations become very expensive. I would optimize this by:
    1.  Adding **Indexes** on frequently joined or filtered columns, like `faremethod`, `driverid`, and `custid`.
    2.  Using **Materialized Views** to pre-calculate daily or weekly aggregations for metrics like total earnings or completed trips.
    3.  Partitioning the `trips` table by date, so time-based queries only scan relevant chunks of data."

---

## 📈 3. Power BI & Data Visualization

### **Q: What was your approach to data modeling in Power BI for this dashboard?**
**Answer Strategy:** Discuss how the different CSVs relate to each other.
*   **Response:** "I utilized a Star Schema or Snowflake Schema approach. The `trips` and `trips_details` tables acted as my central Fact tables, containing the transactional data and foreign keys. Files like `loc.csv`, `duration.csv`, and `payment.csv` acted as my Dimension tables. I established 1-to-Many relationships between the dimension tables and the fact tables to allow for cross-filtering in the dashboard."

### **Q: How do you ensure your Power BI dashboard is intuitive for a non-technical stakeholder?**
**Answer Strategy:** Highlight UI/UX principles in BI.
*   **Response:** "I focus on a top-down approach. I put high-level KPIs (like Total Revenue, Total Drivers, Total Trips) at the very top using Card visuals. Below that, I use bar charts and line charts for trends (like trips over time or by location). I also make sure to use consistent color schemes, clear axis labels, and include interactive slicers so stakeholders can easily drill down into specific dates or locations without needing to understand the underlying data model."
