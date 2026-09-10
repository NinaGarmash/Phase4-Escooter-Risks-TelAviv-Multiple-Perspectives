# A Multi-Source Evidence Framework for E-Scooter Safety Policy in Israel

*From Crash Counts to Safety Priorities in Tel Aviv-Jaffa*

**Principal Investigator:** Dr. Mali Sher, Holon Institute of Technology
**Co-Investigator:** Nina Garmash, Holon Institute of Technology
**Prepared for:** Israeli Smart Transportation Research Center (ISTRC), Call for Policy White Papers 5786/2026

> **Draft status:** v2. Figures in this version are aligned with the current, code-verified analysis underlying the companion peer-reviewed submission (Sher & Garmash, in preparation, *"E-Scooter Safety: A Multi-Source Business Intelligence Framework for Urban Risk Prioritization,"* manuscript prepared for the Journal of Safety Research; source: `Article_2026/drafts/Sher_Garmash_EscooterBI _19072026.docx`, dated July 19, 2026). Several figures used in v1 of this draft came from an earlier code version and have been corrected or dropped where they could not be reconfirmed; see Section 5 for what changed. Sections marked *[expand]* still need additional figures, tables, or maps to reach the ISTRC-required 10-30 pages. The Hebrew executive summary is a separate deliverable, not yet drafted.

---

## Abstract

Electric scooters are now a permanent feature of urban mobility in Israel, and Tel Aviv-Jaffa (TAY) is the country's primary hotspot for e-scooter crashes, accounting for 35.3% of all national e-scooter injury crashes despite being a single city. Municipal and national safety decisions are still largely driven by raw crash counts, which conflate two distinct problems: where crashes happen most often, and where they are most severe. This white paper draws on a multi-source analytical system built for Tel Aviv-Jaffa, integrating twelve years of Central Bureau of Statistics (CBS) crash microdata with municipal GIS layers, shared-mobility exposure data, rider surveys, enforcement records, and field observations. It shows that crash volume and crash severity are driven by different factors in Tel Aviv's e-scooter data: passenger cars account for 43.4% of crashes but the lowest severity rate of any counterpart type, while pedestrians and other micromobility users are involved far less often but carry significantly higher injury severity when they are. Solo falls, meanwhile, are undercounted in police records by a factor of roughly 19 to 1 relative to rider-reported experience, yet carry twice the severity of two-party crashes. The paper translates this evidence base into a place-based prioritization framework, concrete infrastructure and enforcement recommendations, and a transfer template that other Israeli municipalities can adapt as e-scooter use grows nationally.

---

## Executive Summary

**Central policy question:** should Israeli municipalities manage e-scooter safety by targeting where crashes are most frequent, or where they are most severe, and can a single evidence framework do both?

**Background:** e-scooter crashes in Tel Aviv-Jaffa grew roughly 14-fold between 2013 and 2025 (from about 28 to about 400 per year), far outpacing the national road-crash trend, which fell 19% over the same period while micromobility crashes nationally rose about 80%. The city's helmet law and enforcement response have been built largely around aggregate crash and injury totals. This approach obscures two policy-relevant facts. First, the crash type that generates the most incidents, collisions with passenger cars, is also the one with the mildest average outcome for the rider, while rarer crash types (pedestrian and other-micromobility collisions) carry significantly higher severity. Second, solo falls, the single most severe crash type in the data, are the crash type most likely to go unrecorded by police, meaning the official crash record systematically understates exactly the risk that matters most.

This paper uses a crash-counterpart analysis, a five-factor quarter-level composite risk score, a solo-versus-two-party comparison, and a helmet-law impact analysis, all built on the CBS Public Use Files (2013-2025) linked to Tel Aviv's GIS and shared-mobility data, to separate volume from severity and recommend where each type of intervention belongs.

---

## 1. Problem Definition and Background

Electric scooters expanded rapidly in Tel Aviv-Jaffa from 2019 onward, first through shared-operator fleets and then through private ownership, and the city remains Israel's largest concentration of e-scooter trips and e-scooter crashes: 2,684 of the 7,593 e-scooter injury crashes recorded nationally in the CBS data belong to Tel Aviv-Jaffa alone, 35.3% of the national total. Shared-fleet exposure in the city grew 3.6-fold between 2020 and 2024 (from about 91.9 million to about 328.4 million trips), and by 2025 e-scooter crashes carried a severity rate of 9.2% against a 6.5% citywide average across all road-crash types, 1.4 times higher. National and municipal policy responses so far, including the 2019 helmet requirement and periodic enforcement campaigns, have been shaped mainly by aggregate crash and injury counts published in annual CBS releases.

Crash volume and crash severity do not necessarily coincide. A crash type, location, or user group that generates many incidents is not automatically the one associated with the most serious harm, and the reverse is also true: a comparatively rare crash configuration can carry a severity rate far above the citywide average. Count-based policy tends to over-prioritize frequent but lower-severity contexts, because they are the most visible in aggregate statistics, while under-addressing lower-frequency situations with disproportionate injury outcomes. It also tends to miss the broader evidence available on infrastructure exposure, rider behavior, pedestrian involvement, and enforcement patterns, because these require linking crash records to other data sources rather than reading crash totals alone.

International research on shared and private micromobility supports this concern. The International Transport Forum's *Safe Micromobility* (2020) and *Safer Micromobility* (2024) reports both argue that e-scooter safety policy needs to combine infrastructure, exposure, and injury-severity evidence rather than relying on incident counts. Clinical and epidemiological studies of e-scooter injuries (Namiri et al., 2020; Cicchino, Kulie & McCarthy, 2021; Niemann et al., 2023; Dibaj, Vosough, Kazemzadeh, O'Hern & Mladenović, 2024) consistently find that injury severity is concentrated in specific rider behaviors and crash configurations, including solo falls, night-time riding, and helmet non-use, rather than distributed evenly across all crashes. Collision-pattern research on the asymmetry between enclosed and exposed road users (Das et al., 2023) offers a direct explanation for why car-involved crashes, despite being the most common counterpart type in this study, are not the most severe: the vehicle absorbing the collision protects the rider less than it protects itself, but the mass differential still produces a milder average outcome than an unprotected pedestrian or fellow micromobility user colliding directly with the rider. Underreporting of self-reported micromobility incidents relative to official statistics has also been documented elsewhere (Bjørnskau et al., 2025, Norway), consistent with the scale of underrecording found for solo crashes in this study (Section 3.3).

Tel Aviv-Jaffa is Israel's natural case study for this problem, both because it has the country's highest concentration of e-scooter crashes and because it is the only Israeli city with a multi-source dataset detailed enough to separate volume from severity empirically: linked CBS crash microdata, municipal quarter and street GIS layers, four years of municipal rider surveys, police enforcement records, and field observation counts. The goal of this paper is not only to resolve the volume/severity confusion for Tel Aviv-Jaffa, but to produce a transferable analytical template that other Israeli cities facing growing micromobility risk can adapt without needing to rebuild the same infrastructure from scratch.

---

## 2. Data and Methods *[expand: add a short data-table figure]*

The analysis integrates five sources, all linked at the crash, rider, or quarter level:

1. **CBS Public Use Files, 2013-2025** (Israel Central Bureau of Statistics, 2018, 2026) — the core dataset, covering road accidents with casualties in Tel Aviv-Jaffa. Three linked tables (accident-level, involved-person-level, vehicle-level) cover all e-scooter and broader micromobility crashes citywide.
2. **Municipal GIS layers** (Tel Aviv-Yafo Municipality, 2026a) — quarter boundaries, street networks, and bicycle-path infrastructure, used to locate every crash within Tel Aviv-Jaffa's administrative and infrastructure geography.
3. **Shared-mobility exposure data** (Tel Aviv-Yafo Municipality / Populus, 2026b, 2020-2024) — trip-level exposure by quarter, used to convert raw crash counts into per-trip and per-density risk rates rather than relying on counts alone.
4. **Tel Aviv Municipality rider surveys (2019-2022)** — annual surveys of shared e-scooter subscribers (approximately 6,000 respondents across four years), used for helmet-wearing and ownership trends and for self-reported solo-crash rates among shared-service riders.
5. **Police enforcement records and field observations**, including 2025 direct rider counts at traffic hotspots, used to check whether enforcement intensity and current helmet use track actual risk.

This white paper draws its figures from the same underlying multi-source system built for a companion peer-reviewed submission (Sher & Garmash, in preparation), which formalizes three analyses used below: a crash-counterpart breakdown, a five-factor place-based composite risk score, and a solo-versus-two-party comparison, alongside the helmet-law and passenger analyses. Readers should treat the two documents as sharing one evidence base, with this paper translating it into policy language and municipal recommendations rather than presenting new statistical methodology.

---

## 3. Key Research Findings

### 3.1 Crash counterparts show volume and severity moving in opposite directions

The clearest illustration of the paper's central argument comes from asking not just how many e-scooter crashes occur, but who or what the rider collided with. Across all 2,684 recorded Tel Aviv-Jaffa e-scooter crashes:

| Counterpart | Share of crashes | Severity rate | Significance |
|---|---|---|---|
| Passenger car | 43.4% (n=1,164) | 6.7% | Significantly *below* average (p<0.001) |
| Solo (no counterpart) | 9.9% (n=267) | 18.0% | — |
| Pedestrian | 10.2% (n=273) | 13.2% | Marginal (p=0.078) |
| Motorcycle | 9.5% (n=255) | 9.0% | Not significant |
| Other/unknown | 9.4% (n=252) | 4.8% | p=0.003 |
| Other micromobility (bicycle, e-bike, etc.) | 5.9% (n=158) | 17.7% | p=0.001 |
| Bus | 5.3% (n=143) | 12.6% | Not significant |
| Cargo/heavy vehicle | 3.9% (n=106) | 14.2% | Borderline (p=0.054) |
| Multi-party | 2.5% (n=66) | 21.2% | Highest of any category (p=0.003) |

Passenger cars are by far the most common crash counterpart, roughly four times more common than any other single category, yet crashes involving a car carry the *lowest* severity rate in the table. Restricting the comparison to two-party crashes only (n=2,351, excluding solo and multi-party incidents) sharpens this: cars account for 49.5% of two-party crashes at 6.7% severity, while pedestrians (13.2%, p=0.009) and other micromobility users (17.7%, p<0.001) are the only counterpart types with significantly elevated severity.

This is not a coincidence of Tel Aviv's data. Collision research on the asymmetry between enclosed and exposed road users (Das et al., 2023) explains the pattern: a car's mass and structure absorb more of the collision energy than a pedestrian's or a fellow rider's body can, so encounters with cars, despite dominating the crash count, are proportionally less likely to produce the most severe outcome for the e-scooter rider. A policy built only on "what does the e-scooter crash with most often" would direct attention toward car interactions; the severity data says the sharper safety gap is with pedestrians and other micromobility users.

### 3.2 A five-factor composite score separates high-volume from high-severity locations

Rather than ranking Tel Aviv-Jaffa's 15 quarters by crash count, the analysis scores each quarter on a weighted composite:

**Pi = 0.30 × crash density + 0.25 × per-trip risk + 0.20 × severity rate + 0.15 × (1 − bike-path share) + 0.10 × volume gate**

normalized to a 0-1 scale and grouped into five tiers (Critical ≥0.70, Urgent 0.55-0.69, Elevated 0.45-0.54, Watch 0.30-0.44, Lower <0.30). The ranking is robust across five alternative weighting specifications (ρ = 0.956-0.994 agreement between specifications).

**Quarter 5 (City Center)** is the sole Critical-tier quarter, combining the city's highest crash density with a 2025 severity rate of 15.3%, well above the citywide e-scooter average. **Quarters 15 and 8** fall in the Urgent tier. **Quarters 9, 13, 6, and 10** fall in the Elevated tier. This tiering matters precisely because it does not reduce to a simple crash-count ranking: a quarter can reach a high tier through severity and infrastructure gap even where its raw crash count is unremarkable, and a quarter with a high raw count does not automatically reach the top tier unless density, severity, and infrastructure gap align, as they do in Quarter 5.

Bicycle-path infrastructure share of the local street network is associated with lower crash density in a cross-sectional comparison across quarters (ρ = -0.79). This association should be read as directional evidence for infrastructure investment, not as a proven causal effect: a quarter-year panel model testing the same relationship over time did not find it statistically significant (incidence rate ratio 0.85, p=0.94), likely reflecting the limited number of years and quarters available for a within-quarter comparison. The cross-sectional pattern is strong enough to justify infrastructure prioritization as this paper's third policy recommendation, but a stronger causal design (a longer panel, or before/after evaluation of specific bike-path extensions) is needed before the relationship can be presented as established.

### 3.3 Solo crashes are rare in police records, severe when they occur, and substantially underrecorded

Solo e-scooter crashes, no other vehicle, pedestrian, or rider involved, account for 9.9% of recorded crash volume in Tel Aviv-Jaffa but carry an 18.0% severity rate versus 8.9% for two-party crashes overall, roughly 2.02 times higher.

The more consequential finding concerns how much of this crash type never reaches the police record at all. Tel Aviv Municipality rider surveys report that 69% (2021) and 77% (2022) of respondents' most recent crashes were solo falls, while the CBS crash record for the same two years shows solo crashes at only 12.6% and 12.4% of the total respectively. Comparing the reported and recorded shares, the true burden of solo crashes is on the order of 19 times what police data alone would suggest. Riders without a second party to the incident, and without a vehicle involved, appear far less likely to generate a police report, meaning the crash type carrying the highest severity is also the one most invisible to the standard evidence base municipalities use for planning.

Location and time also matter for solo severity: at intersections, solo-crash severity reaches 38.1% versus 16.3% away from intersections (odds ratio 3.2, Fisher's exact p=0.032), the sharpest severity gap found anywhere in this analysis. Away from intersections, solo-crash severity is higher at night than during the day (20.8% versus 11.9%), though this difference is only marginally significant (Fisher's exact p=0.083) and should be treated as suggestive rather than conclusive.

### 3.4 The helmet law reduced injury severity; recent compliance is better tracked through field observation than through CBS records

Comparing riders with known helmet status, non-helmeted riders show a 39.5% severe/fatal injury rate versus 17.4% for helmeted riders, a risk ratio of 2.27 (p<0.001). This finding is consistent with a Copenhagen study using computer-vision helmet detection, which found a comparable reduction in severe injury associated with helmet-law enforcement (Siebert, Riis, Janstrup, Lin & Hüttel, 2023), and with the broader international literature on the injury-reducing effect of helmet use in micromobility crashes.

Self-reported helmet use among shared-service subscribers in the municipal survey rose from 22% ("always wear a helmet") in 2019 to 52% in 2022. A 2025 field-observation count at traffic hotspots found approximately 79% current helmet use, a materially more current and more positive indicator than the CBS-recorded trend can provide. This distinction matters because helmet status is recorded in the CBS crash data for only about 25% of riders overall, which is also why helmet status was excluded as a variable from the paper's crash-severity regression model; the CBS-based data simply lacks the coverage needed to track recent-year compliance reliably, and the field-observation figure should be treated as the better available proxy for current conditions.

Enforcement intensity does not track where or when risk is highest. No-helmet enforcement is disproportionately concentrated on weekday mornings, while evenings and nights, which carry higher severity, are comparatively under-enforced; Fridays, the single highest-severity day in the no-helmet crash data, receive a low share of enforcement activity. At the quarter level, Quarters 3 and 4 are over-enforced and Quarters 7 and 9 are under-enforced relative to their share of no-helmet crashes. This mismatch, not a specific fine total, is the actionable enforcement finding; total fine counts from earlier internal drafts could not be reconciled against the current verified analysis and are not used in this version.

### 3.5 Passengers carry more than double the injury risk of solo drivers, and helmet use alone does not close the gap

E-scooter passengers, a second rider carried on a single scooter, show a 21.4% severe/fatal (KSI) rate versus 9.1% for solo drivers, 2.3 times higher (n=70 passenger involvements). Notably, the gap persists even among helmeted riders: helmeted passengers still show a 33.3% KSI rate versus 18.3% for helmeted drivers, nearly double. This suggests that carrying a passenger on a single scooter, itself, elevates risk independent of helmet use, most plausibly through reduced stability and control rather than through a helmet-specific mechanism. The sample remains modest (n=70) and the ratio should be read as directional rather than precise, but the persistence of the gap among helmeted riders is a meaningful finding on its own and supports treating passenger-carrying as a distinct regulatory target from helmet compliance.

### 3.6 International evidence context

The literature reviewed alongside this analysis points toward the same three areas this paper's findings support. Safety-in-numbers research (Jacobsen, 2003; Elvik & Bjørnskau, 2017) provides the general logic behind infrastructure investment: as protected space for micromobility increases, both exposure and per-user risk tend to move favorably, consistent with the bike-path association found in Section 3.2. Helmet-law evaluation using objective detection methods (Siebert et al., 2023) corroborates the magnitude of the local helmet effect (Section 3.4) using an independent method in a comparable European city. A comprehensive review of e-scooter injury interventions (Kumar et al., 2024) surveys the same countermeasure space, infrastructure, enforcement, and rider education, this paper's recommendations draw on. Demographic risk-factor studies from Türkiye (Arikan Öztürk, Karaçor & Bayirtepe, 2024) and Austria (Frank et al., 2024) find consistent overrepresentation of young and male riders among severe e-scooter injuries internationally; the current Tel Aviv-Jaffa analysis does not yet include a reconfirmed local demographic breakdown at the same level of detail (Section 5), so this pattern is presented as international context rather than a locally replicated finding at this stage.

---

## 4. Detailed Policy Recommendations

**1. Separate volume-based prevention from severity-based protection, using counterpart type as the clearest local evidence for why.** The most common crash counterpart, passenger cars, is also the least severe; the rarer counterparts, pedestrians and other micromobility users, are significantly more severe. Programs aimed at reducing car-involved crash frequency (signage, speed management at car/scooter conflict points) should be run as a separate track from programs aimed at reducing pedestrian and micromobility-interaction severity (shared-path redesign, right-of-way clarity, enforcement at pedestrian-heavy locations), since the same intervention will not serve both goals equally well.

**2. Adopt the five-factor composite score as a standing municipal prioritization tool.** Quarter 5 (City Center) should receive immediate combined infrastructure and enforcement investment as the city's only Critical-tier quarter; Quarters 15 and 8 (Urgent tier) should be next in line; Quarters 9, 13, 6, and 10 (Elevated tier) should receive scheduled review on the next data refresh. The formula's weights (density 0.30, per-trip risk 0.25, severity 0.20, infrastructure gap 0.15, volume gate 0.10) should be treated as a starting point that Tel Aviv-Jaffa, and any transferring municipality, can recalibrate against local priorities.

**3. Prioritize bike-path continuity as a directional, not yet proven-causal, infrastructure lever, and treat intersections as a separate, higher-confidence priority.** The cross-sectional association between bike-path share and lower crash density (ρ = -0.79) justifies prioritizing infrastructure investment in low-coverage, high-density quarters such as Quarter 5, but the paper's own panel analysis did not confirm this as a causal, within-quarter effect; municipalities should treat bike-path expansion as a well-supported hypothesis worth piloting and evaluating, not a guaranteed fix, and should build before/after evaluation into any such rollout. Intersection design deserves separate, higher-confidence attention: solo crashes at intersections carry the sharpest severity gap found anywhere in this analysis (38.1% versus 16.3%), pointing to intersection geometry and signal timing for micromobility as a distinct priority from midblock lane provision.

**4. Build differentiated responses for the highest-risk crash configurations identified here.** Solo riders at intersections are the highest-confidence severe-risk group in this analysis and the group least visible in aggregate statistics; targeted intersection-specific awareness and design should be built around this group rather than folded into general e-scooter messaging. Passenger-carrying should be treated as its own regulatory target, not solely a helmet-compliance issue, given that the risk gap persists even among helmeted riders (Section 3.5); this may include reinforcing or clarifying existing single-rider rules and messaging that specifically addresses the stability risk of carrying a second person. Pedestrian- and other-micromobility-interaction locations identified through the counterpart analysis should be prioritized for shared-path redesign and right-of-way signage ahead of car-interaction locations, which, while more frequent, carry lower severity.

**5. Build a repeatable, gap-aware evidence architecture rather than a one-time study.** Helmet-status non-reporting, missing for roughly 75% of CBS-recorded riders, should be closed at the point of police intake or systematically supplemented with recurring field-observation counts like the 2025 count used here, since CBS coverage is currently too thin to track recent-year compliance on its own. Solo-crash underrecording (roughly 19 times higher in rider surveys than in police records) should be treated as a structural, not incidental, gap: municipalities should adopt a standing survey-to-CBS adjustment ratio, refreshed periodically, rather than relying on police records alone for solo-crash burden estimates. Enforcement records should be restructured so that fine activity can be benchmarked directly against quarter-level and time-of-day severity patterns, since the current mismatch (weekday-morning over-enforcement against evening/night and Friday under-enforcement) could not even be reconciled to a single fine total across existing internal records during this analysis.

**6. Package the framework as a transfer template, not a Tel Aviv-Jaffa-specific result.** The value of this framework for other Israeli cities is the method, not the Tel Aviv-Jaffa numbers themselves. A transfer template should specify: (a) the minimum data prerequisites (linked crash microdata, quarter/street GIS layers, and some form of trip-exposure data, ideally from shared-operator feeds where shared fleets operate); (b) the five-factor composite scoring logic, reweighted for local conditions; (c) a counterpart-type breakdown as the fastest, lowest-data-burden way for a new city to check whether its own volume and severity drivers diverge, since it requires only the crash record itself; and (d) the volume/severity-separation principle as the analytical starting point, regardless of a city's absolute crash numbers. This makes the framework usable by mid-sized Israeli cities that have far less data than Tel Aviv-Jaffa but are seeing similar growth in micromobility risk.

---

## 5. Data Limitations and What Changed From the Previous Draft

This draft supersedes v1 of this document, which relied on an earlier, since-revised version of the underlying analysis code. The following figures from v1 could not be reconfirmed against the current verified analysis and have been dropped or replaced in this version:

- The car-counterpart share is now confirmed at **43.4%** (not an unverified "~43%" as in v1); this is now a citable, table-sourced figure (Section 3.1).
- The helmet risk ratio is **2.27** (39.5% vs. 17.4%), not 2.28 (39.5% vs. 17.3%) as stated in v1; the difference is minor but the current figure is the one to cite.
- The v1 claim of a specific yearly CBS-based helmet-wearing trend (25.0% → 59.3% → 64.9%, peaking at 71.9% in 2022) and a coverage collapse to 14.7% in 2025 do not appear in the current verified analysis and should not be used; the current analysis instead supports the 2025 field-observation estimate of ~79% current use as the better recent indicator (Section 3.4).
- The v1 solo-crash figures of "10.2% of crashes" and a "2.81× rider-level severity ratio" are revised to **9.9%** and the confirmed **2.02× crash-level ratio**; the rider-level 2.81× figure could not be reconfirmed and has been dropped. The v1 night-time framing ("48.7% vs. 29.9% in the 18:00-05:59 window") has been replaced with the confirmed, narrower finding (11.9% day vs. 20.8% night, non-intersection solo crashes only, marginal significance).
- The v1 passenger figures (24.3% vs. 7.7%, a 3.1× ratio, n=18/74) are replaced with the confirmed **21.4% vs. 9.1%, a 2.3× ratio, n=70**, which uses a more consistent KSI-based denominator (Section 3.5).
- The v1 quarter-scoring methodology (four equal-weighted 25% components, Quarter 5 described as "Old North/coastal strip") is replaced with the confirmed five-factor weighted formula and correct quarter identification (Quarter 5 is City Center). The v1 claim of a citywide ρ = -0.48 volume-severity correlation, the Quarter 6/7 "medium-burden" tier, and the Quarter 3/4/14 "watch" tier could not be reconfirmed and have been dropped.
- The v1 claim of Quarter 9's 3.61× solo overrepresentation with 57.1% severity, and the male/female solo severity split (20.3% vs. 11.3%), do not appear in the current verified analysis and have been dropped rather than carried forward as fact.
- The v1 enforcement fine totals (7,561 and 11,358, previously flagged as an unresolved conflict) do not appear in the current verified analysis either; neither figure is used in this version, which instead relies on the qualitative enforcement-misalignment pattern (Section 3.4).

Limitations that remain open in this version:

- Helmet status is still recorded for only about 25% of CBS riders; this is why it was excluded from the severity regression model, and any statement about current compliance should rely on the 2025 field-observation estimate rather than CBS trend data.
- The bike-path/crash-density association (ρ = -0.79) is cross-sectional; a quarter-year panel model did not confirm it as a statistically significant within-quarter effect (IRR 0.85, p=0.94). This should be presented as directional evidence, not a proven causal relationship, in both this paper and any dissemination materials.
- The passenger-risk comparison (Section 3.5) is based on a modest sample (n=70) and should be read directionally.
- Demographic breakdowns (age, gender) at the local, quarter, or solo-crash level could not be reconfirmed in the current analysis and are not included in this draft; if ISTRC reviewers expect a demographic dimension, it should be re-derived from the current pipeline before the final submission rather than restated from the earlier version.
- The companion peer-reviewed manuscript this paper draws on is still in preparation and not yet publicly citable; author order and final title should be confirmed before the ISTRC submission references it directly.

---

## 6. References *(to be finalized — merge with the companion manuscript's full 40-entry bibliography before submission)*

Arikan Öztürk, N., Karaçor, T., & Bayirtepe, S. (2024). Police-reported electric scooter accidents in Türkiye. *Traffic Injury Prevention*, 25(8), 1089-1097. <https://doi.org/10.1080/15389588.2024.2363478>

Bjørnskau, T., et al. (2025). Bicycle and e-scooter accidents missing from official statistics. *Traffic Safety Research*, 9, e000108. <https://doi.org/10.55329/prfq7240>

Cicchino, J. B., Kulie, P. E., & McCarthy, M. L. (2021). Severity of e-scooter rider injuries associated with trip characteristics. *Journal of Safety Research*, 76, 256-261. <https://doi.org/10.1016/j.jsr.2020.12.016>

Das, S., et al. (2023). Collision patterns and the enclosed/exposed road-user asymmetry. *Transportation Research Record*, 2678, 575-589. <https://doi.org/10.1177/03611981231185770>

Dibaj, S., Vosough, S., Kazemzadeh, K., O'Hern, S., & Mladenović, M. N. (2024). An exploration of e-scooter injuries and severity: Impact of restriction policies in Helsinki, Finland. *Journal of Safety Research*, 91, 271-282. <https://doi.org/10.1016/j.jsr.2024.09.006>

Elvik, R., & Bjørnskau, T. (2017). Safety-in-numbers: A systematic review and meta-analysis. *Safety Science*, 92, 274-282. <https://doi.org/10.1016/j.ssci.2015.07.017>

Frank, C., et al. (2024). E-scooter accident trends and prevention, Vienna. *European Journal of Trauma and Emergency Surgery*, 50, 2895-2904. <https://doi.org/10.1007/s00068-024-02594-9>

International Transport Forum. (2020). *Safe micromobility.* OECD Publishing. <https://doi.org/10.1787/0b98fac1-en>

International Transport Forum. (2024). *Safer micromobility.* OECD Publishing. <https://doi.org/10.1787/0d2e0dd5-en>

Israel Central Bureau of Statistics. (2018). *Public Use File (PUF): Road accidents with casualties, extended type, abbreviated downloadable file.*

Israel Central Bureau of Statistics. (2026). *Road accidents with casualties* [2013-2025 data files]. cbs.gov.il

Jacobsen, P. L. (2003). Safety in numbers: More walkers and bicyclists, safer walking and bicycling. *Injury Prevention*, 9(3), 205-209. <https://doi.org/10.1136/ip.9.3.205>

Kumar, A., et al. (2024). Comprehensive review of e-scooter injury interventions. *Injury*, 55(12), 111967. <https://doi.org/10.1016/j.injury.2024.111967>

Namiri, N. K., Lui, H., Tangney, T., Allen, I. E., Cohen, A. J., & Breyer, B. N. (2020). Electric scooter injuries and hospital admissions in the United States, 2014-2018. *JAMA Surgery*, 155(4), 357-359. <https://doi.org/10.1001/jamasurg.2019.5423>

Niemann, M., Braun, K. F., Otto, E., Tiefenbrunner, M., Wuster, J., Stockle, U., Ahmad, S. S., Mardian, S., & Graef, F. (2023). Dangers of e-mobility: A systematic review and meta-analysis of sustained injury patterns and injury severity. *Safety Science*, 167, 106283. <https://doi.org/10.1016/j.ssci.2023.106283>

Sexton, R., et al. (2023). Shared e-scooter rider safety behavior in the United States: A review. *Transport Reviews*, 43, 1263-1285. <https://doi.org/10.1080/01441647.2023.2219838>

Sher, M., & Garmash, N. (in preparation). *E-scooter safety: A multi-source business intelligence framework for urban risk prioritization.* Manuscript prepared for the Journal of Safety Research.

Siebert, F. W., Riis, K. B., Janstrup, K. H., Lin, T., & Hüttel, F. B. (2023). Helmet-law impact on e-scooter injury, assessed by computer vision, Copenhagen. *[full journal citation to verify]*

Tel Aviv-Yafo Municipality. (2026a). *GIS infrastructure layers: quarters, streets, bicycle paths* [data set]. data.tel-aviv.gov.il

Tel Aviv-Yafo Municipality. (2026b). *Shared micromobility exposure data, 2020-2024* [data set, Populus MDS]. data.tel-aviv.gov.il

*Note: this list has been trimmed to the citations actually referenced in the text above. The companion manuscript's full 40-entry bibliography (`Article_2026/drafts/Sher_Garmash_EscooterBI _19072026.docx`) covers additional relevant literature, injury epidemiology, demographic risk factors, and BI/dashboard methodology, that should be reviewed and merged in before final ISTRC submission, along with full verification of the Siebert et al. (2023) journal details.*
