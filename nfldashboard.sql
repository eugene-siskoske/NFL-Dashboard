SELECT *
FROM nflpassdata;

# Finding the total yards thrown per year
SELECT Year, SUM(Yds) AS total_yds
FROM nflpassdata
GROUP BY Year
ORDER BY total_yds DESC;

# Total TD's vs Total Interceptions per year
SELECT Year, SUM(TD) AS TotalTDs, SUM(Interception) AS TotalInts
FROM nflpassdata
GROUP BY Year
ORDER BY Year DESC;

# TD to Int ratio per year
SELECT Year, (SUM(TD) / SUM(Interception)) AS TD_INT_Ratio
FROM nflpassdata
GROUP BY Year
ORDER BY Year DESC;

# Average QB rating per year
SELECT Year, AVG(Rate)
FROM nflpassdata
GROUP BY Year
ORDER BY Year DESC;

#NFL QB Ratings
SELECT Year, Rate
FROM nflpassdata
ORDER BY Year DESC;

SELECT Player, MAX(TD) AS MaxTDs, Year
FROM nflpassdata
GROUP BY Player, Year
ORDER BY MaxTDs DESC
LIMIT 10;
