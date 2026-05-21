USE DATABASE SPOTIFY_ANALYTICS;

CREATE OR REPLACE TABLE CURATED.FACT_LISTENING_EVENTS AS
SELECT
    le.event_id,
    le.user_id,
    le.track_id,
    t.artist_id,
    t.genre,
    le.played_at,
    le.play_duration_seconds,
    le.was_skipped
FROM RAW.LISTENING_EVENTS le
LEFT JOIN RAW.TRACKS t
    ON le.track_id = t.track_id;
