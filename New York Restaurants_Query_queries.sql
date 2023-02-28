-- Displays the entire table
SELECT *
FROM nomnom;

-- Shows the distinct neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- Shows the distinct cuisines
SELECT DISTINCT cuisine
FROM nomnom;

-- Shows the Chinese restaurants for all neighborhoods
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- Displays all restaurants with reviews greater than or equal to 4.0
SELECT *
FROM nomnom
WHERE review >= 4;

-- Displays all Italian restaurants in the $$$ price range
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';

-- Displays all the restaurants with 'meatball' in the name
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Displays all the restaurants in the Midtown, Downtown, or Chinatown neighborhoods
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';


-- Displays all the health grade pending restaurants (null values).
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Displays the Top 10 Restaurants Ranking based on reviews.
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Creates a rating system column based on the reviews
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;