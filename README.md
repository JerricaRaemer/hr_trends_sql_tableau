# Employee Tenure & Case Type Analysis (SQL Project)

This project analyzes how employee tenure influences the frequency and type of workplace relations cases. The goal is to help HR teams identify trends in employee relations based on how long employees have been with the company.

## Questions

- Are newer employees more likely to be involved in specific case types?
- How does the frequency of cases vary across tenure ranges?
- What is the average tenure at the time a case is opened?

## Tools

- SQL (CTEs, joins, date functions, conditional bucketing)
- Sample HR data (mock dataset)
- Optional: Tableau for visualization

## Steps

### 1. Data Prep
- Joined `employee_relations_cases` with `employees` by employee ID
- Calculated tenure at the time of each case using the `DATEDIFF` function

### 2. Tenure Bucketing
- Bucketed employees into:
  - `< 1 year`
  - `1–3 years`
  - `> 3 years`

### 3. Case Frequency Analysis
- Counted total cases and unique employees in each tenure bucket
- Calculated average number of cases per employee by tenure group

### 4. Case Type Breakdown
- Analyzed the distribution of case types (e.g. harassment, performance, conflict) across each tenure group

## Tableau Visualizations
- Bar chart: Total cases by tenure bucket
- Stacked bar chart: Case types per tenure group

## Insights
- A higher proportion of **conflict** cases occur in the `1–3 years` range
- Most **harassment** cases involve employees with less than 1 year of tenure
- Employees with over 3 years of tenure are involved in fewer total cases overall
