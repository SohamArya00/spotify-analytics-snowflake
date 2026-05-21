# 🎵 Spotify-Style Analytics Platform using Snowflake

## 🚀 Overview

This project demonstrates the design and implementation of a modern cloud-based analytics platform for a Spotify-style music streaming product using Snowflake.

The platform simulates ingestion, transformation, validation, and analytics processing for large-scale listening behaviour data.

The goal of this project was to strengthen and showcase practical cloud data engineering capability across modern warehousing, SQL transformation modelling, analytics engineering, and data quality validation.

---

# 🏗️ Architecture

![Architecture Diagram](architecture/spotify_data_platform_architecture.png)

---

# ☁️ Cloud Data Architecture

The project follows a layered warehouse approach commonly used in modern analytics engineering environments.

## RAW Layer
Stores source-system style operational data:
- Users
- Artists
- Tracks
- Listening Events
- Subscriptions

## CURATED Layer
Transforms raw operational data into analytics-ready business models.

Primary curated model:
- `FACT_LISTENING_EVENTS`

## ANALYTICS Layer
Reporting-ready views for business insights:
- Top Tracks
- Skip Rate Analysis
- Account Engagement

---

# 🧰 Tech Stack

| Technology | Purpose |
|---|---|
| Snowflake | Cloud Data Warehouse |
| SQL | Data Modelling & Analytics |
| Python | Sample Data Generation |
| GitHub | Version Control & Portfolio |
| CSV | Source Data Simulation |

---

# 📊 Analytics Use Cases

The platform supports analysis across:

- 🎧 Most streamed tracks
- ⏭️ Skip rate analysis by genre
- 👤 Premium vs free user engagement
- 🌍 Regional listening behaviour
- 📈 Product engagement insights

---

# 🧪 Data Quality Validation

The project includes validation checks for:
- Duplicate listening events
- Missing users
- Missing tracks
- Invalid play durations
- Orphaned records

---

# 📸 Snowflake Implementation Screenshots

## Database Architecture
![Database Schemas](docs/screenshots/snowflake_database_schemas.png)

## Raw Data Tables
![Raw Tables](docs/screenshots/raw_tables_loaded.png)

## Curated Fact Table
![Curated Fact Table](docs/screenshots/curated_fact_table.png)

## Analytics Views

### Top Tracks
![Top Tracks](docs/screenshots/top_tracks_view.png)

### Skip Rate Analysis
![Skip Rate](docs/screenshots/skip_rate_view.png)

## Data Quality Validation
![Data Quality Checks](docs/screenshots/data_quality_checks.png)

---

# 💡 Business Value

This project demonstrates how modern cloud data platforms can transform raw operational events into trusted analytics datasets that support:
- Product teams
- Marketing teams
- Recommendation systems
- Customer retention strategies

---

# 🎯 Purpose

This project forms part of my transition into modern cloud and data engineering environments, building on existing experience across:
- SQL Server
- ETL pipelines
- APIs & integrations
- Middleware orchestration
- Enterprise operational systems

The focus was not just writing SQL queries, but demonstrating end-to-end cloud analytics architecture thinking.

---
