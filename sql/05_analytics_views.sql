CREATE OR REPLACE VIEW ANALYTICS.TOP_TRACKS AS
SELECT
    track_id,
    COUNT(*) AS total_streams,
    AVG(play_duration_seconds) AS avg_play_duration,
    SUM(CASE WHEN was_skipped THEN 1 ELSE 0 END) AS total_skips
FROM CURATED.FACT_LISTENING_EVENTS
GROUP BY track_id
ORDER BY total_streams DESC;
