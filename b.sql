WITH 
 cte (base,nom)
AS (
SELECT table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
AND table_schema NOT IN ('pg_catalog', 'information_schema')
	
UNION ALL
SELECT datname FROM pg_database
)
SELECT * FROM cte GROUP BY base,nom;



