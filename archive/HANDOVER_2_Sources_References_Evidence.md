# HANDOVER 2 — SOURCES, REFERENCES & EVIDENCE BASE
## EPSRC Standard Grant: "Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion"

*Companion to HANDOVER 1 (project state, Vision text, EPSRC rules, next steps). This document transfers the complete evidence base: the PI's papers shared during drafting, the doctoral theses, prior-art and policy references, the master reference list as drafted, and the track-record facts — plus the outstanding confirmations. Compiled from the drafting thread ("Variable-pole aerospace electric propulsion strategy"), where the papers were uploaded and analysed.*

---

## 1. The group's own outputs — the eight uploaded papers (A1–A8)

These were shared as PDFs in the drafting thread and mined for confirmed, measured results. Each entry gives the citation as confirmed, the key numbers, and what it evidences for this proposal.

**A1 — Grimm, F., Kolahian, P., Bucknall, R., Baghdadi, M., "…self-balancing model for multiactive bridge converters,"** *IEEE Trans. Power Electron.*, vol. 40, no. 12, pp. 17988–17997, Dec. 2025. DOI: 10.1109/TPEL.2025.3597231.
Validated time-domain self-balancing model for multiactive-bridge (MAB) converters. → Evidences validated **multi-winding analytical methods**, directly applicable to WP1 multi-winding electromagnetic characterisation.

**A2 — Tazehkand, M. Z. and Baghdadi, M., "High-Performance Continuous-Current Capacitive Battery Balancer With Flexibility in Battery Cells Connection and Independent of Cells Location" (CS²CAB),** *IEEE Trans. Power Electron.*, vol. 40, no. 9, pp. 13767–13777, Sep. 2025. DOI: 10.1109/TPEL.2025.3558417.
High balancing speed, sensorless control, scalable architecture. → Experimental power-electronics capability; produced by a doctoral student during the programme (development-of-others evidence).

**A3 — Grimm, F., Kolahian, P., Bucknall, R., Baghdadi, M., "Multi-Active Bridge Based DC-Link Balancing of Three-Level NPC Inverters,"** [PI TO CONFIRM: venue, year, pages, DOI/arXiv].
Separates internal balancing from external load-current control; verified on a complete motor-drive platform (Imperix B-Box, FPGA modulation, motor load). → **Inverter-level integration + motor-drive experimental methodology.**

**A4 — [PI TO CONFIRM: full author list], "A Foil-Wound Multi-winding Transformer-based Equalizer for Minimized Voltage Discrepancy,"** *Proc. IEEE ECCE Europe*, 2025. [PI TO CONFIRM: pages, DOI].
**98.94% peak efficiency at 100 kHz; sub-1% SOC cell balance in 60 minutes.** → Multi-winding magnetic design and experimental validation.

**A5 — Xu, Y., Cai, S., Baghdadi, M., et al. [co-authors incl. Edwards, Zhang, Luo — PI TO CONFIRM institutions], "Comparative Investigation into Fault-Tolerant Dual Three-Phase PMSMs with Modular Windings for eVTOL Applications,"** [PI TO CONFIRM: venue, year, DOI].
Conventional overlapped vs modular vs toroidal windings, **48-slot/8-pole machine**, healthy / open-circuit / short-circuit conditions. → **The exact machine class, winding-topology space, reliability framing and application context of this programme**; also multi-institutional collaboration evidence.

**A6 — Asef, P. (lead) et al., "A Multitooth Interactive Flux Reversal Permanent Magnet Motor,"** *IEEE Trans. Ind. Electron.*, 2026. [PI TO CONFIRM: vol., issue, pages, DOI].
GA-optimised; **95% and 669% improvements in torque quality factor** over benchmarks; **FEA agreement within ~4%**. → Co-I Asef's machine-design origination, optimisation and experimental-validation capability.

**A7 — Boussaid, T., Motaghedolhagh, K., Shariati, A., Baghdadi, M., "Thermo-Hydraulic Performance Analysis of Hybrid Enhanced Microchannel Heat Sink Designs,"** [PI TO CONFIRM: venue, year, DOI].
CFD of hybrid microchannel heat sinks at **100 W/cm²**; optimised rib-and-subdivided-channel design achieves **41 °C mean heated-wall temperature at 18.57 kPa pressure drop**. → Co-I Everts' thermal evidence; directly informs the per-slot IC/winding **thermal co-design (WP2/WP4)**.

**A8 — Farhat, Q. and Baghdadi, M., multiple-output level shifters with input-side dead-time control for series-stacked voltage domains,** *IEEE Trans. Circuits Syst. I*, 2026. DOI: 10.1109/TCSI.2026.3676412.
130 nm BCD; **17× propagation-delay reduction; 22–66× dead-time-spread reduction; supply down to 2 V**. → Silicon-validated floating-domain gate-drive circuits in the same process as the BTMLC — the "TCAS-I level-shifter IC" of the lineage.

**Selection guidance already agreed:** for the aerospace track record, headline with **A5, A6, A8, A7** (in that order of relevance); use A1–A4 as supporting evidence for multi-winding modelling, DC-link balancing, active balancing and experimental power electronics.

## 2. The two anchor references (PI's group, pre-A-series)

**BTMLC IC — Farhat, Q. and Baghdadi, M., "On-Chip Design and Implementation of a Battery-Cell-Level Binary-Tree Multilevel Converter,"** *IEEE Trans. Power Electron.*, accepted 2026. DOI: 10.1109/TPEL.2026.3675044.
*The single most important reference — the direct technological predecessor of the per-slot IC module.* Confirmed measured performance: **15.2 mm²** (3.530 × 4.297 mm), 130 nm BCD, 12-inch wafers, 6 metal layers; **2 A max output; ~26 V max (7 × 3.7 V cells); 8 output levels (3 binary control signals); DC–5 kHz demonstrated; ~0.472 Ω path resistance; 50–66 °C chip temperature at 2 A; switching losses ~0.5% of total; bidirectional; gate drivers, level shifters, dead-time circuits and Zener-based floating supplies all on-chip.**
Did NOT address: machine-winding environment (inductive source, back-EMF, mutual coupling), multi-harmonic excitation, vibration, thermal co-design with conductors, operation above 5 kHz — this is precisely the programme's territory.

**DCAT — Wood, J., Shelton, E., Rathbone, K., Baghdadi, M., Regan, T., Palmer, P., "Adiabatic DC-AC Power Converter with 99% Efficiency,"** PCIM Europe, Nuremberg, 2016.
2 kW, 400–450 V DC → 230 V AC; **>99% efficiency at 1 kW and 2 kW; ~400 W/in³**; Google/IEEE Little Box Challenge finalist. Multi-winding **autotransformer + binary-tree MOSFET tap selector**; fully adiabatic ZVS; low-voltage MOSFETs throughout; inherently low per-winding dV/dt.
Established: **magnetic voltage distribution** and adiabatic switching. Did NOT address: rotating machine, spatial field control, per-slot addressability, variable poles.
*(Description note, PI-confirmed: DCAT is an adiabatic DC-AC converter using a multi-winding autotransformer and binary-tree tap selector — do NOT describe it as a "multiport DC solid-state transformer".)*

## 3. The doctoral theses (shared during drafting)

**Kolahian, P., "Ultra Efficient Bidirectional Power Converter for Battery Energy Resources,"** Ph.D. thesis, University College London, Feb. 2026.
Contributes two proposal-critical results: (i) **HB-MLI binary-tree converter driving a real three-phase 400 V industrial induction machine at 150–500 RPM under closed-loop dq0 control** — the team's own experimental precedent for the *machine-load / back-EMF condition* that WP2 investigates at per-slot scale; (ii) the **MS² converter achieving 98.8% efficiency in DCAT mode at up to 450 W**.

**Tazehkand, M. Z., "Cell Scale Power Processing for Battery Electric Vehicles,"** Ph.D. thesis, University College London, Apr. 2026.
Contributes: (i) **on-chip digital isolation for floating-domain power submodules in 130 nm BCD** — directly applicable to per-slot IC control-signal routing; (ii) the **UPU (unit-level power processing) concept** — distributing conversion to the point of consumption — available as an optional Vision framing paragraph (drafted in the thread) that grounds the per-slot idea in the team's validated battery-domain precedent.

**Farhat, Q.** — PhD completed UCL 2026 (outputs are the BTMLC and A8 papers above); funded by **EPSRC studentship EP/T517793/1**; now a postdoctoral fellow in high-frequency power electronics.

## 4. Intellectual lineage table (use verbatim where useful)

| Work | What it proved | Remaining gap |
|---|---|---|
| DCAT (Wood, Baghdadi et al., 2016) | Adiabatic binary-tree tap conversion achieves >99% efficiency; windings distribute voltage | Transformer only, not machine winding as source |
| HB-MLI motor drive (Kolahian thesis, 2026) | Binary-tree multilevel converter drives induction motors with back-EMF | Terminal-connected only, not per-slot bilateral |
| On-chip isolation (Tazehkand thesis, 2026) | Floating-domain control signals isolated on-chip in 130 nm BCD | Battery domain only, not winding domain |
| TCAS-I level shifter (Farhat & Baghdadi, 2026) | Floating-domain gate-drive circuits work in the same process | Stacked battery domain only |
| BTMLC IC (Farhat & Baghdadi, 2026) | Complete per-slot drive infrastructure fits on 15.2 mm² | Demonstrated on battery-cell resistive loads only |
| **This proposal** | All of the above applied to the per-slot machine winding | The research programme |

*"Every component of the proposed architecture has a prior experimental demonstration within this group — just not yet in the machine-winding context. That is precisely what EPSRC funds at TRL 1–3."*

## 5. Prior art, context and policy references (as drafted)

- **[11] Chaubal, S., Libbos, E., Mukherjee, D., Maheshwari, A., Banerjee, A., Krein, P. T.,** "Continuously-Variable-Pole Induction Machine Drive for Electric Vehicles," *IEEE ITEC*, 2024. DOI: 10.1109/ITEC60657.2024.10598847. — **Primary variable-pole prior art (UIUC — not the team's own work).** Agreed framing: CVP demonstrates the principle *at terminal level*; this proposal extends it to *slot-level* control, which is architecturally distinct. It does not distribute voltage to slot level, does not engage insulation physics, retains the partition.
- **[12] Libbos, E., Krause, E., Banerjee, A., Krein, P. T.,** "Inverter design considerations for variable-pole induction machines in electric vehicles," *IEEE Trans. Power Electron.*, 37(11), 13554–13565, 2022.
- **[13] Lusuardi, L., Rumi, A., Cavallini, A.,** "Partial discharge behavior in presence of different insulating materials under variable pressure for aerospace applications," *IEEE Trans. Dielectr. Electr. Insul.*, 2019. DOI: 10.1109/TDEI.2019.008001. — **The quantitative PD-at-altitude anchor** (pressure-dependent PDIV data).
- **[14] [PI TO CONFIRM]** 1–2 further peer-reviewed PD references (PDIV at reduced pressure; turn-to-turn stress under SiC/GaN switching; aerospace insulation qualification). Suggested authors: Yin, Cavallini, Montanari, or the Nottingham aerospace-insulation group.
- **[15] Sarlioglu, B. and Morris, C. T.,** "More electric aircraft: Review, challenges, and opportunities…," *IEEE Trans. Transp. Electrific.*, 1(1), 54–64, 2015.
- **[16] Cao, W., Mecrow, B. C., Atkinson, G. J., Bennett, J. W., Atkinson, D. J.,** "Overview of electric motor technologies used for MEA," *IEEE Trans. Ind. Electron.*, 59(9), 3523–3531, 2012.
- **[17] [PI TO CONFIRM]** hairpin fractional-slot winding references (AC resistance modelling, slot fill, proximity effect under multi-harmonic excitation) — suggested starting points Popescu et al. / Bianchi et al.
- **[18] Aerospace Technology Institute, "Destination Net Zero," 2022** [PI TO CONFIRM exact edition + archival citation] — intended anchor for the **~£3.2 bn UK AAM market by 2030** figure.
- **[19] ADS Group, "UK Aerospace, Defence, Security and Space: Facts and Figures"** [PI TO CONFIRM edition] — intended anchor for the **~111,000 UK aerospace jobs** figure.

## 6. Master reference list — structure as drafted (≈680/1,000 words used)

IEEE numeric style; DOIs, no hyperlinks; lives in the **separate References section**, never in the V&A PDF. Order as drafted in the thread: **[1]–[3]** the three primary group references (BTMLC IC, TCAS-I level shifter, DCAT — exact order per the drafting thread's References section); **[4]** Grimm MAB (A1); **[5]** Grimm NPC (A3); **[6]** Tazehkand CS²CAB (A2); **[7]** foil-wound equalizer (A4); **[8]** Asef flux-reversal (A6); **[9]** Xu eVTOL (A5); **[10]** Boussaid thermal (A7); **[11]–[12]** variable-pole prior art; **[13]–[14]** PD/insulation; **[15]–[16]** MEA context; **[17]** hairpin; **[18]–[19]** policy. **Plus two additions to insert:** the **Kolahian** and **Tazehkand theses** (drafted as insertions alongside the group references). Remaining ~320 words reserved for the TO-CONFIRM entries.

## 7. ⚠️ CRITICAL — citation-numbering reconciliation (do this before submission)

The **revised Vision text** (in HANDOVER 1 and in `Vision_and_Approach.docx`) carries inline keys inherited from an earlier numbering: **[7]** group prior silicon, **[13]** PD dominant mechanism, **[14,15]** variable-pole prior art, **[16]** Paschen/altitude, **[21]** AAM market, **[22]** aerospace jobs. These **do not match** the master list in §6 (where variable-pole = [11,12], PD = [13,14], MEA = [15,16], market = [18], jobs = [19], and [21]/[22] do not exist). **Task:** once the References section is final, renumber every inline marker in the Vision (and later the Approach) against it. The mapping by *meaning* is unambiguous; only the numbers need aligning.

## 8. Track-record facts (for the R4RI Capability section — separate 1,500-word section)

- PI supervision: **~12 PhD students as first supervisor (6 completed); ~6 co-supervised**, across power electronics, electrical machines, integrated converters, electric propulsion.
- Doctoral researchers publishing IEEE Transactions during their programmes: **Farhat** (BTMLC TPEL + A8 TCAS-I; now postdoc), **Tazehkand** (CS²CAB TPEL 2025), **Grimm** (co-supervised; A1 + A3; now at Lund University).
- **SkyDrive programme**: 100 kW, 18,000 RPM integrated aerospace electric propulsion, in collaboration with **ARC Additive and iNetic** — industrial engagement + high-speed machine capability evidence.
- **EPSRC studentship EP/T517793/1** funded Farhat — prior EPSRC investment in this line of research.
- Reviewing: PI + both Co-Is review for IEEE TPEL, TIE, TCAS, IET Power Electronics. [PI TO CONFIRM: editorial boards, conference committees, panel memberships, keynotes.]
- Facilities: **UCL APL** — dynamometer (WP4 validation; [PI TO CONFIRM: envelope covers 6,000–10,000 RPM at 5–15 kW]), power-electronics lab (high-speed scopes, electronic loads), real-time HIL platform, EM/power/thermal modelling tools; **BTMLC/TCAS-I BCD design flows transfer directly**. Grant procures only project-specific items (prototype machine, 12–18 discrete IC boards, high-bandwidth differential probes, thermal imaging). No EPSRC national facility required → Facilities section likely "N/A"-style statement, as drafted.

## 9. Evidence-management state (ATLAS)

The ATLAS claim–source matrix (five Vision claims) was part-populated: claim 1 (PD dominant failure mode) and claim 3 (PDIV reduction at altitude) were provisionally linked to the internal `EPSRC_Proposal_2026_Rev1.docx` — **flagged for replacement with peer-reviewed sources**; claim 2 (insulation inadequacy under PWM) linked to a web fragment ("Suppression of partial discharges in high-voltage rotating machines"); claims 4–5 (national importance; materials gap) **need a strong quantitative citation** — the agreed fix is **Lusuardi [13]** (plus a [14] companion). Two PD web fragments were judged too weak to stand as sole evidence. **Rule adopted: no claim rests solely on a web fragment or the internal doc.**

## 10. Outstanding confirmations — consolidated checklist

1. Venue/year/DOI for **A3** (Grimm NPC), **A4** (author list, pages, DOI), **A5** (venue + co-author institutions), **A6** (vol/issue/pages/DOI), **A7** (venue/DOI).
2. **[14]** PD companion reference(s); **[17]** hairpin references.
3. **[18]** ATI edition + archival citation (and that it supports **£3.2 bn by 2030**); **[19]** ADS edition (and that it supports **~111,000 jobs**).
4. Exact ordering of **[1]–[3]** and insertion points of the two theses in the final References section.
5. **Renumber Vision inline citations** per §7 once the list is final.
6. APL **dynamometer envelope** (6,000–10,000 RPM at 5–15 kW).
7. Eaton / Airbus **letters of support** (named in Impact; also feed the Project Partners sections).
8. PI/Co-I **community roles** for R4RI Module 3.

---

*Where the originals live: the eight papers and both theses were uploaded in the drafting thread ("Variable-pole aerospace electric propulsion strategy"); the ATLAS app holds the claim–source matrix. For the new clean thread, attach this handover with HANDOVER 1 — and re-attach any paper the thread needs to quote measured numbers from directly.*
