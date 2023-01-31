--Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analysts_jobs
LIMIT 10;
-- answer Exxon Mobil

--How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT location
FROM data_analysts_jobs
WHERE location ='TN' OR location='KY';
-- 21 are in TN, 6 in KY. Total 27

--4.How many postings in Tennessee have a star rating above 4? 
SELECT star_rating, location
FROM data_analysts_jobs
WHERE location ='TN'AND star_rating > 4;
-- ANSWER 3

--5.How many postings in the dataset have a review count between 500 and 1000?
SELECT review_count
FROM data_analysts_jobs
WHERE review_count > 500 AND review_count < 1000;
--Answer 150

--6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?

SELECT Location AS state, AVG(star_rating) AS avg_rating
FROM data_analysts_jobs
GROUP BY location
ORDER BY AVG(star_rating) DESC;

-- Answer Nebraska 4.199

7.	Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT DISTINCT title
FROM data_analysts_jobs;
-- ANSWER 881

8. How many unique job titles are there for California companies?
SELECT DISTINCT title 
FROM data_analysts_jobs
WHERE location ='CA';
-- Answer 230

--9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT company, AVG(star_rating)
FROM data_analysts_jobs
WHERE review_count > 5000
GROUP BY company;

--Answer

SELECT DISTINCT company
FROM data_analysts_jobs
WHERE review_count>5000 and company IS NOT NULL;

--answer 40

--10. Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

SELECT company, AVG(star_rating)
FROM data_analysts_jobs
WHERE review_count > 5000
GROUP BY company
ORDER by AVG(star_rating) DESC;

--ANSWER General Motors,Unilever,Microsoft, Nike,American Express, Kaiser Permanente 4.199

--11. 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT COUNT (DISTINCT title)
FROM data_analysts_jobs
WHERE title Ilike '%Analyst%';
--Answer 774

12.12.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?







