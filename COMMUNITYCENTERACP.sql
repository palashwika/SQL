DROP TABLE IF EXISTS community_activity;

CREATE TABLE IF NOT EXISTS community_activity(
	ID INTEGER PRIMARY KEY,
  	activity_name TEXT NOT NULL,
	activity_type TEXT NOT NULL,
	Day TEXT NOT NULL,
	participants INTEGER NOT NULL,
	Duration_mins INTEGER NOT NULL
);

INSERT INTO community_activity VALUES 
(1, 'Yoga Class',        'Wellness', 'Monday', 18, 60),
(2, 'Art Workshop',      'Creative', 'Tuesday',   12, 90),
(3, 'Chess Club',        'Games',    'Wednesday', 16, 75),
(4, 'Dance Practice',    'Wellness', 'Thursday',  20, 60),
(5, 'Coding Club',       'Learning', 'Friday',    14, 90),
(6, 'Book Circle',       'Learning', 'Saturday',  10, 60),
(7, 'Painting Club',     'Creative', 'Saturday',  15, 75),
(8, 'Football Practice', 'Sports',   'Sunday',    22, 90),
(9, 'Meditation Hour',   'Wellness', 'Sunday',    13, 45);

SELECT * FROM community_activity;

--Order By
SELECT activity_name, participants FROM community_activity ORDER BY participants ASC;
SELECT activity_name, participants FROM community_activity ORDER BY participants DESC;
SELECT activity_type, participants FROM community_activity ORDER BY activity_type ASC, participants DESC;

--Limit
SELECT activity_name, participants FROM community_activity ORDER BY participants LIMIT 3; 
SELECT activity_name, Duration_mins FROM community_activity ORDER BY Duration_mins LIMIT 5; 

--Group By
SELECT activity_type, Count(activity_name) AS num_of_activities FROM community_activity GROUP BY activity_type;
SELECT activity_type, sum(participants), AVG(duration_mins) FROM community_activity GROUP BY activity_type;

--Filter
SELECT activity_type, Count(*) FROM community_activity GROUP BY activity_type HAVING COUNT(*)>2;
SELECT activity_type, AVG(participants) FROM community_activity GROUP BY activity_type HAVING AVG(participants)>=15;

