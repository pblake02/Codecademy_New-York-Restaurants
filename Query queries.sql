SELECT *
FROM nomnom;

--Find all the close by spots in Midtown, Downtown or Chinatown.
SELECT *
FROM nomnom
Where neighborhood LIKE "Midtow_" 
  or neighborhood = "Downtown"
  or neighborhood LIKE "china%";

SELECT *
FROM nomnom
Where health is null;

SELECT *
FROM nomnom
order by review DESC
limit 10;

SELECT *,
  CASE
    WHEN review > 4.5 THEN "Extraordinary"
    WHEN review > 4 THEN "Excellent"
    WHEN review > 3 THEN "Good"
    WHEN review > 2 THEN "Fair"
    Else "Poor" 
  END AS Rating
FROM nomnom;
