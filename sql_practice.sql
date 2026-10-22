 SQL Learning Journey: One Query at a Time
-- Author: Legae Motsamane
-- Project: HealthConnect SQL Practice
-- Purpose: Practise SQL fundamentals using appointment scenarios.
-- Note: These are practice queries, not verified results from the dataset.

-- 1. SELECT: Display all columns
SELECT *
FROM Healthconnect;

-- 2. SELECT: Display specific columns
SELECT patient_id, appointment_outcome
FROM Healthconnect;

-- 3. WHERE: Filter appointments by previous no-shows
SELECT *
FROM Healthconnect
WHERE previous_no_show >= 2;

-- 4. COUNT: Count all appointment records
SELECT COUNT(*) AS appointment_count
FROM Healthconnect;

-- 5. GROUP BY: Count appointments by outcome
SELECT appointment_outcome, COUNT(*) AS patient_count
FROM Healthconnect
GROUP BY appointment_outcome;

-- 6. HAVING: Show outcomes with more than 100 records
SELECT appointment_outcome, COUNT() AS patient_count
FROM Healthconnect
GROUP BY appointment_outcome
HAVING COUNT() > 100;

-- 7. ORDER BY: Sort outcomes by record count
SELECT appointment_outcome, COUNT() AS patient_count
FROM Healthconnect
GROUP BY appointment_outcome
ORDER BY COUNT() DESC;

-- 8. DISTINCT: Find unique appointment outcomes
SELECT DISTINCT appointment_outcome
FROM Healthconnect;

-- 9. LIMIT: Display only the first 10 records
SELECT *
FROM Healthconnect
LIMIT 10;

-- 10. CASE WHEN: Categorise previous no-show counts
SELECT
previous_no_show,
CASE
WHEN previous_no_show = 0 THEN 'No risk'
WHEN previous_no_show BETWEEN 1 AND 2 THEN 'Monitor'
WHEN previous_no_show >= 3 THEN 'Urgent'
ELSE 'Unknown'
END AS risk_level
FROM Healthconnect;
