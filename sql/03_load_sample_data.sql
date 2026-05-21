-- Example COPY INTO statement

COPY INTO RAW.TRACKS
FROM @spotify_stage/sample_spotify_tracks.csv
FILE_FORMAT = (
    TYPE = CSV
    SKIP_HEADER = 1
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
);
