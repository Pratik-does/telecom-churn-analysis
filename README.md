# Customer Churn Analysis & Retention Strategy

An end-to-end churn analytics project built with **SQL, Power BI, and Python** to identify churn drivers, profile at-risk customers, and predict future churners.  
This project combines **ETL, exploratory analysis, dashboarding, and machine learning** into a business-ready retention framework.

---

## Business Problem

Customer churn directly impacts revenue, growth efficiency, and retention cost. The core challenge in this project was to answer three business questions:

1. **Who is leaving?**
2. **Why are they leaving?**
3. **Who is most likely to leave next?**

The goal was to transform raw customer data into an actionable churn intelligence system that can support marketing, retention, and customer success teams.

---

## Project Objectives

- Build a complete **ETL pipeline** in SQL
- Analyze customer churn across:
  - **Demographic**
  - **Geographic**
  - **Payment & account**
  - **Services**
- Profile churners to identify campaign opportunities
- Build a **predictive churn model** to flag future at-risk customers
- Deliver an executive-ready **Power BI dashboard** for decision-making

---

## Dataset Overview

| Metric | Value |
|-------|------:|
| Total Customers | 6,418 |
| Stayed | 4,275 |
| Churned | 1,732 |
| Joined | 411 |
| Churn Rate | 27.0% |

### Data Sources
- `Customer_Data.csv` — base customer dataset
- `EDA.sql` — exploratory SQL queries
- `View.sql` — ETL views for analysis and prediction
- `Churn prediction.ipynb` — model training and prediction
- `Predictions.csv` — predicted churn outputs
- `churn_analysis.pbix` — Power BI dashboard

---

## Tools & Technologies

- **SQL Server** for ETL and data views
- **Power BI** for dashboarding and business reporting
- **Python** for prediction modeling
- **Pandas / NumPy** for data processing
- **Scikit-learn** for machine learning
- **Matplotlib / Seaborn** for visualization

---

## Data Preparation & ETL

The raw customer table was prepared into analysis-ready views:

- **`vw_churndata`** → customers with `Stayed` and `Churned` status
- **`vw_joindata`** → customers with `Joined` status

This separation allowed the project to support two business workflows:

1. **Churn analysis** on historical customers
2. **Churn prediction** on new joiners

---

## Executive Summary

The analysis shows that churn is concentrated in customers with **month-to-month contracts, shorter tenure, higher monthly charges, competitor-sensitive behavior, and limited service bundling**.  
The highest-risk profile is not random; it is strongly patterned across **age group, tenure, payment method, contract type, geography, and service usage**.

The predictive model achieved strong classification performance and is suitable for identifying customers requiring proactive retention intervention.  
The project therefore provides both:

- a **diagnostic layer** to understand churn
- a **predictive layer** to anticipate churn before it happens

---

## Key Business Findings

### 1) Demographic patterns
- **Middle age** was the largest customer group.
- Female customers were slightly higher than male customers in the dataset.
- Churn exposure varied across age groups, with a clear concentration in specific age bands.

### 2) Geographic patterns
- Churn was not evenly distributed across states.
- Certain states showed materially higher churn rates, indicating regional retention risk.
- This supports **state-level campaign targeting** and localized customer success actions.

### 3) Payment & contract behavior
- **Month-to-month customers** were the most churn-prone segment.
- **Longer contracts** consistently showed lower churn.
- Payment method also mattered, with differences visible across card, bank withdrawal, and mailed check users.

### 4) Tenure behavior
- Churn was strongest in the **early-to-mid tenure window**.
- Customers with shorter relationships showed much higher risk than long-tenured customers.
- This confirms that **first-cycle retention** is critical.

### 5) Services and product usage
- Churn was associated with service bundles, internet type, and support-related features.
- Customers without strong service attachment were more likely to leave.
- This points to **bundle design and value reinforcement** as retention levers.

### 6) Churn reasons
The churn reason analysis showed strong competitive pressure:
- competitor offers
- better devices
- better value
- better speed
- service-related dissatisfaction

This means churn is not only a pricing issue; it is also a **product value and experience issue**.

---

## Model Performance

The churn prediction model was built using a **RandomForestClassifier**.

### Model Evaluation Snapshot
- **Accuracy:** ~87%
- **Precision (churn class):** strong enough for practical targeting
- **Recall (churn class):** useful for proactive retention
- **Feature importance** highlighted the most business-relevant churn drivers

### Confusion Matrix Interpretation
The model correctly identified a large share of churners and non-churners, while still leaving room for improvement in recall.  
That means the model is effective as a **retention prioritization tool**, especially for identifying customers who should be targeted first.

### Most Important Predictors
- Total_Revenue
- Contract
- Total_Charges
- Monthly_Charge
- Total_Long_Distance_Charges
- Tenure
- Age
- State
- Number_of_Referrals
- Internet_Type

---

## Business Recommendations

### 1) Attack month-to-month churn immediately
Customers on month-to-month contracts should be the first retention segment.  
Offer:
- contract conversion incentives
- value-based bundles
- loyalty pricing

### 2) Strengthen early-tenure retention
Customers in the first 6–24 months should receive:
- onboarding reinforcement
- usage education
- proactive follow-up
- issue-resolution outreach

### 3) Create state-level retention campaigns
States with high churn should receive:
- region-specific promotions
- localized support monitoring
- territory-based retention ownership

### 4) Compete on value, not just price
Since competitor offers are a major churn reason:
- redesign product bundles
- improve perceived value
- position upgrades more aggressively
- counter competitor claims with retention offers

### 5) Use the prediction model operationally
Customers predicted as churn risk should be:
- prioritized in CRM
- routed to retention teams
- monitored weekly
- segmented by risk tier

### 6) Improve service stickiness
Increase attachment to services like:
- online security
- backup
- device protection
- premium support

These features reduce churn by increasing product dependency and perceived value.

---

## Dashboard Pages

### Summary Dashboard
Shows the business health of the customer base:
- total customers
- churned customers
- new joiners
- churn rate
- demographic, geographic, payment, tenure, and service breakdowns

### Prediction Dashboard
Shows the churn risk profile:
- predicted churners
- at-risk customer table
- churn profile by age, marital status, state, tenure, payment method, and contract

---

## Screenshots

### Summary Dashboard
![Summary Dashboard Overview](screenshots/summary_dashboard_overall.png)

### Filtered Summary Views
![summary_dashboard_churn_reason_drilldown](screenshots/summary_dashboard_churn_reason_drilldown.png)  
![Summary Dashboard Filtered State 2](screenshots/03_summary_dashboard_filtered_state_2.png)

### Churn Reason Drilldown
![Churn Reason Drilldown](screenshots/04_summary_dashboard_churn_reason_drilldown.png)

### Prediction Dashboard
![Prediction Dashboard Overview](screenshots/05_prediction_dashboard_overview_168.png)  
![Prediction Dashboard Overview](screenshots/06_prediction_dashboard_overview_45.png)  
![Prediction Dashboard Overview](screenshots/07_prediction_dashboard_overview_98.png)  
![Prediction Dashboard Overview](screenshots/08_prediction_dashboard_overview_1.png)

### Machine Learning Outputs
![Confusion Matrix](screenshots/09_model_confusion_matrix.png)  
![Feature Importance](screenshots/10_model_feature_importance.png)

---

## Repository Structure

```text
telecom-churn-analysis/
├── README.md
├── data/
│   ├── raw/
│   │   └── customer_data.csv
│   ├── processed/
│   │   └── churn_model_input.xlsx
│   └── output/
│       └── predictions.csv
├── sql/
│   ├── 01_eda_exploration.sql
│   └── 02_create_views.sql
├── notebooks/
│   └── 01_churn_prediction_model.ipynb
├── powerbi/
│   └── churn_analysis.pbix
├── screenshots/
│   ├── 01_summary_dashboard_overall.png
│   ├── 02_summary_dashboard_filtered_state_1.png
│   ├── 03_summary_dashboard_filtered_state_2.png
│   ├── 04_summary_dashboard_churn_reason_drilldown.png
│   ├── 05_prediction_dashboard_overview_168.png
│   ├── 06_prediction_dashboard_overview_45.png
│   ├── 07_prediction_dashboard_overview_98.png
│   ├── 08_prediction_dashboard_overview_1.png
│   ├── 09_model_confusion_matrix.png
│   └── 10_model_feature_importance.png
├── videos/
│   └── project_overview.mp4
└── report/
    ├── project_summary.md
    

## Project Impact

This project delivers a practical churn intelligence system that enables the business to:
- Reduce revenue leakage by identifying and targeting high-risk customers early  
- Allocate retention budgets more efficiently based on risk segmentation  
- Prioritize high-risk customers for proactive outreach and intervention  
- Improve campaign ROI through data-driven targeting strategies  
- Support customer success teams with actionable churn insights  

## Conclusion

This project demonstrates an end-to-end churn analytics workflow from raw data to business action.  
It integrates ETL, dashboarding, segmentation, and predictive modeling to answer the most critical retention question:

**Which customers are at risk, why are they at risk, and what should the business do next?**
