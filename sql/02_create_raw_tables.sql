USE DATABASE SPOTIFY_ANALYTICS;
USE SCHEMA RAW;

-- Users Table
CREATE OR REPLACE TABLE USERS (
    user_id STRING,
    username STRING,
    country STRING,
    account_type STRING,
    signup_date DATE
);

-- Artists Table
CREATE OR REPLACE TABLE ARTISTS (
    artist_id STRING,
    artist_name STRING,
    genre STRING
);

-- Tracks Table
CREATE OR REPLACE TABLE TRACKS (
    track_id STRING,
    track_name STRING,
    artist_id STRING,
    duration_seconds NUMBER,
    genre STRING
);

-- Listening Events Table
CREATE OR REPLACE TABLE LISTENING_EVENTS (
    event_id STRING,
    user_id STRING,
    track_id STRING,
    played_at TIMESTAMP,
    play_duration_seconds NUMBER,
    was_skipped BOOLEAN
);

-- Subscriptions Table
CREATE OR REPLACE TABLE SUBSCRIPTIONS (
    subscription_id STRING,
    user_id STRING,
    plan_type STRING,
    monthly_price NUMBER,
    subscription_start DATE
);
