# E-Scooter Accident Analytics Dashboard - Tel Aviv

An interactive Power BI dashboard analyzing electric scooter crashes, injuries, and road safety data in Tel Aviv-Jaffo, Israel.

## Overview

This project provides comprehensive analytics on micromobility accidents with a focus on e-scooters. The dashboard enables exploration of accident patterns by:

- **Location** - Interactive maps with Tel Aviv neighborhood boundaries
- **Time** - Trends by year, month, day of week, and hour
- **Severity** - Light, moderate, and severe injury classifications
- **Demographics** - Age groups and gender analysis
- **Conditions** - Weather, lighting, road surface, and traffic factors
- **Vehicle Types** - E-scooters, bicycles, e-bikes, and mobility scooters

## Getting Started

### Requirements

- Microsoft Power BI Desktop (free download from Microsoft)

### Opening the Dashboard

1. Download and install [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
2. Open `escooter_TA_new.pbix`
3. The dashboard will load with all data embedded

## Data Sources

The dashboard uses three main datasets located in `Raw Data/`:

| File | Description | Records |
|------|-------------|---------|
| `markers_hebrew(3).csv` | Accident incidents with location and conditions | ~774K |
| `involved_hebrew(3).csv` | People and vehicles involved with injury data | ~1.7M |
| `vehicles_hebrew(3).csv` | Vehicle details and classifications | ~1.3M |

**Geographic Data:** `tlv_quarters_new.geojson` provides Tel Aviv neighborhood boundaries for map visualizations.

**Data Coverage:** 2013-2025

## Project Structure

```
escooter_TA_new.pbix              # Main Power BI dashboard
Raw Data/                         # Source CSV files (Hebrew)
tlv_quarters_new.geojson          # Tel Aviv neighborhood boundaries
pbi_backups/                      # Dashboard version history
E-Scooter Crashes in TA Report (live PBI).pptx  # Presentation
escooter_TA_dec5_datadct.pdf      # Data dictionary
```

## Key Metrics

The dashboard calculates:

- Total accidents by vehicle type
- Year-over-year (YoY) change analysis
- Year-to-date (YTD) comparisons
- Daily averages and trends
- Injury severity distributions
- Geographic hotspots by neighborhood

## Documentation

- **Data Dictionary:** `escooter_TA_dec5_datadct.pdf` - Detailed field definitions
- **Presentation:** `E-Scooter Crashes in TA Report (live PBI).pptx`
- **Demo Videos:** `escooter_demo.mp4`, `Escooter_demo_Technion.mp4`

## Notes

- All data labels are in Hebrew
- Coordinates use both Israeli grid (x,y) and WGS84 (lat/long) formats
- Dashboard versions are manually tracked in `pbi_backups/`

## Related Resources

- [ANYWAY Road Safety Project](https://www.anyway.co.il/) - Open-source road safety data platform for Israel
