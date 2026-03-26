# E-Scooter Risks in Tel Aviv from Multiple Perspectives

**E-Scooter Safety Analytics · Phase 4 of 4** ⏳ In progress
Part of a longitudinal multi-phase research project on micro-mobility safety in Israel.

← Previous phase: [Phase 3 — CBS crash analytics](https://github.com/NinaGarmash/Escooter-Accidents-TelAviv-Israel-CBS-2013-2025)

---

## What makes Phase 4 different

| | Phase 3 | Phase 4 |
|---|---|---|
| **CBS scope** | Tel Aviv + national benchmarking | **Tel Aviv only** — no comparison with Israel totals |
| **Data sources** | CBS crash data + OpenDataTLV | CBS + surveys + enforcement + field observations |
| **Spatial layers** | Quarters + streets | Quarters + streets + **bike lanes and road types** (coming) |
| **Outputs** | Single integrated dashboard | Dashboard + **standalone reports on narrow topics** |

The core shift: Phase 3 described *what happened* in CBS crash records. Phase 4 asks *why*, by cross-validating CBS patterns against independent sources that capture different populations and different moments — and by producing focused analytical outputs on specific topics.

---

## Data sources

### 1. CBS Israel — crash microdata
Police-reported road accidents with casualties. Tables: `markers_hebrew`, `involved_hebrew`, `vehicles_hebrew`, linked by accident ID.
Scope: Tel Aviv–Yafo, all micromobility modes, 2013–2025.
Available: [data.gov.il](https://data.gov.il/dataset/road_accidents_with_casualties_israel)

### 2. Tel Aviv Municipality surveys (2019–2022)
Annual surveys of shared e-scooter subscribers, distributed via operators (Bird, Lime, Wind, Dott).
Total N: ~6,000 across four years. 2021: N = 2,000; 2022: N = 1,875.
Covers **shared-service riders only** — private owners excluded.
Source: Tel Aviv Transport and Parking Authority.
Hebrew: *סקר קורקינים חשמליים, דצמבר 2021 and 2022. מוגש עבור הרשות לתחבורה ולחנייה*
Loaded as `survey_` tables in the data model.

### 3. Tel Aviv Police enforcement records (2019–2024)
Ticket-level "no helmet" fines and total traffic violations. 7,561 fines total.
Tables: `enforcement_helmet` (granular, `ticket_count` field) · `enforcement_fines` (summary).
Scope: Tel Aviv city only. Use `ticket_count` field — some events generate 2 tickets.
Loaded as `enforcement_` tables in the data model.

### 4. Field observations (2024–2025)
Direct counts of e-scooter riders at traffic hotspots in Tel Aviv.
N = 1,777 riders, 100 % observed. Captures the **general riding population** (not crash victims or subscribers).
Used for helmet compliance comparison against CBS crash records.
> Note: CBS captures crash victims (biased toward severe events); surveys capture subscribers; observations capture general population. Comparing figures across sources requires matching populations carefully.

### Spatial layers (coming)
- Bike lanes layer (OpenDataTLV)
- Road type classification

---

## Current outputs

### Power BI dashboard
`escooter_TA_new_0323.pbix` — 54-table semantic model, Tel Aviv only.
Open with Power BI Desktop (free). All sources embedded.

### Standalone reports

| File | Topic | Key finding |
|---|---|---|
| `reports/helmet_analysis_FINAL_0324.docx` | Helmet law impact (2019–2025) | Mandatory helmet law (Jan 2019) achieved ~35 pp increase in compliance; enforcement dropped 87% in 2021 but compliance held — the legal norm endured |
| `reports/Solo_2Party_Analysis_FINAL.docx` | Solo vs two-party crash dynamics | Detailed party-level breakdown of crash interactions; severity patterns by counterpart type |

---

## Key findings so far

### Helmet law impact
- CBS crash records: helmet rate rose from **25 % (2018 baseline)** to **~60 % (2019–2024)** among known-status riders
- Tel Aviv surveys: "always wear helmet" rose from **22 % (2019)** to **52 % (2022)**
- Police enforcement fines dropped **87 %** in 2021 (COVID + genuine compliance improvement) and never recovered — compliance remained high regardless
- All three independent sources converge on the same timeline: the January 2019 law caused genuine behavioural change
- Helmets reduce severe injury risk by **2.28× overall** (z = 6.38, p < 0.001); male RR 2.40×, female RR 1.78× — both statistically confirmed
- 2024–2025 CBS helmet coverage collapsed to < 15 % (down from 37.5 % in 2021) — current trends cannot be assessed from CBS alone

### E-scooter passengers
- Only 2.6 % of all e-scooter users in crashes, but **24.3 % severe/fatal injury rate** — 3× higher than drivers (7.8 %)
- Helmeted passengers still show higher severity than non-helmeted drivers — risk elevation is independent of helmet use and reflects tandem riding itself

### Crash dynamics
- E-scooters are **dominant in micromobility crashes since 2020**; highest count in 2025 (50 % of micromobility crashes); highest overall severity (9.8 %) vs e-bikes (8.3 %) and bikes (6 %)
- **Two distinct KPIs**: volume concentrates mid-block, daytime, summer; severity peaks at uncontrolled crossings, poor lighting, night, Saturday/holidays
- Car is the main counterpart in ~43 % of e-scooter crashes; pedestrians ~11 % overall, rising to 14 % in 2024

---

## Data model

54 tables, strict prefix structure:

| Prefix | Purpose |
|---|---|
| `fact_` | Core CBS data — `fact_Accidents`, `fact_Involved`, `fact_Vehicles` |
| `dim_` | Dimension/lookup — calendar, vehicle type, quarters, streets |
| `&` | 15 bridge/helper tables — party count pipeline, matrix filters |
| `_Measures` | All DAX measures (single table) |
| `survey_` | Tel Aviv Municipality rider survey data |
| `enforcement_` | Tel Aviv Police enforcement records |

### Party count pipeline (do not modify)
`&BaseAccidentPartySummary → &MultiPartyIDs → &AccidentMatrixSource → &MatrixAccidentIDs → fact_Accidents[PartyCount]`

---

## Files in this repo

```
├── README.md                              ← this file
├── escooter_TA_new_0323.pbix              ← current Power BI report (all sources embedded)
└── reports/
    ├── helmet_analysis_FINAL_0324.docx    ← Helmet law impact: CBS + surveys + enforcement + observations
    └── Solo_2Party_Analysis_FINAL.docx    ← Solo vs two-party crash dynamics
```

---

## How this fits into the project

```
Phase 1  →  Phase 2  →  Phase 3a/3b  →  Phase 4
National     Tel Aviv     Tel Aviv         Tel Aviv
all modes    micromobility  e-scooters     e-scooters
                                          multi-source
                                          (this repo)
```

← **Phase 3**: [Escooter-Accidents-TelAviv-Israel-CBS-2013-2025](https://github.com/NinaGarmash/Escooter-Accidents-TelAviv-Israel-CBS-2013-2025)

---

## Author

**Nina Garmash, PhD**
ANYWAY Project (DATA FOR CHANGE) · HIT (Holon Institute of Technology)
[LinkedIn](https://www.linkedin.com/in/nina-garmash) · [Portfolio](https://ninagarmash.wixsite.com/data-showcase)
