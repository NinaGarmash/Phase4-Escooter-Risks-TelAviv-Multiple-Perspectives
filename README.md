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
# E-Scooter Safety Analytics — Tel Aviv, Full Integration (Phase 4)

**E-Scooter Safety Analytics · Phase 4 of 4** ⏳ In progress
Part of a longitudinal multi-phase research project on micro-mobility safety in Israel.

---

## Live outputs

📄 **[Helmet Law Impact Analysis (PDF)](https://drive.google.com/file/d/12wUPVA6wVrCO5aCA4F2NSh4VQ4U3GJhx/view?usp=sharing)**
📄 **[Solo Crash Underreporting Study (PDF)](https://drive.google.com/file/d/1yDOfrgqR4Ku8w038n60RrZ-FDGRHATtb/view?usp=sharing)**
📄 **[Conference Abstract — ISTRC 2026 (PDF)](https://drive.google.com/file/d/1MEfFH1yWVjxsaFLYR8m6oUdbzwV/view?usp=sharing)**

---

## What this phase covers

The full integration phase adds three external data sources to the CBS crash records, enabling cross-source validation and producing two standalone research outputs. This is the most analytically complex phase — combining crash microdata with survey self-reports and police enforcement records to triangulate findings that no single source can establish alone.

| Attribute | Value |
|---|---|
| **Geography** | Tel Aviv–Yafo |
| **Years** | 2013–2025 (CBS) · 2019–2022 (surveys) · 2019–2024 (enforcement) |
| **Total accidents** | 9,769 (e-scooter, all party types) |
| **Total people involved** | 19,613 |
| **Data sources** | CBS crash records · Tel Aviv Municipality surveys · Tel Aviv Police enforcement · Populus GIS trip data |
| **Tool** | Power BI Desktop (54-table semantic model) · Python · QGIS |

---

## Key findings

### Helmet law impact (2021)
- CBS crash records show helmet rate rising from **~52% (pre-law, 2018–2020)** to **~70% (post-law, 2021–2024)** among known-status riders
- Tel Aviv Municipality surveys show "always wear helmet" rising from **22% (2019)** to **52% (2022)**
- Police enforcement fines for riding without a helmet dropped **70%** between 2020 and 2021 (from 3,593 to 1,091 tickets)
- All three independent sources converge on the same timeline — the law caused genuine behavioural change

### Solo crash underreporting
- CBS solo crash rate: **~8–12%** of recorded Tel Aviv e-scooter accidents
- Tel Aviv rider survey solo rate: **69% (2021)** and **77% (2022)**
- Projection: CBS captures only **~5% of real solo crash events** — approximately 1 in 20
- Estimated unreported solo crashes: **~680–1,040 per year** (2021–2022 survey period)

### Crash dynamics
- **E-scooter passengers** face 3× higher severe injury risk (~24% severity rate) vs drivers (~8%), despite being only 1.3% of those involved
- **Overturning** increases severe injury likelihood by **4.77×** (Key Influencers AI visual)
- **Helmets reduce severe injury risk by 1.81×** overall; protective effect for males: 1.80× (p=0.002, statistically proven)
- **Age 30–44**: strongest protective effect from helmets (RR 2.90×)

---

## Data sources

### 1. CBS Israel — crash microdata
Central Bureau of Statistics road accident records, vehicle_type=21 (e-scooter), Tel Aviv–Yafo.
2013–2025. ~80% of rider records have unknown helmet status (systematic recording gap).
Available: [data.gov.il](https://data.gov.il/dataset/road_accidents_with_casualties_israel)

### 2. Tel Aviv Municipality surveys (2019–2022)
Annual surveys of shared e-scooter subscribers, distributed via operators (Bird, Lime, Wind, Dott).
N: 2021 ≈2,000; 2022 = 1,875. Covers shared-service riders only — private owners excluded.
Source: Tel Aviv Transport and Parking Authority (רשות התחבורה והחנייה תל אביב-יפו)
Hebrew citation: *סקר קורקינים חשמליים, דצמבר 2021 and 2022. מוגש עבור הרשות לתחבורה ולחנייה*

### 3. Tel Aviv Police enforcement records (2019–2024)
Ticket-level "no helmet" fines and total traffic violations.
Tables: `enforcement_helmet` (granular, ticket_count field) · `enforcement_fines` (summary)
Scope: Tel Aviv city only. Not nationally representative.
**Note**: use `ticket_count` field, not `fine_count` — some events generate 2 tickets.

### 4. Populus GIS trip data
Segment-level shared e-scooter trip counts (shared operators only, not private).
`DailyTrips_PopulusTA.csv`. Used for spatial risk analysis only — not as trip-count denominator
(segment structure causes double-counting of individual trips).

---

## Data model structure (54 tables)

| Prefix | Tables | Purpose |
|---|---|---|
| `fact_` | `fact_Accidents`, `fact_Involved`, `fact_Vehicles` | Core CBS crash records |
| `dim_` | Calendar, VehicleType, Quarters, Streets | Dimension/lookup |
| `&` | 15 bridge/helper tables | Party count pipeline, matrix filters |
| `_Measures` | Single measures table | All ~180 DAX measures |
| `survey_` | helmets, crashes, neighborhoods | Tel Aviv Municipality survey data |
| `enforcement_` | helmet, fines | Tel Aviv Police enforcement |

### Critical party count pipeline (do not modify)
`&BaseAccidentPartySummary → &MultiPartyIDs → &AccidentMatrixSource → &MatrixAccidentIDs → fact_Accidents[PartyCount]`

Result: **583 solo · 8,882 two-party · 304 multi-party** = 9,769 total ✓

---

## Research outputs

### Helmet Law Impact Analysis
Multi-section Word report covering CBS crash data (2013–2025), Tel Aviv Municipality surveys (2019–2022), and Tel Aviv Police enforcement records (2019–2024).

File: `reports/helmet_analysis_v4_final.docx`

Sections:
1. Methodological framework — source matching and population distinctions
2. CBS crash data — annual tables, severity breakdown, demographics
3. Tel Aviv Municipality survey data — compliance frequency, operator helmet usage, demographics
4. Enforcement data — ticket trends, demographic breakdown
5. Cross-source synthesis — convergent evidence, CBS vs hospital comparison

### Solo Crash Underreporting Study
Analysis comparing CBS recorded solo rates (~8–12%) to Tel Aviv rider survey rates (69–77%), producing crash projection and CBS capture rate estimate (~5%).

Files: `reports/ES_Solo_Underreporting_Report.docx` · `reports/Solo_Analysis_CONDENSED_FINAL.docx`

---

## Files in this repo

```
Escooter_TLV_Safety_Phase4/
├── README.md                               ← this file
├── CHANGELOG.md                            ← version history with all data corrections
│
├── pbix/
│   └── escooter_TA_new_0323.pbix           ← current active report
│   └── escooter_TA_new_0307.pbix           ← prior version
│
├── reports/
│   └── helmet_analysis_v4_final.docx       ← helmet law impact (complete)
│   └── ES_Solo_Underreporting_Report.docx  ← solo crash underreporting
│   └── Solo_Analysis_CONDENSED_FINAL.docx  ← condensed solo vs two-party analysis
│
├── data/
│   └── Solo_vs_TwoParty_FINAL.csv
│   └── Rider_Demographics_Solo_vs_TwoParty.csv
│   └── gender_analysis_summary.txt
│   └── final_detailed_conclusion.txt       ← full statistical test specifications
│
└── docs/
    └── raw_data_change_log.md              ← all structural model changes with DAX verification
    └── dax_query_patterns.md               ← reusable DAX patterns (geographic filter, joins)
    └── methodology_notes.md                ← key analytical decisions and caveats
    └── PROJECT_CONTEXT.md                  ← quick-start context for new sessions
    └── handover_log_v5.md                  ← session handover log (latest)
```

---

## Key technical notes

**DAX geographic filter for Tel Aviv:**
```dax
FILTER(ALL(fact_Accidents), NOT(ISBLANK(fact_Accidents[TA Quarter (1-9)])))
```
Note: column name includes parentheses — exact match required.

**Join key between accident and involved tables:** `provider_and_id`

**Vehicle type filter for e-scooters:** `vehicle_type = 21` — always apply this filter.

**Rider-level severity:** `fact_Involved[IsSeverelyInjured]` — distinct from crash-level severity.

---

## Known data quality issues

| Issue | Detail |
|---|---|
| 2025 CBS coverage | Only 8.7% of 2025 e-scooter records have known helmet status — critically low, uninterpretable for helmet compliance |
| 2024 CBS coverage | 8.8% known status — indicative only |
| Solo crash underreporting | CBS captures ~5% of real solo events — solo rates in CBS are not face-value estimates |
| Populus trip data | Shared operators only; segment structure double-counts trips — not suitable as trip denominator |

---

## How this fits into the project

```
Phase 1  →  Phase 2  →  Phase 3a/3b  →  Phase 4
National     Tel Aviv     Tel Aviv         Tel Aviv
all modes    micromobility  e-scooters     full integration
                                          (this repo)
```

← **Phase 3**: [Road_Accidents_in_Israel-2013-2024](../Road_Accidents_in_Israel-2013-2024)

---

## Author

**Nina Garmash, PhD**
ANYWAY Project (DATA FOR CHANGE) · HIT (Holon Institute of Technology)
[LinkedIn](https://www.linkedin.com/in/nina-garmash) · [Portfolio](https://ninagarmash.wixsite.com/data-showcase)


