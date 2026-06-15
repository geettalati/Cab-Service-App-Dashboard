# Cab Service App Analysis

This repository contains a comprehensive data analysis of a Cab Service application. The project explores trip details, driver performance, payment methods, and locational data to derive actionable business insights. It includes SQL scripts for data extraction and aggregation, alongside a Power BI dashboard for interactive visualization.

## Project Structure

- **`cab service analysis.sql`**: SQL queries performing advanced analysis on the cab service data, including calculating total earnings, driver performance, payment method popularity, and location-based trends.
- **`cab service live analysis.pbix`**: Power BI file containing the interactive dashboard for visualizing the insights.
- **`DASHBOARD SS.png`**: A snapshot of the final Power BI dashboard.
- **Data Files**: 
  - `trips.csv`: Core trip data including driver IDs, customer IDs, and fares.
  - `trips_details.csv`: Detailed trip execution metrics such as search estimates and cancellation statistics.
  - `duration.csv`, `loc.csv`, `payment.csv`: Reference data for trip durations, locations, and payment methods.
  - `portpro.xlsx`: Additional consolidated data.

## Key Insights

1. **Revenue & Performance**: Analyzed total drivers, overall earnings, and total completed trips to gauge platform health.
2. **Cancellation Analysis**: Investigated driver cancellation rates and search-to-estimate conversions.
3. **Payment Preferences**: Identified the most frequently used and highest-grossing payment methods.
4. **Locational Trends**: Highlighted the top location pairs with the highest trip volumes.
5. **Driver & Customer Loyalty**: Ranked top-earning drivers and identified customer-driver pairs with the highest frequency of trips.

## Tools Used
- **SQL**: Data querying, aggregation, and performance metrics calculation.
- **Power BI**: Interactive dashboards, data visualization, and reporting.
- **Excel/CSV**: Data storage and manipulation.

## How to Use
1. Import the CSV files into your preferred SQL database.
2. Run the queries in `cab service analysis.sql` to see the underlying data aggregations.
3. Open `cab service live analysis.pbix` in Power BI Desktop to explore the dashboard.
