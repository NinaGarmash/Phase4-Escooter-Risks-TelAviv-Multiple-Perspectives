# E-Scooter Risks in Tel Aviv from Multiple Perspectives

**E-Scooter Safety Analytics · Phase 4 of 4** ⏳ In progress
Part of a longitudinal multi-phase research project on micro-mobility safety in Israel.

← Previous phase: [Phase 3 — CBS crash analytics](https://github.com/NinaGarmash/Phase3-Escooter-Accidents-TelAviv-CBS-2013-2025)

---

## What makes Phase 4 different

| | Phase 3 | Phase 4 |
|---|---|---|
| **CBS scope** | Tel Aviv + national benchmarking | **Tel Aviv only** — no comparison with Israel totals |
| **Data sources** | CBS crash data + OpenDataTLV | CBS + surveys + enforcement + field observations |
| **Spatial layers** | Quarters + streets | Quarters + streets + **bike lanes and road types** (coming) |
| **Outputs** | Single integrated dashboard | Dashboard + **standalone reports on narrow topics** |

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

### 3. Tel Aviv Police enforcement records (2019–2024)
Ticket-level "no helmet" fines and total traffic violations. 7,561 fines total.

### 4. Field observations (2024–2025)
Direct counts of e-scooter riders at traffic hotspots in Tel Aviv.
N = 1,777 riders, 100% observed.

---

## Current outputs

### Power BI dashboard
`escooter_TA_phase4.pbix` — 54-table semantic model, Tel Aviv only.
Open with Power BI Desktop (free). All sources embedded.

### Standalone reports

| File | Topic |
|---|---|
| `REPORTS/HELMET_USE_ES.docx` | Helmet law impact (2019–2025) |
| `REPORTS/QUARTERS_TA.docx` | Quarter-level spatial analysis |
| `REPORTS/Solo_2Party_Analysis_FINAL.docx` | Solo vs two-party crash dynamics |

---

## Key findings so far

### Helmet law impact
- CBS crash records: helmet rate rose from **25% (2018)** to **~60% (2019–2024)**
- Tel Aviv surveys: "always wear helmet" rose from **22% (2019)** to **52% (2022)**
- Helmets reduce severe injury risk by **2.28× overall** (p < 0.001)

### E-scooter passengers
- Only 2.6% of all e-scooter users in crashes, but **24.3% severe/fatal injury rate** — 3× higher than drivers

### Crash dynamics
- E-scooters dominant in micromobility crashes since 2020
- Car is the main counterpart in ~43% of e-scooter crashes

---

## Data model

54 tables, strict prefix structure:

| Prefix | Purpose |
|---|---|
| `fact_` | Core CBS data |
| `dim_` | Dimension/lookup tables |
| `&` | Bridge/helper tables |
| `_Measures` | All DAX measures |
| `survey_` | Tel Aviv Municipality rider survey data |
| `enforcement_` | Tel Aviv Police enforcement records |

---

## Repository structure

```
├── README.md
├── escooter_TA_phase3.1.pbix     ← Phase 3.1 dashboard
├── escooter_TA_phase3.2.pbix     ← Phase 3.2 dashboard (last working)
├── escooter_TA_phase4.pbix       ← Phase 4 dashboard (current)
└── REPORTS/
    ├── HELMET_USE_ES.docx
    ├── QUARTERS_TA.docx
    └── Solo_2Party_Analysis_FINAL.docx
```

---

## Author

**Nina Garmash, PhD**
ANYWAY Project (DATA FOR CHANGE) · HIT (Holon Institute of Technology)
[LinkedIn](https://www.linkedin.com/in/nina-garmash) · [Portfolio](https://ninagarmash.wixsite.com/data-showcase)
