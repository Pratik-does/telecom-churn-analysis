USE db_churn;
GO

CREATE VIEW vw_churndata AS
SELECT *
FROM dbo.prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');

USE db_churn;
GO
CREATE VIEW vw_joindata AS
SELECT *
FROM dbo.prod_Churn
WHERE Customer_Status ='Joined';
