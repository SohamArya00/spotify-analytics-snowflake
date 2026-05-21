import pandas as pd
import random

tracks = [
    ["T001", "Midnight Echo", "A001", 210, "Pop"],
    ["T002", "Electric Dreams", "A002", 180, "Electronic"],
    ["T003", "Lost in Tokyo", "A003", 240, "Lo-fi"],
]

df = pd.DataFrame(
    tracks,
    columns=[
        "track_id",
        "track_name",
        "artist_id",
        "duration_seconds",
        "genre"
    ]
)

df.to_csv("sample_spotify_tracks.csv", index=False)

print("Sample Spotify dataset created.")
