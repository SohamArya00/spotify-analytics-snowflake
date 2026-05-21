-- Duplicate Event Check
SELECT
    event_id,
    COUNT(*) AS duplicate_count
FROM RAW.LISTENING_EVENTS
GROUP BY event_id
HAVING COUNT(*) > 1;

-- Null User Check
SELECT *
FROM RAW.LISTENING_EVENTS
WHERE user_id IS NULL;

-- Invalid Duration Check
SELECT *
FROM RAW.LISTENING_EVENTS
WHERE play_duration_seconds < 0;
