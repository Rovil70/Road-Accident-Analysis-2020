create database road_accident;
use road_accident;
select * from road_accident;


/*Top 10 Cities with Most Accidents:*/
SELECT million_plus_cities, SUM(count) AS total_accidents
FROM road_accident
WHERE outcome_of_incident = 'Total number of Accidents'
GROUP BY million_plus_cities
ORDER BY total_accidents DESC
LIMIT 10;



/*Most Common Accident Causes:*/
SELECT cause_category, sum(count) AS total_cases
FROM road_accident
WHERE outcome_of_incident = 'Total number of Accidents'
GROUP BY cause_category
ORDER BY total_cases DESC;



/*Outcome-wise Casualty Summary:*/
SELECT outcome_of_incident, SUM(count) AS total_people
FROM road_accident
GROUP BY outcome_of_incident
ORDER BY total_people DESC;



/*Pivot Report – Cause Subcategory vs Total Killed:*/
SELECT cause_subcategory, SUM(CASE WHEN outcome_of_incident = 'Persons Killed' THEN count ELSE 0 END) AS total_killed
FROM road_accident
GROUP BY cause_subcategory
ORDER BY total_killed DESC
LIMIT 10;





    


