# REFERENCE MATERIALS HANDOVER — EPSRC PROPOSAL

This document summarises every thesis, paper, and source document shared during development of the EPSRC proposal "Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion." Each entry records what the source contains, why it matters to the proposal, and how it maps to the reference list.

Use this alongside the main file `EPSRC_Handover_Brief.md`.

---

## HOW THE SOURCES MAP TO THE INTELLECTUAL LINEAGE

The proposal rests on a three-generation intellectual lineage, all from the PI's group:

- **Generation 1 — DCAT (2016):** the voltage-distribution principle
- **Generation 2 — BTMLC IC + TCAS-I level shifters (2026):** monolithic chip-scale integration
- **Generation 3 — this proposal:** applying the platform inside a rotating machine

Supporting the lineage are: three PhD theses (2025–2026) that provide the IC integration, on-chip isolation, motor-drive validation, and battery-balancing evidence base; an aerospace machine paper providing fault-tolerant winding methodology; thermal papers providing cooling co-design methodology; and a transfer viva providing the IMD integration landscape survey.

---

## PRIMARY ENABLING TECHNOLOGY (PI's group)

### [Ref 1] BTMLC IC — Binary-Tree Multilevel Converter on chip
**Citation:** IEEE Transactions on Power Electronics, accepted 2026. DOI: 10.1109/TPEL.2026.3675044
**What it is:** The binary-tree tap-selector from DCAT implemented as a monolithic integrated circuit on 130 nm BCD silicon. Complete drive infrastructure — power switches, gate drivers, floating supplies (Zener-based regulators), dead-time generation, level shifters — all on a single 15.2 mm² die (3.530 mm × 4.297 mm).
**Confirmed measured facts:**
- Max output current 2 A; max output voltage ~26 V (7 × 3.7 V cells)
- Output frequency DC to 5 kHz; 8 voltage levels via 3 binary control signals
- Technology 130 nm BCD, 12-inch wafers, 6 metal layers
- Blocking voltages: Level I blocks Vcell, Level II 2Vcell, Level III 4Vcell
- Switching frequencies inversely proportional to blocking voltage (Level I at 8f_bus, II at 4f_bus, III at 2f_bus)
- Measured path resistance ~0.472 Ω
- Measured chip temperature 50–66°C under 2 A load
- Switching losses ~0.5% of total — conduction-dominated
- Bidirectional; NLC modulation
**Why it matters:** This is the single most important reference — the PI's own preliminary work proving per-slot integration is physically realisable at chip scale. It is DESCRIBED AS preliminary work, NOT a deliverable of the proposed programme.
**What it leaves open (= the proposal's research space):** operation in a machine winding environment (inductive source, back-EMF, variable impedance, mutual coupling), multi-harmonic excitation, mechanical vibration, thermal co-design with winding, operation above 5 kHz.

### [Ref 2] TCAS-I — Multiple-Output Level Shifters with Dead-Time Control
**Citation:** IEEE Transactions on Circuits and Systems I, accepted 2026. DOI: 10.1109/TCSI.2026.3676412
**What it is:** Silicon-integrated multiple-output level-shifter circuits with input-side dead-time control for series-stacked voltage domains, fabricated in the same 130 nm BCD process as the BTMLC IC.
**Confirmed measured facts:** 17× propagation-delay reduction; 22–66× reduction in dead-time spread; validated down to 2 V supply.
**Why it matters:** This is the floating-domain gate-drive architecture that per-slot bilateral drive requires, silicon-validated in the same process. Evidence the team can advance from circuit concept to silicon within one research cycle.

### [Ref 3] DCAT — Adiabatic DC-AC Power Converter
**Citation:** J. Wood, E. Shelton, K. Rathbone, M. Baghdadi, T. Regan, P. Palmer, "Adiabatic DC-AC Power Converter with 99% Efficiency," PCIM Europe, Nuremberg, 2016. No DOI (conference paper); available at gala.gre.ac.uk/id/eprint/15370.
**What it is:** A 2 kW, 400–450 V DC to 230 V AC single-phase converter. Google/IEEE Little Box Challenge finalist. ~400 W/in³ power density.
**Key architectural principles (carry forward to the proposal):**
- Multi-winding autotransformer creates a stack of DC voltage tap levels from the high-voltage input
- Binary-tree MOSFET multiplexer selects between taps to synthesise a stepped half-sinewave
- PWM blender interpolates between steps for fine resolution
- Reverser H-bridge flips alternate half-cycles for full AC
- All main switching adiabatic (ZVS) — near-zero switching losses
- Low-voltage MOSFETs throughout because each winding sees only a fraction of bus voltage
- dV/dt across each winding inherently very low — reduces EMI and insulation stress
- Measured efficiency >99% at 1 kW and 2 kW at 400 V input
**Why it matters:** Establishes the founding principle — a multi-winding magnetic structure distributes a high bus voltage to safe low-voltage levels at each section, and adiabatic switching eliminates switching losses while producing very low dV/dt. In the proposed machine drive, the motor winding IS the voltage-distribution medium.
**What it leaves open:** rotating machine integration, spatial field control, per-slot addressability, variable pole operation, aerospace application.

---

## PHD THESES (PI's group — capability and preliminary evidence)

### [Ref 4] PhD thesis — On-chip power conversion and battery balancing (Qassam Farhat, UCL, 2025)
**Full title context:** "On-Chip Power Conversion and Battery Balancing Circuits for Battery-Powered Applications," PhD thesis, University College London, 2025.
**Central argument:** IC integration is a physical NECESSITY for per-slot/per-cell power conversion, not a design preference, because the floating-domain control infrastructure required per unit would be physically unscalable in discrete form.
**Key content:** This is the doctoral work underpinning the BTMLC IC [Ref 1] and TCAS-I level shifters [Ref 2].
**Critical point for the proposal:** The thesis explicitly lists "motor/inductive-load testing" and "full AC output with motor loads" as FUTURE WORK. The proposed EPSRC programme IS that future work — funded to produce the science the IC platform now makes reachable.
**Note for anonymisation:** The PI requested that personal names (Qassam, Mehdi Z, Pouya) not appear in the proposal body — use [Author] / [Author list] in references and describe contributions as "the group's work" in the narrative.

### [Ref 5] PhD thesis — Cell-scale power processing for BEVs (Mehdi Zarei Tazehkand, UCL, April 2026)
**Full title context:** "Cell Scale Power Processing for Battery Electric Vehicles," PhD thesis, UCL, April 2026.
**Central argument:** Conventional BEV powertrains use separate functional blocks (inverter, charger, DC/DC, balancer); the alternative is distributed power processing into repeated Unified Power Units (UPUs), each combining a cell/cell-group with local power electronics. The UPU philosophy is structurally identical to per-slot drive — many small integrated units each serving one cell/slot instead of one large centralised converter.
**Most relevant content for the proposal:**
- **On-chip digital isolation for floating domains [maps to Ref 5]:** designed and fabricated OCI transformer-based digital isolation using amplitude, pulse, and pulse-train modulation in 130 nm BCD; validated up to 1.5 MHz (AM), 418 kHz (PM); transition delays ~40 ns. Per-slot IC drive requires isolated control signals from master controller to each floating-domain slot IC — this work proves the team can implement that isolation on-chip in the same process as the BTMLC.
- Half-bridge, full-bridge, MMC, CHB power submodules in 130 nm BCD, experimentally validated (5-level CHB, 4-level MMC, isolated half-bridge)
- Established integration boundary: integrate enough to remove repeated control/support circuits, but not so much that IC metal becomes the main power bus
- Also produced the CS2CAB battery balancer [Ref 8]
**Why it matters:** Provides the on-chip signal isolation capability directly applicable to per-slot IC control, plus the conceptual UPU→per-slot bridge.

### [Ref 6] PhD thesis — Ultra-efficient bidirectional power converter (Pouya Kolahian, UCL, February 2026)
**Full title context:** "Ultra Efficient Bidirectional Power Converter for Battery Energy Resources," PhD thesis, UCL, February 2026.
**Central argument:** Battery energy resources need a unified ultra-efficient power interface combining high-resolution DC-AC conversion with hierarchical battery balancing. Three subsystems: Hierarchical Binary Multi-Level Inverter (HB-MLI), MS² pack-level balancer, Multi-winding Foil-wound Equalizer (MFWE).
**MOST RELEVANT CONTENT FOR THE PROPOSAL — three items:**
1. **Three-phase motor drive validation with HB-MLI (critical):** The HB-MLI (same binary-tree family as BTMLC) was tested driving a 40 W induction motor AND a 400 V industrial induction machine with dq0 control and THI validated at 150–500 RPM. THIS IS THE KEY PRELIMINARY EVIDENCE — the group has already physically driven induction motors with their binary-tree multilevel converter family. The claim that per-slot IC drive can operate into a machine winding is not speculative; it is demonstrated at terminal level, and the proposal extends it to per-slot level.
2. **HB-MLI efficiency:** peak 99.46%, above 99% across most of the range, at 1.2 kW, 46°C max under passive cooling. Strengthens the DCAT-lineage efficiency claim.
3. **MS² converter:** resolves the earlier "multiport MS² converter" placeholder. Eight-port converter with magnetising-inductance-based soft switching; 98% isolated mode, 98.8% DCAT mode; validated to 450 W; 47°C max under 450 W. Named, efficiency-quantified prior work in the DCAT converter family.
**Also contains:** MFWE four-cell foil-wound equalizer at 98.94% peak efficiency [Ref 10]; 52 planar inductor prototypes for magnetic miniaturisation.
**Why it matters:** Provides the single strongest feasibility argument — the binary-tree converter family already drives induction machines with back-EMF under closed-loop control.

---

## MULTI-WINDING CONVERTER MODELLING (PI's group)

### [Ref 7] Multiactive Bridge self-balancing system model
**Citation:** F. Grimm, P. Kolahian, R. Bucknall, M. Baghdadi, "A System Model for the Effect of Self-Balancing in Multiactive Bridge Converters," IEEE Transactions on Power Electronics, vol. 40, no. 12, pp. 17988–17997, Dec. 2025. DOI: 10.1109/TPEL.2025.3597231
**What it is:** Validated analytical time-domain system model for self-balancing in multiactive bridge (MAB) converters, representing the multi-winding transformer as an N-port network with magnetisation, stray inductance, and conduction losses. Captures circulating currents and submodule balancing dynamics that average models miss.
**Why it matters:** Directly applicable to WP1 multi-winding electromagnetic characterisation — provides validated analytical methods for multi-winding transformer dynamics.

### [Ref 8] CS2CAB battery balancer
**Citation:** M. Z. Tazehkand and M. Baghdadi, "High-Performance Continuous-Current Capacitive Battery Balancer With Flexibility in Battery Cells Connection and Independent of Cells Location," IEEE Transactions on Power Electronics, vol. 40, no. 9, pp. 13767–13777, Sep. 2025. DOI: 10.1109/TPEL.2025.3558417
**What it is:** Complementary star switched-capacitor active balancer — continuous current, simple complementary-signal control, sensorless operation, flexible series/isolated cell connection.
**Why it matters:** Evidence of experimental power electronics capability and optimisation methodology; supports WP3 optimisation framing.

### [Ref 9] MAB-based DC-link balancing of NPC inverters
**Citation:** F. Grimm, P. Kolahian, R. Bucknall, M. Baghdadi, "Multi-Active Bridge Based DC-Link Balancing of Three-Level NPC Inverters." **[PI TO CONFIRM: venue, year, pages, DOI]**
**What it is:** External DC-link balancing for three-level NPC inverters, separating internal balancing from external load-current control. Verified on a complete motor-drive testbench using Imperix B-Box, Spartan-6 FPGA modulation, and motor load (RL and induction motor).
**Why it matters:** Demonstrates inverter-level integration and motor-drive experimental methodology on real hardware.

### [Ref 10] Foil-wound multi-winding transformer equalizer (MFWE)
**Citation:** "A Foil-Wound Multi-winding Transformer-based Equalizer for Minimized Voltage Discrepancy," IEEE ECCE Europe, 2025. **[PI TO CONFIRM: full author list, pages, DOI]**
**What it is:** Four-cell prototype with single-turn foil-wound transformer; 98.94% peak efficiency; resolves 30% SOC discrepancy in 60 minutes; low leakage.
**Why it matters:** Evidence of precise cell-level active balancing with low leakage and high efficiency; foil-winding magnetics methodology.

---

## ELECTRICAL MACHINE DESIGN (Co-I Asef)

### [Ref 11] Multitooth interactive flux-reversal PM motor
**Citation:** "A Multitooth Interactive Flux Reversal Permanent Magnet Motor," IEEE Transactions on Industrial Electronics, 2026. **[PI TO CONFIRM: full author list, volume, issue, pages, DOI]**
**What it is:** Novel flux-reversal PM motor combining tooth and yoke permanent magnets, optimised using genetic algorithms, validated experimentally against FEA within ~4%. Reported 95% and 669% improvements in torque quality factor over benchmark machines.
**Why it matters:** Evidences Co-I Asef's machine design origination, analytical modelling, optimisation, prototyping, and experimental validation capability for WP1.

### [Ref 12] Fault-tolerant dual three-phase PMSM for eVTOL
**Citation:** Y. Xu, S. Cai, M. Baghdadi, [others], "Comparative Investigation into Fault-Tolerant Dual Three-Phase Permanent Magnet Synchronous Machines with Modular Windings for eVTOL Applications." **[PI TO CONFIRM: full author list with institutions, venue, year, DOI]**
**What it is:** Comparative study of dual three-phase PMSM winding configurations (conventional overlapped, modular, toroidal) for a 48-slot/8-pole machine under healthy, open-circuit, and short-circuit fault conditions, for eVTOL applications.
**Why it matters:** THE strongest single prior output for the proposal's fault-tolerance and aerospace machine claims — exact machine class, exact winding topology comparison, exact application context. Establishes the MMF and winding-factor analysis methods WP1 builds upon. Also evidences multi-institutional collaboration (UK + Northwestern Polytechnical University).

---

## THERMAL MANAGEMENT (Co-I Everts)

### [Ref 13] Hybrid microchannel heat sink analysis
**Citation:** T. Boussaid, K. Motaghedolhagh, A. Shariati, M. Baghdadi, "Thermo-Hydraulic Performance Analysis of Hybrid Enhanced Microchannel Heat Sink Designs." **[PI TO CONFIRM: venue, year, DOI]**
**What it is:** CFD study of hybrid microchannel heat-sink architectures for 100 W/cm² heat flux. Optimised combined rib-and-subdivided-channel design achieves mean heated-wall temperature of 41°C at 18.57 kPa pressure drop.
**Why it matters:** Directly informs the WP2 and WP4 thermal co-design methodology for per-slot IC modules operating in the winding environment.

---

## KEY PRIOR ART (external — for differentiation)

### [Ref 14] CVP — Continuously-Variable-Pole Induction Machine Drive (MOST IMPORTANT TO DIFFERENTIATE FROM)
**Citation:** S. Chaubal, E. Libbos, D. Mukherjee, A. Maheshwari, A. Banerjee, P. T. Krein, "Continuously-Variable-Pole Induction Machine Drive for Electric Vehicles," IEEE ITEC, 2024. DOI: 10.1109/ITEC60657.2024.10598847
**What it does (accurately):** Operates a variable-pole induction machine with simultaneous 2-pole and 6-pole excitation. Optimisation problem finds torque-sharing ratio minimising total drive losses. Control architecture: one pole under vector control, one under scalar. Common-mode voltage injection maximises DC bus utilisation. Validated on 36-slot toroidally wound machine, 18-leg discrete inverter, 40 V bus, 500 RPM, 0.5 Nm. Loss minimum when 6-pole produces ~60% of load torque.
**What it does NOT address:** shared DC bus (full bus voltage at every winding section — PD unaddressed); 18-leg discrete external inverter (no integration); low voltage (40 V — no aerospace/altitude/PD context); only two harmonic orders on shared bus (not N addressable slots); no open-end winding; EV not aerospace; no IC integration.
**Differentiation statement to use:** "The CVP approach demonstrates simultaneous multi-pole excitation minimises losses, but achieves this through shared-bus modulation on a discrete 18-leg inverter, retaining the converter-machine boundary, the full bus voltage at every section, and only two excitable harmonic orders. The proposed architecture achieves the same operational flexibility — and extends it to arbitrary spatial harmonic composition — through a fundamentally different mechanism: per-slot bilateral IC drives where the winding itself distributes voltage to safe levels."

### [Ref 15] Libbos et al. — variable-pole IM inverter design
**Citation:** E. Libbos, E. Krause, A. Banerjee, P. T. Krein, "Inverter design considerations for variable-pole induction machines in electric vehicles," IEEE Transactions on Power Electronics, vol. 37, no. 11, pp. 13554–13565, 2022.
**What it does:** Establishes the 18-leg discrete inverter + toroidally wound VPIM baseline; 2/4/6-pole operation by electronic reconfiguration.
**Position:** Earlier generation of same thread as CVP. Same limitations (shared bus, discrete inverter, no IC, no aerospace). Cite alongside [Ref 14] to establish the discrete variable-pole baseline.

### [Ref 16] Lusuardi et al. — PD at altitude (KEY PD REFERENCE)
**Citation:** L. Lusuardi, A. Rumi, A. Cavallini, "Partial discharge behavior in presence of different insulating materials under variable pressure for aerospace applications," IEEE Transactions on Dielectrics and Electrical Insulation, 2019. DOI: 10.1109/TDEI.2019.008001
**What it is:** Measured PD inception voltage versus pressure data for aerospace insulation. The field-standard quantitative source for altitude-dependent PDIV.
**Why it matters:** Supports the Paschen threshold values (200–300 V at quarter-atmosphere) and the altitude-dependent PD argument central to the Vision.

### [Ref 17] Additional PD-at-altitude references — TO SUPPLY
**[PI TO CONFIRM: 1–2 further peer-reviewed references on PD inception at reduced pressure or turn-to-turn insulation stress under SiC/GaN high dV/dt. Suggested: Yin et al., Montanari, or University of Nottingham aerospace insulation group.]**

### [Ref 18] Sarlioglu & Morris — more electric aircraft review
**Citation:** B. Sarlioglu, C. T. Morris, "More electric aircraft: Review, challenges, and opportunities for commercial transport aircraft," IEEE Transactions on Transportation Electrification, vol. 1, no. 1, pp. 54–64, 2015.
**Why it matters:** Standard citation for more-electric-aircraft context and national-importance framing.

### [Ref 19] Cao et al. — MEA motor technologies
**Citation:** W. Cao, B. C. Mecrow, G. J. Atkinson, J. W. Bennett, D. J. Atkinson, "Overview of electric motor technologies used for more electric aircraft (MEA)," IEEE Transactions on Industrial Electronics, vol. 59, no. 9, pp. 3523–3531, 2012.
**Why it matters:** Standard citation for aerospace machine technology landscape.

### [Ref 20] Hairpin winding AC resistance — TO SUPPLY
**[PI TO CONFIRM: 1–2 references on hairpin fractional-slot winding AC resistance and proximity effect under multi-harmonic excitation. Suggested: Popescu et al. (Motor Design Ltd) or Bianchi et al. on hairpin winding losses in traction machines.]**

### [Ref 21] ATI Destination Net Zero — policy anchor, TO CONFIRM
**[PI TO CONFIRM: exact publication title, edition, year, and URL. Used for £3.2 billion UK AAM market figure.]**

### [Ref 22] ADS Group Facts and Figures — policy anchor, TO CONFIRM
**[PI TO CONFIRM: exact edition year. Used for 111,000 direct UK aerospace jobs figure.]**

---

## ZAC EDWARDS TRANSFER VIVA — IMD INTEGRATION SURVEY (context, not a proposal reference)

**Source:** "Optimised Efficiency and Compact Integration of Drive Unit for Ultra-High-Speed Electric Motors," MPhil-to-DPhil transfer viva draft, 26 May 2026.
**Role:** This is a PhD student's transfer report in the group. It is NOT cited as a reference in the proposal, but it provides the essential understanding of what "integration" means in the current literature — critical for positioning the proposal against reviewer expectations.

**Key facts for positioning the proposal:**
- "Integrated motor drive" in the literature = mounting a conventional inverter on the motor housing (shorter cables, shared cooling, same converter architecture). The voltage partition between converter and machine is NOT dissolved — merely shortened.
- IMD configurations surveyed: radial housing, radial stator, axial housing, axial endplate, distributed radial, IMMD (Integrated Modular Motor Drive), Smart Stator Teeth. Real examples: Danfoss (single-location radial), H3X (distributed radial), Archer (tilt-rotor packaging).
- Eliminating separate housings/shielded cables can reduce volume 10–20% and installation/manufacturing cost 30–40%.
- DC-link capacitors can form ~40% of motor-drive volume — a key miniaturisation target.
- Above ~7.5 kW, thermal management is the primary IMD barrier (co-located electronics and windings).
- PD mitigation in this literature = shorter cables (V_spike = L_parasitic × dI/dt), multilevel voltage steps, better insulation. NOBODY reduces per-slot voltage below the PD inception threshold by design.
- The group is already exploring DCAT-based voltage splitting inside an IMD unit, with circular/annular packaging for nacelle compatibility, and an automated Python design algorithm that found 36 voltage levels feasible within a diameter constraint.
- Machine speed window under consideration: 5,000–15,000 RPM; PMSM selected for power density and reliability.
- Two IMD configurations proposed by Zac: single-DCAT/singly-excited (nearer-term) and dual-DCAT/open-ended winding (higher-potential, more complex) — the latter aligns with the bilateral open-end architecture in this proposal.

**Why this matters for the Vision opening:** When a reviewer reads "integrated motor drive," they picture a conventional inverter mounted closer to the motor. The proposal must explicitly distinguish per-slot bilateral IC drive from this well-known category, immediately, in terms an expert recognises. The Vision opening must engage what expert reviewers already know, then show them what they have not seen: an architecture where the converter as a distinct entity ceases to exist and the per-slot voltage never reaches the PD inception threshold by design.

---

## SkyDrive PROGRAMME (application context — not a reference)

**What it is:** A collaborative industrial aerospace propulsion programme at UCL APL targeting 100 kW, 18,000 RPM integrated electric propulsion, with partners ARC Additive and iNetic. TRL 3–6.
**How to use it:** ONLY in Pathways to Impact / Capability Module 4 as evidence of industrial engagement and translation pathway. NOT as the research target. The EPSRC proposal is fundamental research at demonstrator scale (5–15 kW) that feeds into the larger SkyDrive context. Do NOT use the 100 kW / 18,000 RPM / 1 kV SkyDrive figures as proposal research targets.

---

## ANONYMISATION NOTE

The PI requested that individual researcher names (Qassam Farhat, Mehdi Zarei Tazehkand, Pouya Kolahian, Zac Edwards) NOT appear in the proposal body. In references use [Author] / [Author list] placeholders for PI to fill. In narrative text, describe contributions as "the group's work," "the team has demonstrated," "prior doctoral research in the group," etc. Co-Investigator names (Dr Pedram Asef, Dr Marilize Everts) and the PI name (Dr Mehdi Baghdadi) DO appear normally.
