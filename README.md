<div align="center">
  <h1>🚖 Cab Service App Data Analysis & Dashboard</h1>
  <p>A comprehensive end-to-end data analysis project exploring driver performance, locational trends, and business metrics for a Cab Service Platform.</p>

  ![SQL](https://img.shields.io/badge/SQL-Data_Extraction-blue?style=for-the-badge&logo=mysql)
  ![Power BI](https://img.shields.io/badge/Power_BI-Visualization-yellow?style=for-the-badge&logo=powerbi)
  ![Data Analysis](https://img.shields.io/badge/Data_Analysis-Business_Insights-brightgreen?style=for-the-badge&logo=googleanalytics)
</div>

<br />

![Cab Service Dashboard Preview](DASHBOARD%20SS.png)

## 📋 Table of Contents
- [About the Project](#-about-the-project)
- [Key Business Insights](#-key-business-insights)
- [Data Architecture](#-data-architecture)
- [Project Structure](#-project-structure)
- [Tools & Technologies](#-tools--technologies)
- [Getting Started](#-getting-started)

## 🚀 About the Project
This project involves analyzing a multi-table dataset from a Cab Service application. By combining raw trip logs, cancellation statuses, and payment methods, this analysis identifies critical drop-off points in the user journey, uncovers the most lucrative payment methods, and highlights the most active geographical routes. 

The findings are translated into a dynamic, interactive **Power BI Dashboard** designed for non-technical stakeholders to easily understand operational health.

## 💡 Key Business Insights
1. **Cancellation Funnel Analysis:** Monitored the complete user journey from *Search* → *Estimate Generated* → *Trip Completed/Cancelled* to identify major drop-off points.
2. **Revenue & Driver Performance:** Ranked top-earning drivers and calculated overall platform revenue across different periods.
3. **Payment Preferences:** Analyzed which payment methods (Cash, UPI, Credit Card, Debit Card) are most frequently used and which generate the highest average fare.
4. **Locational Hotspots:** Pinpointed the exact location pairs (`loc_from` to `loc_to`) that generate the highest trip volume.
5. **Customer Loyalty:** Identified the most frequent driver-customer pairs, highlighting rider retention and loyalty.

## 🏗 Data Architecture
The data model uses a standard **Star Schema** to optimize performance for Power BI:
- **Fact Tables:** `trips.csv`, `trips_details.csv`
- **Dimension Tables:** `payment.csv`, `loc.csv`, `duration.csv`

The SQL scripts in this repository demonstrate the use of `JOIN`s, Subqueries, Aggregations (`GROUP BY`), and analytical filtering to extract actionable metrics from these tables before feeding them into Power BI.

## 📂 Project Structure
```text
📦 Cab-Service-App-Analysis
 ┣ 📜 cab service analysis.sql      # Core SQL queries for data aggregation
 ┣ 📊 cab service live analysis.pbix # Interactive Power BI Dashboard
 ┣ 🖼️ DASHBOARD SS.png              # High-res screenshot of the dashboard
 ┣ 📝 INTERVIEW_QUESTIONS.md        # 100 Technical Interview Qs based on this project
 ┣ 📁 Data Files (CSVs)             
 ┃ ┣ 📄 trips.csv                   # Core trip execution data
 ┃ ┣ 📄 trips_details.csv           # Search and cancellation tracking
 ┃ ┣ 📄 payment.csv                 # Payment method lookup
 ┃ ┣ 📄 loc.csv                     # Location lookup
 ┃ ┗ 📄 duration.csv                # Trip duration mappings
 ┗ 📄 README.md                     # Project documentation
```

## 🛠 Tools & Technologies
* **SQL (MySQL/PostgreSQL):** Used for deep-dive data extraction, cleaning, and metric formulation.
* **Microsoft Power BI:** Used for data modeling (Power Query/DAX) and creating interactive visualizations.
* **Microsoft Excel/CSV:** For raw data storage and inspection.

## ⚙️ Getting Started
To view or continue developing this project locally:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/YourUsername/Cab-Service-App-Analysis.git
   ```
2. **Explore the Data via SQL:**
   - Import the `*.csv` files into your preferred SQL database.
   - Run the queries found in `cab service analysis.sql`.
3. **View the Dashboard:**
   - Open `cab service live analysis.pbix` using **Power BI Desktop**.
   - Ensure the data source paths are updated to point to the local CSV files on your machine.
