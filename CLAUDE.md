# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an **E-Scooter Accident Analytics Dashboard** for Tel Aviv, Israel. The project analyzes electric scooter crashes, injuries, and road safety data using Microsoft Power BI.

**Primary Deliverable:** `escooter_TA_new.pbix` - Interactive Power BI dashboard

## Technology Stack

- **Analytics Platform:** Microsoft Power BI (PBIX format)
- **Data Modeling:** Tabular Model Definition Language (TMDL) with DAX calculations
- **Geospatial:** GeoJSON/TopoJSON for Tel Aviv neighborhood boundaries
- **Data Format:** CSV files with Hebrew text encoding
- **Supplementary:** QGIS for geographic data preparation

## Project Structure

```
escooter_TA_new.pbix          # Main Power BI dashboard (213 MB)
Raw Data/
  markers_hebrew(3).csv       # Accident incidents (location, severity, conditions)
  involved_hebrew(3).csv      # People/vehicles involved (injuries, demographics)
  vehicles_hebrew(3).csv      # Vehicle details (types, registration)
tlv_quarters_new.geojson      # Tel Aviv neighborhood boundaries
pbi_backups/                  # Version history of dashboard iterations
deprecated/                   # Historical/superseded data files
```

## Data Model

Three main tables linked in the Power BI model:

1. **Markers** - Accident locations with coordinates, road names, severity, weather, lighting, road surface, timestamps
2. **Involved** - People and vehicles in accidents with injury severity, demographics, safety measures
3. **Vehicles** - Vehicle-level data including type codes and classifications

DAX measures include:
- Accident totals by vehicle type (e-scooters, bikes, e-bikes, mobility scooters)
- Year-over-year (YoY) and year-to-date (YTD) comparisons
- Geographic filtering by settlement/quarter
- Boolean flags: `IsEscooter`, `IsMicromobility`

## Working with This Project

- PBIX files are ZIP archives containing DataModel, Report/Layout, and configuration JSON
- Data uses Hebrew text with special characters
- Coordinates include both Israeli grid (x,y) and WGS84 (longitude/latitude)
- Manual version control via dated backups in `pbi_backups/`

## Documentation

- `escooter_TA_dec5_datadct.pdf` - Data dictionary and technical documentation
- `E-Scooter Crashes in TA Report (live PBI).pptx` - Main presentation
- Demo videos: `escooter_demo.mp4`, `Escooter_demo_Technion.mp4`
