Customer Churn Analysis & Retention Strategy

An end-to-end churn analytics project built with SQL, Power BI, and Python to identify churn drivers, profile at-risk customers, and predict future churners. This project combines ETL, exploratory analysis, dashboarding, and machine learning into a business-ready retention framework.

Business Problem

Customer churn directly impacts revenue, growth efficiency, and retention cost. The core challenge in this project was to answer three business questions: who is leaving, why are they leaving, and who is most likely to leave next?

The objective was to transform raw customer data into an actionable churn intelligence system that can support marketing, retention, and customer success teams.

Project Objectives

Build a complete ETL pipeline in SQL.
Analyze churn across demographic, geographic, payment and account, and services dimensions.
Profile churners to identify campaign opportunities.
Build a predictive churn model to flag future at-risk customers.
Deliver an executive-ready Power BI dashboard for decision-making.

Dataset Overview
Metric	Value
Total Customers	6,418
Stayed	4,275
Churned	1,732
Joined	411
Churn Rate	27.0%
Data Sources

Customer_Data.csv — base customer dataset
EDA.sql — exploratory SQL queries
View.sql — ETL views for analysis and prediction
Churn prediction.ipynb — model training and prediction
Predictions.csv — predicted churn outputs
churn_analysis.pbix — Power BI dashboard

Tools & Technologies

SQL Server for ETL and data views
Power BI for dashboarding and business reporting
Python for prediction modeling
Pandas and NumPy for data processing
Scikit-learn for machine learning
Matplotlib and Seaborn for visualization

Data Preparation & ETL

The raw customer table was prepared into two analysis-ready views:

vw_churndata for customers with Stayed and Churned status
vw_joindata for customers with Joined status

This separation allowed the project to support two business workflows: historical churn analysis and churn prediction for new joiners.

Executive Summary

The analysis shows that churn is concentrated in customers with month-to-month contracts, shorter tenure, higher monthly charges, competitor-sensitive behavior, and limited service bundling.

The predictive model achieved strong classification performance and is suitable for identifying customers requiring proactive retention intervention. The project therefore provides both a diagnostic layer to understand churn and a predictive layer to anticipate churn before it happens.

Key Business Findings
Demographic Patterns

Middle age was the largest customer group. Female customers were slightly higher than male customers in the dataset. Churn exposure varied across age groups, with a clear concentration in specific age bands.

Geographic Patterns

Churn was not evenly distributed across states. Certain states showed materially higher churn rates, indicating regional retention risk. This supports state-level campaign targeting and localized customer success actions.

Payment & Contract Behavior

Month-to-month customers were the most churn-prone segment. Longer contracts consistently showed lower churn. Payment method also mattered, with differences visible across card, bank withdrawal, and mailed check users.

Tenure Behavior

Churn was strongest in the early-to-mid tenure window. Customers with shorter relationships showed much higher risk than long-tenured customers. This confirms that first-cycle retention is critical.

Services and Product Usage

Churn was associated with service bundles, internet type, and support-related features. Customers without strong service attachment were more likely to leave. This points to bundle design and value reinforcement as retention levers.

Churn Reasons

The churn reason analysis showed strong competitive pressure: competitor offers, better devices, better value, better speed, and service-related dissatisfaction. This means churn is not only a pricing issue; it is also a product value and experience issue.

Model Performance

The churn prediction model was built using a RandomForestClassifier.

Model Evaluation Snapshot

Accuracy was around 87%. Precision, recall, and F1-score showed that the model is effective for practical targeting. The confusion matrix indicates the model can identify a large share of churners and non-churners, while still leaving room for improvement in recall.

Most Important Predictors

Total_Revenue
Contract
Total_Charges
Monthly_Charge
Total_Long_Distance_Charges
Tenure
Age
State
Number_of_Referrals
Internet_Type

Business Recommendations
1. Attack month-to-month churn immediately

Customers on month-to-month contracts should be the first retention segment. Offer contract conversion incentives, value-based bundles, and loyalty pricing.

2. Strengthen early-tenure retention

Customers in the first 6–24 months should receive onboarding reinforcement, usage education, proactive follow-up, and issue-resolution outreach.

3. Create state-level retention campaigns

States with high churn should receive region-specific promotions, localized support monitoring, and territory-based retention ownership.

4. Compete on value, not just price

Since competitor offers are a major churn reason, redesign product bundles, improve perceived value, position upgrades more aggressively, and counter competitor claims with retention offers.

5. Use the prediction model operationally

Customers predicted as churn risk should be prioritized in CRM, routed to retention teams, monitored weekly, and segmented by risk tier.

6. Improve service stickiness

Increase attachment to services like online security, backup, device protection, and premium support to raise product dependency and perceived value.

Dashboard Pages
Summary Dashboard

Shows the business health of the customer base: total customers, churned customers, new joiners, churn rate, and demographic, geographic, payment, tenure, and service breakdowns.

Prediction Dashboard

Shows the churn risk profile: predicted churners, at-risk customer table, and churn profile by age, marital status, state, tenure, payment method, and contract.

Screenshots
Summary Dashboard

Filtered Summary Views




Churn Reason Drilldown

Prediction Dashboard








Machine Learning Outputs




Repository Structure

telecom-churn-analysis/
├── README.md
├── data/
│ ├── raw/
│ │ └── customer_data.csv
│ ├── processed/
│ │ └── churn_model_input.xlsx
│ └── output/
│ └── predictions.csv
├── sql/
│ ├── 01_eda_exploration.sql
│ └── 02_create_views.sql
├── notebooks/
│ └── 01_churn_prediction_model.ipynb
├── powerbi/
│ └── churn_analysis.pbix
├── screenshots/
│ ├── 01_summary_dashboard_overall.png
│ ├── 02_summary_dashboard_filtered_state_1.png
│ ├── 03_summary_dashboard_filtered_state_2.png
│ ├── 04_summary_dashboard_churn_reason_drilldown.png
│ ├── 05_prediction_dashboard_overview_168.png
│ ├── 06_prediction_dashboard_overview_45.png
│ ├── 07_prediction_dashboard_overview_98.png
│ ├── 08_prediction_dashboard_overview_1.png
│ ├── 09_model_confusion_matrix.png
│ └── 10_model_feature_importance.png
├── videos/
│ └── project_overview.mp4
└── docs/
├── project_summary.md
└── data_dictionary.md

How to Run
SQL

Run 01_eda_exploration.sql and 02_create_views.sql in your database environment.

Python Notebook

Open notebooks/01_churn_prediction_model.ipynb.

Power BI

Open powerbi/churn_analysis.pbix.

Project Impact

This project gives the business a practical churn intelligence system that can be used to reduce revenue leakage, target retention spending more efficiently, prioritize high-risk customers, improve campaign ROI, and support data-driven customer success decisions.

Conclusion

This project demonstrates an end-to-end churn analytics workflow from raw data to business action. It combines ETL, dashboarding, segmentation, and predictive modeling to answer the most important retention question: which customers are at risk, why are they at risk, and what should the business do next?

Contact

Prepared as a portfolio-ready analytics case study.
