-- See what types of cases are most common in each tenure group
WITH case_tenure AS (
    SELECT
        c.case_id,
        c.ee_id,
        e.first_name,
        e.last_name,
        e.department,
        e.hire_date,
        c.case_type,
        c.opened,
        DATEDIFF(DAY, CAST(e.hire_date AS DATE), CAST(c.opened AS DATE)) AS tenure_days
    FROM employee_relations_cases c
    JOIN employees e ON c.ee_id = e.employee_id
),
bucketed_cases AS (
    SELECT *,
        CASE 
            WHEN tenure_days < 365 THEN '< 1 year'
            WHEN tenure_days BETWEEN 365 AND 1095 THEN '1-3 years'
            ELSE '> 3 years'
        END AS tenure_bucket
    FROM case_tenure
)
SELECT
    tenure_bucket,
    case_type,
    COUNT(*) AS case_count
FROM bucketed_cases
GROUP BY tenure_bucket, case_type
ORDER BY tenure_bucket, case_count DESC;