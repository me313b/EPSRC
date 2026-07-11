# 04 — Evidence Base

*Summaries of every source. Read the PDFs in `sources/` only when exact quotes/figures beyond these are needed.*

## Anchors (lineage predecessors — PI's group)

**BTMLC IC** — "On-Chip Design and Implementation of a Battery-Cell-Level Binary-Tree Multilevel Converter," *IEEE TPEL*, 2026. DOI: 10.1109/TPEL.2026.3675044. *The single most important reference — direct predecessor of the per-slot module.* 15.2 mm², 130 nm BCD; 2 A; ~26 V; 8 levels; DC–5 kHz; path R ~0.472 Ω; 50–66 °C at 2 A; switching losses ~0.5%; bidirectional; gate drivers, level shifters, dead-time, Zener floating supplies all on-chip. Leaves open: machine-winding environment, multi-harmonic excitation, vibration, thermal co-design, >5 kHz — the programme's territory. PDF: `sources/On-Chip_Design_...pdf`

**Hybrid/scalable BTMLC** — preprint (engrXiv), Mar 2026, same PhD chapter. On-chip low-voltage modules + discrete higher-voltage stages; 20.52 mm²; up to 6 A; 98.5% peak efficiency; two modules stacked via off-chip half-bridge → voltage beyond one die. Evidences the WP2 scaling path from 2 A/26 V to per-slot aerospace duty. PDF: `sources/Farhat_Hybrid_BTMLC_...pdf`

**DCAT** — Wood, Shelton, Rathbone, Baghdadi, Regan, Palmer, "Adiabatic DC-AC Power Converter with 99% Efficiency," PCIM Europe 2016. 2 kW, 400–450 V→230 V AC; >99% at 1–2 kW; ~400 W/in³; Little Box finalist. Multi-winding **autotransformer + binary-tree tap selector**; fully adiabatic ZVS; low per-winding dV/dt. Establishes magnetic voltage distribution. (Describe as adiabatic DC-AC converter with autotransformer + binary-tree tap selector — NOT a "solid-state transformer".) PDF: `sources/BAGHDADI_Adiabatic_...pdf`

**TCAS-I level shifters (A8)** — *IEEE TCAS-I*, 2026. DOI: 10.1109/TCSI.2026.3676412. 130 nm BCD; 17× delay reduction; 22–66× dead-time-spread reduction; supply to 2 V. Silicon-validated floating-domain gate drive in the same process. PDF: `sources/Multiple-Output_Level_Shifters_...pdf`

## The A-papers (group track record)

- **A1** Grimm, Kolahian, Bucknall, Baghdadi — MAB self-balancing system model, *IEEE TPEL* 40(12):17988–17997, 2025. DOI: 10.1109/TPEL.2025.3597231. → validated multi-winding analytical methods → WP1.
- **A2** Tazehkand & Baghdadi — CS²CAB balancer, *IEEE TPEL* 40(9):13767–13777, 2025. DOI: 10.1109/TPEL.2025.3558417.
- **A3** Grimm et al. — MAB DC-link balancing of 3-level NPC inverters, [PI TO CONFIRM: venue/year/DOI]. Verified on full motor-drive platform (Imperix B-Box, FPGA, motor load).
- **A4** Foil-wound multi-winding equalizer, *IEEE ECCE Europe* 2025 [PI TO CONFIRM: authors/pages/DOI]. 98.94% peak; sub-1% SOC in 60 min.
- **A5** Xu, Cai, Baghdadi et al. — fault-tolerant dual 3-phase PMSMs, modular windings, eVTOL, [PI TO CONFIRM: venue/year/DOI]. 48-slot/8-pole; healthy/OC/SC. **Exact machine class + application context.**
- **A6** Asef et al. — multitooth flux-reversal PM motor, *IEEE TIE* 2026 [PI TO CONFIRM: details]. GA-optimised; FEA within ~4%; 95%/669% torque-quality gains.
- **A7** Boussaid et al. — hybrid microchannel heat sinks, [PI TO CONFIRM: venue/DOI]. CFD at 100 W/cm²; 41 °C wall at 18.57 kPa. → WP2/WP4 thermal.
- Track-record headline order: **A5, A6, A8, A7**; A1–A4 supporting.

## Theses (anonymise in body; cite in references)

- **Kolahian**, "Ultra Efficient Bidirectional Power Converter for Battery Energy Resources," PhD UCL, Feb 2026. **(i) HB-MLI binary-tree converter driving a real 400 V three-phase industrial induction machine, 150–500 RPM, closed-loop dq0** — the group's own precedent for machine-load/back-EMF conditions (WP2's territory at per-slot scale). (ii) MS² converter, 98.8% in DCAT mode, to 450 W. PDF: `sources/PhD_Thesis_Pouya.pdf`
- **Tazehkand**, "Cell Scale Power Processing for BEVs," PhD UCL, Apr 2026 (234 pp). (i) **On-chip digital isolation for floating domains in 130 nm BCD** (OCI transformer; AM to ~1.5 MHz; ~40 ns) → per-slot control-signal routing. (ii) UPU concept — distributing conversion to the point of consumption (optional Vision framing bridge). PDF: `sources/Final_Thesis_Mehdi_Z_00.pdf`
- **Farhat** — PhD UCL 2026 (BTMLC + hybrid preprint + A8); EPSRC studentship **EP/T517793/1**; now postdoc, Queen's Belfast. Thesis text: `sources/QFT.txt`

## Context (NOT cited) — Edwards IMD survey

Transfer viva, May 2026 (`sources/Transfer Viva 2nd draft 26-05.pdf`). Establishes what "integration" means in the literature: IMD = conventional inverter on the housing; partition shortened, not dissolved. Configs: radial housing/stator, axial housing/endplate, distributed radial, IMMD, Smart Stator Teeth (Danfoss, H3X, Archer examples). DC-link caps ≈ 40% of drive volume; >~7.5 kW thermal is the IMD barrier; housing/cable removal cuts volume 10–20%, cost 30–40%. **Nobody reduces per-slot voltage below PD inception by design — the proposal's distinguishing move.** Group already exploring DCAT voltage-splitting in an IMD w/ annular packaging; dual-DCAT/open-end config aligns with this proposal.

## External prior art

- **CVP** — Chaubal, Libbos, Mukherjee, Maheshwari, Banerjee, Krein, *IEEE ITEC* 2024. DOI: 10.1109/ITEC60657.2024.10598847. Primary variable-pole prior art (UIUC). Terminal-level shared-bus modulation; 18-leg discrete inverter; 40 V; two harmonic orders. **Does not distribute voltage to slot level, does not engage insulation physics, retains the partition.** PDF: `sources/Continuously-Variable-Pole_...pdf` (also `2011.12164v1.pdf` = Libbos arXiv version)
- **Libbos et al.**, *IEEE TPEL* 37(11):13554–13565, 2022 — variable-pole inverter design baseline.
- **Lusuardi, Rumi, Cavallini**, *IEEE TDEI* 2019. DOI: 10.1109/TDEI.2019.008001 — **the quantitative PD-at-altitude anchor.**
- [PI TO CONFIRM: 1–2 further PD refs (Yin/Montanari/Nottingham); 1–2 hairpin winding refs (Popescu/Bianchi)]
- **MEA context:** Sarlioglu & Morris, *IEEE TTE* 1(1):54–64, 2015; Cao et al., *IEEE TIE* 59(9):3523–3531, 2012.

## Policy anchors

- **ATI "Engineering Growth" Technology Strategy, May 2026** (`sources/ATI.txt` if added): EPU **10 kW/kg 2030 → 15 kW/kg**; **high-voltage** = 2030 electrical-architecture milestone; MW-scale distributed power architectures; MW-class distribution demonstrator; £8 bn by 2035; £1→£14. **The collision:** named route (high voltage) vs physics at altitude (PD at 200–300 V).
- **ATI market figure** ~£3.2 bn UK AAM by 2030 [PI TO CONFIRM: exact source/edition].
- **ADS Group** ~111,000 UK aerospace direct jobs [PI TO CONFIRM: edition].
- **SkyDrive** (context only, never the research target): 100 kW, 18,000 RPM, ARC Additive & iNetic.
