-- PROBLEM STATEMENT P2
-- Query to list down all the shows
-- on a given date at a given theatre along
-- with their respective show timings

USE book_my_show_1;

-- Before running p2.sql, make sure to execute all prerequisite SQL files.
-- Also, execute below query to first find out the complete list of shows for
-- different date arguments
SELECT show_start_date, show_end_date, show_start_time, show_end_time
FROM theatres_shows
ORDER BY show_start_date DESC;

-- ACTUAL QUERY OUTPUT
SELECT
    s.name showName, s.show_duration_in_minutes duration, s.show_price price,
    t.name, t.address,
    ts.show_start_time as startsAt
FROM theatres t
INNER JOIN
    theatres_shows ts ON t.theatre_id = ts.theatre_id
INNER JOIN
    shows s ON s.show_id = ts.show_id
WHERE
    'Your_Date' BETWEEN ts.show_start_date AND ts.show_end_date AND
    t.theatre_id = 'theatre_id';

-- Validate the result using following query to check the running show in a theatre on a given date
select *
from theatres_shows
where 'Your_Date' BETWEEN show_start_date AND show_end_date AND theatre_id=2;