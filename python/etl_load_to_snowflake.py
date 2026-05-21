import pandas as pd
from snowflake.connector import connect

# Snowflake connection
conn = connect(
    user='YOUR_USERNAME',
    password='YOUR_PASSWORD',
    account='YOUR_ACCOUNT',
    warehouse='COMPUTE_WH',
    database='SPOTIFY_ANALYTICS',
    schema='RAW'
)

cursor = conn.cursor()

# Load CSV
tracks_df = pd.read_csv('../data/sample_spotify_tracks.csv')

# Insert data into Snowflake
for _, row in tracks_df.iterrows():
    cursor.execute(
        """
        INSERT INTO TRACKS (
            track_id,
            track_name,
            artist_id,
            duration_seconds,
            genre
        )
        VALUES (%s, %s, %s, %s, %s)
        """,
        (
            row['track_id'],
            row['track_name'],
            row['artist_id'],
            row['duration_seconds'],
            row['genre']
        )
    )

print("Data loaded successfully.")

cursor.close()
conn.close()
