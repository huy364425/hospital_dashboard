# Piedmont Hospital Patient Satisfaction Dashboard

## 1. Business objective:
Piedmont Healthcare executives want to evaluate and improve patient experience across Piedmont hospitals in Georgia. They want to:
  1. Identify key drivers of patient satisfaction.
  2. Highlight hospital-level strengths and weaknesses that directly influence overall patient reception.
  3. Benchmark hospital-level performance against national and state standards.

This gives leadership a way to:
  * Monitor patient satisfaction performance across all Piedmont hospitals.
  * Identify where experience improvements will have the greatest ROI.
  * Track progress over time toward system-wide quality goals.
  * Support data-driven operational and strategic decisions.

## 2. Project objective:
To design and develop an interactive Power BI dashboard that consolidates Hospital Consumer Assessment of Healthcare Providers and Systems (HCAHPS) survey results, benchmarks, and YoY trends into a clear, actionable visualization suite. The dashboard allows executives to understand key drivers of patient satisfaction, compare performance across all Piedmont hospitals, and quickly identify areas requiring operational focus.

The dashboard will:
  * Display hospital-level scores for overall satisfaction and all major HCAHPS measures.
  * Highlight performance above/below national and state benchmarks.
  * Visualize year-over-year satisfaction improvement or decline.
  * Highlight key improvement areas for each hospital.

## 3. Dataset used:
Data for this dashboard is sourced from the Centers for Medicare & Medicaid Services (CMS) website. Every quarter, CMS releases HCAHPS public reporting files. These datasets capture standardized patient experience survey results for hospitals across the United States, including overall satisfaction ratings and domain-level metrics such as nurse communication, doctor communication, cleanliness, and care transitions.

For project demonstration purposes, the dataset only includes Q2 results of each year from 2022-2024 and has been filtered exclusively to Piedmont Healthcare hospitals to support executive decision-making.

## 4. Questions (KPIs):
  * How do these KPIs perform year-over-year?
     * Overall satisfaction – star rating.
     * Likelihood to recommend hospital - star rating.
     * Summary star rating across all domains.
  *	In terms of overall satisfaction, where does the hospital rank compared to other Piedmont hospitals?
  *	How does each hospital perform across all domains against the national average and state average?
  *	What are the key areas of improvement for each hospital to drive patient satisfaction?

## 5. Process:
The project followed a rigorous methodology encompassing data quality assurance, relational modeling, advanced statistical analysis, and interactive visualization.

### 1) Data Acquisition & Quality Assurance (QA)
* **Raw data audit:** Verified the original HCAHPS flat-file dataset from CMS website for data integrity, identifying missing values and anomalies (e.g., inconsistent formatting, outliers).
* **Data cleaning:** Performed comprehensive data type conversion and consistency checks to ensure a high-fidelity input dataset suitable for database ingestion.

### 2) Database Modeling & ETL Pipeline
* **Technology Stack:** Utilized **PostgreSQL** as the core database engine for persistent storage and **pgAdmin 4** as primary GUI tool for execution and administration.
* **Relational Architecture:** Converted the flat-file structure into an optimized Snowflake Schema. This normalization strategy established clear dimension tables (e.g., Facility, Survey, Measurement, Date) and a central fact table, drastically reducing data redundancy.
* **Implementation:** Developed and executed all Data Definition Language (DDL) and Data Manipulation Language (DML) scripts using the pgAdmin 4 Query Tool to construct the schema, load the data, and enforce referential integrity. This optimization improved subsequent query performance for the BI layer.

### 3) Advanced Statistical Analysis (R)
* **Driver Analysis:** Conducted a statistically robust Relative Importance Analysis to precisely quantify the impact of each surveyed domain (e.g., Nurse Communication, Cleanliness) on the overall "Satisfaction Star Rating" metric.
* **Methodology:** Employed **Shapley Regression** (performed in **R**) to determine the marginal contribution of each predictor variable. This method ensures fair and accurate attribution of impact levels, moving beyond simple correlation.
* **Insight Generation:**

## 6. Project Insights:
* Piedmont Columbus Regional Northside in Columbus, GA continues to rank the highest in satisfaction for 3 consecutive years, exceeding state and national average in most domains and staying on-par on the rest. For further improvement, the hospital should focus more on informing patients on what to do after their hospital discharge.
* Piedmont Henry Hospital in Stockbridge, GA has the lowest satisfaction ranking among the 15 Piedmont hospitals. It underperforms in all domains, falling behind the national and state average. Compared to 2022, despite the slight improvement in Quietness, the hospital in 2023 lost a star rating in Satisfaction, primarily due to poorer performance in Care Transition. To achieve good standing, Piedmont Henry Hospital should prioritize patient’s need to be heard, safe and prepared during and after their stay. This includes (1) encouraging doctor and nurses to have more quality time with their patients (2) clearly communicating the information and side effects of the medicines and (3) ensuring patients have enough knowledge and confidence to navigate their health once they are discharged.
* Piedmont Augusta Hospital, the largest hospital in the network, tied with Piedmont Newton Hospital at #11. In 2023, the hospital lost a Satisfaction star rating, falling significantly behind the national and state average. The lower rating can be attributed to the lower satisfaction in Discharge information. The hospital continues to struggle with Medicine communication, Nurse communication and Care transition.
