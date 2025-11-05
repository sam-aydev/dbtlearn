WITH DEDUP_QUERY AS (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY id ORDER BY updateDate DESC) AS deduplication_id 
    FROM {{ source('source', 'items') }}
)
SELECT id, name, category updateDate FROM DEDUP_QUERY
WHERE deduplication_id = 1