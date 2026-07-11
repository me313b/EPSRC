# MASTER HANDOVER — EPSRC Standard Grant
## "Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion"

*This is a complete, deduplicated state transfer merged from four prior handover files. It contains everything needed to resume work in a fresh session: project concept, the full working Vision text, the EPSRC rules, the complete evidence base and reference list, track-record facts, and the outstanding decisions. Paste this whole document as the opening message of the new conversation.*

---

## 0. WHAT I WANT FROM THE NEW SESSION

1. **Absorb this entire brief** — concept, evidence base, Vision text, EPSRC rules.
2. **Develop the proposal**, then **go through it section by section.**
3. **For each section, produce several different EPSRC-style variants** so I can choose. I prefer options over a single guess.
4. Keep everything in the **EPSRC Funding Service format** described in §4.

Start with the section I nominate (or, if I don't nominate one, start with the Vision opening — that is the live decision, see §5a).

---

## 1. PROJECT IDENTITY

- **Scheme:** EPSRC Standard Research Grant (UKRI Funding Service, current format)
- **Title:** Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion
- **PI:** Dr Mehdi Baghdadi, UCL Advanced Propulsion Laboratory
- **Co-I 1:** Dr Pedram Asef — electrical machines lead (WP1 electromagnetic design)
- **Co-I 2:** Dr Marilize Everts — thermal management lead (WP2/WP4 thermal)
- **Industrial partners:** Eaton, Airbus — *letters of support NOT yet confirmed (flagged throughout)*
- **Duration:** 36 months | **Theme:** D — Engineering | **TRL:** 1–3 only (architecture, multi-physics co-design framework, bench-scale validation; no flight hardware, no certification)
- *Note: a separate proposal, BESafe (residential battery fire safety), is already submitted and closed — used only as a style source. Ignore it.*

---

## 2. THE CORE CONCEPT

A **per-slot bilateral IC drive**: one integrated-circuit pair at every stator slot, each driving its own winding section across an **open-end winding**. The bus voltage is distributed **magnetically** across the winding so that **no winding section ever exceeds 20–50 V**, regardless of the 270 V bus. Partial discharge (PD) is therefore eliminated by **voltage architecture**, not by insulation.

There is no central converter, no converter-to-machine cabling, and no terminal at which the full bus voltage appears. The IC is simultaneously the machine's per-slot excitation source and the converter's switching element; the winding conductor is simultaneously the force-producing medium and the converter's voltage-distribution network. **Converter and machine become the same physical object** — this is the framing that separates the proposal from conventional "integrated motor drive" (IMD) work (see §2b).

### 2a. The cascade — one architectural decision, many consequences

- **PD eliminated by physics:** per-slot 20–50 V vs Paschen minimum ~200–300 V at quarter-atmosphere → margin factor **4–15×**. PD conditions never exist.
- **End-windings architecturally eliminated:** hairpin conductors terminate directly at IC modules at the stator end-face; no copper outside the active magnetic length → axial length shortens, winding resistance drops **20–40%**.
- **Variable pole count as a software parameter:** every slot independently controlled → any spatial harmonic composition → gearbox eliminated.
- **Multi-phase operation:** effective phase count = number of driven sections (6–9) → smoother torque, better fault tolerance, lower per-section current.
- **Graceful fault tolerance:** one module fails → others redistribute; nine-section machine retains **~89% torque** vs **~58%** for a three-phase machine losing one phase; degradation is continuous, not a step (matches aerospace derating requirements).
- **Improved cooling:** end-winding elimination removes the hardest-to-cool part of the stator; terminations exposed at the end-face where cooling is most effective.
- **Reduced torque ripple:** adiabatic zero-voltage switching (ZVS) produces inherently smooth per-section voltage transitions.
- **Power density improvement:** external inverter cabinet, cables, busbars, filters, and gearbox all removed.

### 2b. Why IC integration is NECESSARY, not optional (critical novelty argument)

A discrete implementation of per-slot bilateral drive would require, per slot section: isolated gate-drive supplies, floating-domain level shifters, dead-time generators, gate drivers, and switching devices — ~36 sets for 18 slots bilateral. The control hardware alone would exceed the machine volume. **This is why nobody has done it — not because the concept is unknown, but because it was physically unrealisable without the IC platform this team has built.** IC integration is the enabling breakthrough.

### 2c. Standing content rule (repeat in every relevant section)

Immediately distinguish this proposal from conventional IMD literature, where IMD = a conventional inverter mounted on the motor housing. IMD merely **shortens** the converter–machine partition; this proposal **dissolves** it. When a reviewer reads "integrated motor drive" they picture a conventional inverter mounted closer to the motor — pre-empt that, explicitly, in expert terms.

---

## 3. CONFIRMED TECHNICAL PARAMETERS (keep consistent everywhere)

| Parameter | Value |
|---|---|
| DC bus voltage | 270 V |
| Per-slot voltage envelope | 20–50 V |
| Demonstrator power | 5–15 kW |
| Demonstrator speed | 6,000–10,000 RPM |
| Slot count | 18 |
| Driven sections | 6–9 |
| IC modules total | 12–18 (bilateral) |
| Electrical frequency range | 100 Hz – 3 kHz |
| Application scale (IMPACT NARRATIVE ONLY — not the research target) | 50–100 kW, 15,000–20,000 RPM, AAM/eVTOL |
| Paschen minimum inception (quarter-atmosphere, ~25 kPa) | ~200–300 V |
| Paschen margin factor | 4–15× |
| Winding thermal environment | 120–150 °C |
| Control freedom | N elements / 2N degrees of freedom |
| Fault tolerance | ~89% torque retained (9-section, 1 failure) vs ~58% (3-phase) |
| BTMLC IC (predecessor chip) | 15.2 mm², 2 A, ~26 V, DC–5 kHz, 130 nm BCD |
| DCAT converter | >99% efficiency at 2 kW, ~400 W/in³ |
| SkyDrive (application context only) | 100 kW, 18,000 RPM |
| UK AAM market | ~£3.2 bn by 2030 [PI TO CONFIRM: ATI] |
| UK aerospace direct jobs | ~111,000 [PI TO CONFIRM: ADS Group] |

---

## 4. EPSRC FUNDING SERVICE FORMAT (verified)

The Vision & Approach (V&A) answers one question: **"What are you hoping to achieve with and how will you deliver your proposed work?"** Vision = the *what*; Approach = the *how*.

**Format:** max **6 sides A4 + 1 page** diagrammatic workplan (Gantt); single spacing; margins ≥ 2 cm; **Arial 11 pt** or equivalent sans-serif; single PDF ≤ 8 MB; filename = application number + "Vision and Approach"; type "attachment supplied" in the text box.

**Keep OUT of the 6 pages** — each is a separately-assessed section with its own limit:

| Section | Limit | Notes |
|---|---|---|
| Summary | 550 w | Plain-English, public-facing |
| Applicant & team capability | 1,500 w | R4RI, exact four module headings |
| References | 1,000 w | Inline [n] keys; list lives here; DOIs, **no hyperlinks** |
| Partner contributions | 1,000 w | Template table |
| Facilities | 250 w | Formal request for **EPSRC-listed** facilities only → likely an "N/A"-style statement here |
| Resources & cost justification | 1,000 w | |
| Ethics & RRI | 500 w | |
| Thematic area | — | **D** |

**Vision criteria:** excellent quality/importance; advances understanding / new knowledge; timeliness; impact on research/society/economy/environment; **name direct and indirect benefits and beneficiaries**. Must pass three tests: (1) Jet Zero named; (2) a quantified UK figure with source; (3) explicit pre-competitive / public-good "why EPSRC not industry" justification.

**Approach criteria:** effective & appropriate to objectives; feasible + **comprehensive risks & mitigations**; clear methodology; builds on previous work; maximises translation of outputs→outcomes; research environment (place, location, relevance); demonstrates facility/equipment access; **project plan with milestones + timeline** (the +1 Gantt page). Must state explicitly that **WP1 and WP2 run in parallel from month 1**, WP3 begins analytically from month 1, and only WP4 is dependent — reviewers penalise sequential WP structures.

**Voice rules:** never "novel"/"innovative" as standalone adjectives (say specifically what is new); never "this project will investigate" → "this programme will establish"; no passive voice in openings; lead with the problem before the solution; expand acronyms per-section; format unconfirmed items as **[PI TO CONFIRM: …]**; state word count at the end of each section.

**Anonymisation:** individual researcher names (Farhat, Tazehkand, Kolahian, Edwards) must NOT appear in the proposal body — use [Author]/[Author list] in references and "the group's work" in narrative. **PI and Co-I names DO appear.**

---

## 5. THE VISION — FULL WORKING TEXT

Structure: six conventional sub-headings. Everything from "The Research Opportunity" onward is **settled text**. The **opening is the one live decision** (§5a): the chosen option **replaces** the "Background and Research Challenge" opening.

### 5a. Opening — CHOOSE ONE (live decision)

**Option A — "The binding constraint is insulation, not magnetics or thermal"** *(sharpest reframe)*

> As aerospace propulsion pushes to higher DC-bus voltages in pursuit of power density, the binding constraint moves out of the magnetic and thermal domains — where the field has mature design tools — and into one where it does not: insulation. Above a few hundred volts, and especially at the reduced air pressure of cruise altitude, partial discharge becomes the mechanism that limits how hard a winding can be driven and how long it survives [13,16], and the wide-bandgap devices adopted for converter efficiency only sharpen it. The discipline's responses — better dielectrics, multilevel voltage steps, inverters mounted onto the machine — are all ways to help the winding *survive* the full bus voltage. None questions whether the winding must *see* the full bus voltage at all. This proposal shows that it need not — and that removing this single architectural assumption lifts not only the insulation limit but several of the field's hardest constraints at once.

**Option B — "Certifying machines against a self-inflicted failure mode"** *(most vivid)*

> A high-voltage aerospace machine can pass every insulation qualification on the ground and begin ageing on its first revenue flight. At cruise the ambient pressure falls to roughly a quarter of sea level, the Paschen minimum collapses, and the partial-discharge inception voltage in air drops into the normal operating range of standard winding geometries [16]; a machine that was silent at sea level then discharges continuously at altitude, eroding insulation for thousands of flight-hours before any qualification model predicts failure [13]. Wide-bandgap switching, adopted for efficiency, only accelerates it. The field is, in effect, certifying machines against a failure mode that its own enabling technologies create — and every countermeasure operates inside one fixed architecture, in which the converter and the machine are separate objects and the winding must therefore withstand the entire bus voltage. This proposal removes that necessity, and with it the failure mode.

**Option C — "Power density and efficiency bought against insulation life"** *(most self-contained; lands the 20–50 V mechanism in the opening)*

> In high-voltage aerospace drives, the two levers the field pulls hardest — raising DC-bus voltage for power density and switching wide-bandgap devices faster for efficiency — are precisely the two that drive partial discharge, the dominant life-limiting mechanism in the machine [13]. At altitude this becomes acute: reduced pressure collapses the discharge inception voltage into the winding's operating range [16], so every increment of power density and efficiency is bought directly against insulation life. This is usually treated as an insulation problem to be out-engineered; it is not. It is a direct consequence of an architecture in which converter and machine are distinct, so the winding must hold the full bus voltage. This proposal dissolves that architecture — placing a bilateral integrated-circuit pair at every stator slot so that no winding section ever exceeds 20–50 V, and partial discharge is eliminated by design rather than mitigated by insulation.

*Integration note: if **C** is chosen, trim the first sentences of "The Research Opportunity" (they restate the per-slot architecture and would repeat). A and B flow in as-is. A hybrid (A's reframe → C's mechanism sentence) is also on the table.*

### 5b. Settled continuation (do not rewrite unless asked)

**The Research Opportunity**

> This programme asks what becomes possible when the converter–machine partition is not shortened or better managed but dissolved: when the switching function is distributed into the winding at the spatial resolution of individual slots. The proposed architecture places one bilateral integrated-circuit pair at each stator slot, each driving its own winding section across an open-end conductor. There is no central converter, no converter-to-machine cabling, and no terminal at which the full system voltage ever appears. The IC is at once the machine's per-slot excitation source and the converter's switching element; the winding conductor is at once the force-producing medium and the converter's voltage-distribution network. No boundary can be drawn between converter and machine because they are the same physical object.

> The immediate consequence is that PD is eliminated by voltage architecture rather than by insulation. Distributing the bus across the winding holds every slot section below 20–50 V; against a Paschen minimum inception voltage of ~200–300 V for a realistic slot geometry at quarter-atmosphere pressure, the per-slot envelope sits below the threshold by a factor of four to fifteen across all altitude, contamination and geometry conditions. PD does not occur — not because the insulation is stronger, but because the voltage that would cause it never arrives.

> The same single decision cascades into the field's other intractable limitations. Because every slot carries an independently programmable current, the effective pole count becomes a continuously adjustable software parameter: the machine retunes its spatial field to the propulsion load at every operating point, without a mechanical gearbox and without the discrete switching transients of conventional variable-pole drives [14,15]. Because the adiabatic zero-voltage switching inherited from the converter produces inherently smooth per-section voltage transitions, the rotating field steps more smoothly and torque ripple falls without added filtering. Because power is distributed across N independent circuit pairs rather than concentrated in a few phases, the loss of any one module leaves the rest operational — a nine-section machine retains ~89% of rated torque after a single module failure, against ~58% for a three-phase machine, and degrades continuously rather than in a step, matching aerospace requirements for gradual, predictable derating. None of these is an independent feature bolted on; each is a consequence of dissolving the converter into the winding at slot resolution. That is what makes the architecture disruptive rather than incremental: it changes not what is optimised, but what is achievable.

**Novelty and Scientific Contribution**

> The novelty operates at two levels. *Architecturally*, no prior work has achieved per-slot bilateral IC drive in a rotating machine. Modular and multilevel drives subdivide the DC link or stack cells to manage device voltage stress; they do not address the per-slot insulation constraint that caps machine power density. The continuously-variable-pole concept [14] minimises multi-harmonic loss at the machine terminals through shared-bus modulation; it does not distribute voltage to slot level, does not engage insulation physics, and retains the full converter–machine partition. The proposed architecture is distinct from all of these.

> *Scientifically*, the coupled physics that emerge when the converter is dissolved into the winding are unstudied: the electromagnetic interaction between independently driven adjacent slots sharing one magnetic core; the behaviour of adiabatic zero-voltage-switching circuits when the source is an inductive winding with back-EMF rather than a stiff DC supply; and the coupled thermal problem of IC modules dissipating inside a winding environment at 120–150 °C. The contribution is a multi-physics co-design framework for a class of machine drive that has no design methodology today — one that treats the stator as an N-element independently driven electromagnetic array with 2N control degrees of freedom, a genuinely new optimisation problem. Every constituent capability has a prior silicon or analytical demonstration within the group [7]; what has never been demonstrated, and what this programme establishes, is their combination inside a rotating machine winding and the new physics it produces.

**Timeliness**

> The enabling IC technology was demonstrated in silicon only in the current design cycle — per-slot integration was physically impossible before these demonstrations. Simultaneously, the UK advanced air-mobility sector is scaling toward the 5–50 kW per-motor class where this architecture offers the greatest benefit [21, PI TO CONFIRM: market ~£3.2 bn by 2030], and both the UK Jet Zero strategy and EPSRC's energy-and-decarbonisation priority demand power-density gains that no incremental improvement to partitioned motor drives can deliver. The architectural lever and the technology that makes it buildable have arrived at the same moment the national strategy requires them.

**Impact and Beneficiaries**

> *Academic* beneficiaries — the power-electronics and electrical-machines communities — gain the first design methodology for an N-element, 2N-degree-of-freedom machine drive, reusable wherever the converter–machine partition limits performance. *Industrial* beneficiaries — UK propulsion integrators [PI TO CONFIRM: Eaton, Airbus letters of support] — gain an architecture that removes PD by physics, eliminates the gearbox, and provides certifiable graceful fault degradation, yielding a power-density advantage unreachable by any architecture that retains the partition. *Societal and economic* beneficiaries gain a credible route to lighter, more reliable electric propulsion that advances the Jet Zero net-zero-by-2050 objective and underpins the ~111,000 UK aerospace jobs [22, PI TO CONFIRM] dependent on national competitiveness in next-generation propulsion.

**Scope and Funding Rationale**

> The programme operates at TRL 1–3: the foundational architecture, the multi-physics co-design framework, and bench-scale validation; certification and flight hardware are out of scope. Per-slot drive is pre-competitive, foundational infrastructure on which multiple integrators would build — a public good that no single firm will fund alone, because none captures enough of its value to justify the underlying science. This is precisely the research EPSRC exists to support. The validated TRL-3 framework hands to Eaton and Airbus for follow-on Innovate UK or ATI development at TRL 4–6.

### 5c. Sub-heading → criteria mapping (reviewer traceability)

*Background and Research Challenge* + *Novelty* → quality/importance + gap; *The Research Opportunity* + *Novelty* → advances understanding/new knowledge; *Timeliness* → timeliness; *Impact and Beneficiaries* → impact + benefits/beneficiaries; *Scope and Funding Rationale* → fit to scheme.

---

## 6. THE APPROACH — STRUCTURE & RECIPE (largely unwritten; ~4 of 6 pages)

Agreed sub-headings: **Hypotheses and objectives · Research design and methodology · Work packages · Building on previous work · Research environment and facilities · Feasibility and risk management · Project management and delivery · Maximising translation of outputs into outcomes and impact · Project plan** — plus the **one-page landscape Gantt**.

**Five research questions (RQ1–RQ5):**
- **RQ1** — winding geometry/conductor arrangement/slot count for independently controllable multi-harmonic spatial excitation + bilateral per-slot IC access, at 6,000–10,000 RPM on 270 V.
- **RQ2** — circuit conditions sustaining adiabatic ZVS when the bilateral source is an inductive winding with back-EMF; achievable frequency range across the speed envelope.
- **RQ3** — transient per-slot voltage distribution during switching/field transitions; does it ever transiently approach the 200–300 V Paschen threshold?
- **RQ4** — optimal 2N-DOF current pattern minimising losses across the torque-speed plane within per-slot limits; fault re-optimisation speed.
- **RQ5** — coupled IC-module/winding thermal behaviour; packaging to keep IC junction temperature safe under aerospace duty cycles.

**Work packages:**
- **WP1 — Machine Electromagnetic Design (M1–M18).** Lead: Co-I Asef + PDRA 2. RQ1, RQ3. Analytical winding-factor models, multi-harmonic FEA, distributed-parameter transmission-line model for transient voltage. Runs parallel with WP2 from M1.
- **WP2 — Per-Slot Circuit Module Architecture (M1–M18).** Lead: PI + PDRA 1 + Co-I Everts. RQ2, RQ5. SPICE under winding-source conditions, ZVS-envelope mapping, thermal network; **12–18 discrete prototype boards are the primary experimental vehicle** — IC tape-out is a stretch enhancement, not a dependency.
- **WP3 — Reconfigurable Field Control (M1–M30).** Lead: PI. RQ4. Convex optimisation for 2N-DOF loss maps for every fault state; MPC for real-time; HIL validation; fault re-optimisation response time a primary output.
- **WP4 — Integrated Demonstrator (M18–M36).** Assembles WP1–3. Efficiency maps vs modelled conventional baseline, thermal characterisation, fault-insertion tests, end-winding-elimination quantification, torque-ripple measurement, open dataset.

**WP writing recipe:** each WP = one aim sentence + run-in tasks; each task carries *method → facility → partner input → inter-WP data hand-off → deliverable (Dn.k)*. Hold a 1:1 spine **Gap n → On → WPn**. Risk table = *Risk | Likelihood/Impact | Mitigation*, spanning technical, supply, safety, integration, ethics, data-handover and engagement risks.

**Standard risk table (agreed):**

| Risk | Level | Mitigation |
|---|---|---|
| IC fabrication delayed/fails | High | Discrete boards carry all WP2–WP4 research; validation proceeds regardless |
| ZVS lost under inductive winding source | Medium | WP2 maps achievable frequency envelope; fallback = hard-switched parallel low-voltage devices, retaining per-slot voltage distribution |
| 2N-DOF control unstable under inter-slot coupling | Medium | Offline convex maps as stable fallback preserving software-defined pole selection |
| IC junction temperature exceeds limit | Medium | WP2 thermal model sets packaging spec before build; fallback derates per-IC current, adds sections |
| Demonstrator specific power below projection | Low | End-winding elimination + insulation reduction give structural gains independent of efficiency headline; dataset retains value |

**Inputs still needed from PI before the Approach can be fully written:** WP task/duration/deliverable/milestone detail; H1..Hn / O1..On enumeration; APL facility specifics with distinctive numbers; project duration + Gantt content; Eaton/Airbus roles for translation.

---

## 7. THE EVIDENCE BASE — GROUP OUTPUTS (A1–A8 + two anchors + theses)

*The eight papers and the theses were uploaded and mined for confirmed measured numbers. Re-attach any paper if measured numbers must be quoted directly.*

### 7a. Two anchor references (the lineage predecessors)

**BTMLC IC — "On-Chip Design and Implementation of a Battery-Cell-Level Binary-Tree Multilevel Converter,"** *IEEE Trans. Power Electron.*, accepted 2026. DOI: 10.1109/TPEL.2026.3675044.
*The single most important reference — direct predecessor of the per-slot IC module.* Confirmed: **15.2 mm²** (3.530 × 4.297 mm), 130 nm BCD, 12-inch wafers, 6 metal layers; **2 A max; ~26 V max (7 × 3.7 V cells); 8 levels (3 binary signals); DC–5 kHz; ~0.472 Ω path resistance; 50–66 °C at 2 A; switching losses ~0.5%; bidirectional; gate drivers, level shifters, dead-time, Zener floating supplies all on-chip.** Did NOT address: machine-winding environment, multi-harmonic excitation, vibration, thermal co-design with conductors, operation >5 kHz — *precisely the programme's territory.*

**DCAT — Wood, Shelton, Rathbone, Baghdadi, Regan, Palmer, "Adiabatic DC-AC Power Converter with 99% Efficiency,"** PCIM Europe, Nuremberg, 2016. 2 kW, 400–450 V DC → 230 V AC; **>99% at 1 kW and 2 kW; ~400 W/in³**; Little Box Challenge finalist. Multi-winding **autotransformer + binary-tree MOSFET tap selector**; fully adiabatic ZVS; low per-winding dV/dt. Established magnetic voltage distribution + adiabatic switching. Did NOT address rotating machine, spatial field control, per-slot addressability, variable poles. *(PI-confirmed: describe as an adiabatic DC-AC converter with autotransformer + binary-tree tap selector — NOT a "multiport DC solid-state transformer".)*

### 7b. The eight uploaded papers (A1–A8)

- **A1 — Grimm, Kolahian, Bucknall, Baghdadi**, self-balancing model for multiactive-bridge converters, *IEEE Trans. Power Electron.* 40(12):17988–17997, Dec 2025. DOI: 10.1109/TPEL.2025.3597231. → validated **multi-winding analytical methods** → WP1.
- **A2 — Tazehkand & Baghdadi (CS²CAB)**, *IEEE Trans. Power Electron.* 40(9):13767–13777, Sep 2025. DOI: 10.1109/TPEL.2025.3558417. → sensorless, scalable balancer; development-of-others evidence.
- **A3 — Grimm, Kolahian, Bucknall, Baghdadi**, MAB-based DC-link balancing of three-level NPC inverters, **[PI TO CONFIRM: venue/year/pages/DOI]**. Verified on a full motor-drive platform (Imperix B-Box, FPGA, motor load). → **inverter-level integration + motor-drive experimental methodology.**
- **A4 — [PI TO CONFIRM: authors]**, foil-wound multi-winding transformer equalizer, *IEEE ECCE Europe* 2025 **[PI TO CONFIRM: pages/DOI]**. **98.94% peak efficiency at 100 kHz; sub-1% SOC balance in 60 min.**
- **A5 — Xu, Cai, Baghdadi, et al. [incl. Edwards, Zhang, Luo — PI TO CONFIRM institutions]**, fault-tolerant dual three-phase PMSMs with modular windings for eVTOL, **[PI TO CONFIRM: venue/year/DOI]**. **48-slot/8-pole**, healthy/open-circuit/short-circuit. → **the exact machine class, winding-topology space, reliability framing and application context** + multi-institutional collaboration.
- **A6 — Asef (lead) et al.**, multitooth interactive flux-reversal PM motor, *IEEE Trans. Ind. Electron.* 2026 **[PI TO CONFIRM: vol/issue/pages/DOI]**. GA-optimised; **95% and 669%** torque-quality-factor improvements; **FEA within ~4%.** → Co-I Asef machine-design capability.
- **A7 — Boussaid, Motaghedolhagh, Shariati, Baghdadi**, hybrid enhanced microchannel heat sinks, **[PI TO CONFIRM: venue/year/DOI]**. CFD at **100 W/cm²**; **41 °C mean wall temp at 18.57 kPa.** → Co-I Everts thermal evidence → WP2/WP4 thermal co-design.
- **A8 — Farhat & Baghdadi (TCAS-I level shifters)**, *IEEE Trans. Circuits Syst. I* 2026. DOI: 10.1109/TCSI.2026.3676412. 130 nm BCD; **17× delay reduction; 22–66× dead-time-spread reduction; supply to 2 V.** → silicon-validated floating-domain gate drive in the same process as the BTMLC.

**Track-record selection:** headline with **A5, A6, A8, A7** (that order); A1–A4 as supporting evidence.

### 7c. Doctoral theses (anonymise in body; cite in references)

- **Kolahian, "Ultra Efficient Bidirectional Power Converter for Battery Energy Resources,"** PhD, UCL, Feb 2026. Two proposal-critical results: (i) **HB-MLI binary-tree converter driving a real 400 V three-phase industrial induction machine at 150–500 RPM under closed-loop dq0 control** — the team's own precedent for the *machine-load/back-EMF condition* WP2 investigates at per-slot scale; (ii) **MS² converter at 98.8% efficiency in DCAT mode, up to 450 W.**
- **Tazehkand, "Cell Scale Power Processing for Battery Electric Vehicles,"** PhD, UCL, Apr 2026. (i) **On-chip digital isolation for floating-domain submodules in 130 nm BCD** → directly applicable to per-slot IC control-signal routing; (ii) the **UPU concept** (distributing conversion to the point of consumption) — available as an optional Vision framing paragraph grounding per-slot in a validated battery-domain precedent.
- **Farhat** — PhD completed UCL 2026 (outputs = BTMLC + A8); funded by **EPSRC studentship EP/T517793/1**; now a postdoc in high-frequency power electronics.

### 7d. Intellectual-lineage table (use verbatim where useful)

| Work | What it proved | Remaining gap |
|---|---|---|
| DCAT (2016) | Adiabatic binary-tree tap conversion >99%; windings distribute voltage | Transformer only, not machine winding as source |
| HB-MLI motor drive (Kolahian thesis, 2026) | Binary-tree multilevel converter drives induction motors with back-EMF | Terminal-connected only, not per-slot bilateral |
| On-chip isolation (Tazehkand thesis, 2026) | Floating-domain control signals isolated on-chip in 130 nm BCD | Battery domain only, not winding domain |
| TCAS-I level shifter (A8, 2026) | Floating-domain gate-drive circuits work in the same process | Stacked battery domain only |
| BTMLC IC (2026) | Complete per-slot drive infrastructure fits on 15.2 mm² | Battery-cell resistive loads only |
| **This proposal** | All of the above applied to the per-slot machine winding | The research programme |

> *"Every component of the proposed architecture has a prior experimental demonstration within this group — just not yet in the machine-winding context. That is precisely what EPSRC funds at TRL 1–3."*

---

## 8. PRIOR ART, CONTEXT & POLICY REFERENCES

- **Chaubal, Libbos, Mukherjee, Maheshwari, Banerjee, Krein**, "Continuously-Variable-Pole Induction Machine Drive for EVs," *IEEE ITEC* 2024. DOI: 10.1109/ITEC60657.2024.10598847. **Primary variable-pole prior art (UIUC — not the team's).** Framing: demonstrates the principle *at terminal level* via shared-bus modulation; this proposal extends to *slot-level*, does not distribute voltage to slot level, does not engage insulation physics, retains the partition. *(Differentiation statement drafted; architecturally distinct.)*
- **Libbos, Krause, Banerjee, Krein**, "Inverter design considerations for variable-pole induction machines in EVs," *IEEE Trans. Power Electron.* 37(11):13554–13565, 2022.
- **Lusuardi, Rumi, Cavallini**, PD behaviour under variable pressure for aerospace, *IEEE Trans. Dielectr. Electr. Insul.* 2019. DOI: 10.1109/TDEI.2019.008001. **The quantitative PD-at-altitude anchor** (pressure-dependent PDIV).
- **[PI TO CONFIRM]** 1–2 further PD refs (PDIV at reduced pressure; turn-to-turn stress under SiC/GaN; aerospace insulation qualification) — suggested: Yin, Cavallini, Montanari, or the Nottingham aerospace-insulation group.
- **Sarlioglu & Morris**, "More electric aircraft…," *IEEE Trans. Transp. Electrific.* 1(1):54–64, 2015.
- **Cao, Mecrow, Atkinson, Bennett, Atkinson**, "Overview of electric motor technologies used for MEA," *IEEE Trans. Ind. Electron.* 59(9):3523–3531, 2012.
- **[PI TO CONFIRM]** hairpin fractional-slot winding refs (AC resistance, slot fill, proximity under multi-harmonic) — Popescu et al. / Bianchi et al.
- **Aerospace Technology Institute, "Destination Net Zero," 2022** [PI TO CONFIRM edition + archival citation] — anchor for **~£3.2 bn UK AAM market by 2030.**
- **ADS Group, "UK Aerospace, Defence, Security and Space: Facts and Figures"** [PI TO CONFIRM edition] — anchor for **~111,000 UK aerospace jobs.**

---

## 9. MASTER REFERENCE LIST — DRAFTED ORDER (~680/1,000 words)

IEEE numeric; DOIs, no hyperlinks; lives in the **separate References section**, never in the V&A PDF.

**[1]–[3]** primary group refs (BTMLC IC; TCAS-I level shifter / A8; DCAT); **[4]** Grimm MAB (A1); **[5]** Grimm NPC (A3); **[6]** Tazehkand CS²CAB (A2); **[7]** foil-wound equalizer (A4); **[8]** Asef flux-reversal (A6); **[9]** Xu eVTOL (A5); **[10]** Boussaid thermal (A7); **[11]–[12]** variable-pole prior art (Chaubal; Libbos); **[13]–[14]** PD/insulation (Lusuardi + companion); **[15]–[16]** MEA context (Sarlioglu; Cao); **[17]** hairpin; **[18]–[19]** policy (ATI; ADS). **Insert also:** the **Kolahian** and **Tazehkand** theses. ~320 words reserved for TO-CONFIRM entries.

### ⚠️ CRITICAL — citation-numbering reconciliation (before submission)

The settled Vision text uses inline keys from an **earlier** numbering: **[7]** group prior silicon, **[13]** PD dominant mechanism, **[14,15]** variable-pole, **[16]** Paschen/altitude, **[21]** AAM market, **[22]** jobs. These **do not match** §9 (variable-pole = [11,12]; PD = [13,14]; MEA = [15,16]; market = [18]; jobs = [19]; [21]/[22] don't exist). **Task: once References is final, renumber every inline marker in the Vision (then the Approach) against it.** The mapping by meaning is unambiguous; only the numbers need aligning.

---

## 10. TRACK-RECORD FACTS (R4RI Capability — separate 1,500-word section)

- PI supervision: **~12 PhD as first supervisor (6 completed); ~6 co-supervised**, across power electronics, electrical machines, integrated converters, electric propulsion.
- Doctoral researchers publishing IEEE Transactions during their programmes: **Farhat** (BTMLC TPEL + A8 TCAS-I; now postdoc), **Tazehkand** (CS²CAB TPEL 2025), **Grimm** (co-supervised; A1 + A3; now at Lund University).
- **SkyDrive programme:** 100 kW, 18,000 RPM integrated aerospace electric propulsion with **ARC Additive and iNetic** — industrial engagement + high-speed machine capability.
- **EPSRC studentship EP/T517793/1** funded Farhat — prior EPSRC investment in this line.
- Reviewing: PI + both Co-Is review for IEEE TPEL, TIE, TCAS, IET Power Electronics. **[PI TO CONFIRM: editorial boards, conference committees, panel memberships, keynotes.]**
- Facilities: **UCL APL** — dynamometer (WP4; **[PI TO CONFIRM: envelope covers 6,000–10,000 RPM at 5–15 kW]**), power-electronics lab (high-speed scopes, electronic loads), real-time HIL platform, EM/power/thermal modelling tools; **BTMLC/TCAS-I BCD design flows transfer directly.** Grant procures only project-specific items (prototype machine, 12–18 discrete IC boards, high-bandwidth differential probes, thermal imaging). No EPSRC national facility required → Facilities section likely an "N/A"-style statement.

---

## 11. OUTSTANDING CONFIRMATIONS — CONSOLIDATED CHECKLIST

1. Venue/year/DOI for **A3** (Grimm NPC), **A4** (authors, pages, DOI), **A5** (venue + co-author institutions), **A6** (vol/issue/pages/DOI), **A7** (venue/DOI).
2. **PD companion reference(s)**; **hairpin winding references.**
3. **ATI** edition + archival citation (supports £3.2 bn by 2030); **ADS** edition (supports ~111,000 jobs).
4. Exact ordering of **[1]–[3]** and insertion points of the two theses in the final References list.
5. **Renumber Vision inline citations** per §9 once the list is final.
6. APL **dynamometer envelope** (6,000–10,000 RPM at 5–15 kW).
7. Eaton / Airbus **letters of support** (Impact + Project Partners sections).
8. PI/Co-I **community roles** for R4RI Module 3.
9. PI / Co-I **FTE percentages** (Resources section).
10. Edwards **IMD-review citation** (for the "IMD shortens, does not remove, the partition" claim).

---

## 12. IMMEDIATE NEXT STEPS (in order)

1. **Decide the Vision opening** (A / B / C / hybrid) → replace the "Background and Research Challenge" opening; if C, trim the start of "The Research Opportunity."
2. Resolve the **[PI TO CONFIRM]** items as they become available.
3. Supply/confirm the **WP structure detail** → draft the **Approach** (~4 pages) per the recipe.
4. Build the **one-page landscape Gantt.**
5. Assemble the **References** section separately (1,000 words, DOIs, no hyperlinks) → then renumber inline keys.
6. Draft the remaining separate sections: **Summary (550 w), Capability R4RI (1,500 w), Resources (1,000 w), Ethics (500 w), Partner contributions, Facilities (250 w).**
7. **Section-by-section variant pass:** for each section, generate several EPSRC-style variants to choose from (this is the main working mode I want).
8. Export final **single PDF ≤ 8 MB**, named *<application number> Vision and Approach*, and enter **"attachment supplied"** in the Funding Service text box.
