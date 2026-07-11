# HANDOVER BRIEF — EPSRC PROPOSAL PROJECT

## What this is

This is a handover brief for an EPSRC Standard Research Grant proposal developed across multiple sessions with an AI assistant. It is the complete project knowledge base needed to continue refining the proposal. Paste this entire document into a new conversation as the opening message.

---

## Project identity

**Title:** Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion
**PI:** Dr Mehdi Baghdadi, UCL Advanced Propulsion Laboratory
**Co-I 1:** Dr Pedram Asef — electrical machines lead
**Co-I 2:** Dr Marilize Everts — thermal management lead
**Duration:** 36 months
**EPSRC Theme:** D — Engineering
**TRL:** 1–3 only. No flight hardware. No certification.

---

## The core concept — what this technology is

The proposed architecture places one pair of integrated circuits at each stator slot of an electric motor, driven bilaterally across an open-end winding. There is no centralised external power converter. The circuit at each slot synthesises its output from a fraction of the bus voltage using a binary-tree tap selector, so the voltage across any winding section is 20–50 V regardless of the total system bus voltage of 270 V.

This single architectural decision produces the following consequences simultaneously:

- **Partial discharge eliminated by physics:** At quarter-atmosphere altitude pressure, the Paschen minimum inception voltage is approximately 200–300 V. Per-slot voltage of 20–50 V sits four to fifteen times below this under all conditions. PD conditions never exist.
- **End-windings architecturally eliminated:** Hairpin conductors terminate directly at IC module terminals at the stator end-face. No copper runs outside the active magnetic length. Axial length shortens. Winding resistance drops by 20–40%.
- **Variable pole count as software parameter:** Every slot independently controlled means any spatial harmonic composition is achievable. Gearbox eliminated.
- **Multi-phase operation:** Effective phase count equals number of driven sections (6–9). Smoother torque, better fault tolerance, lower per-section current.
- **Graceful fault tolerance:** One module fails → others redistribute current. Nine-section machine retains ~89% torque vs ~58% for three-phase machine losing one phase.
- **Improved cooling:** End-winding elimination removes the hardest-to-cool part of the stator. Winding terminations exposed at end-face where cooling is most effective.
- **Torque ripple reduction:** Adiabatic zero-voltage switching produces inherently smooth field transitions.
- **Power density improvement:** External inverter cabinet, cables, busbars, filters, and gearbox all removed.

**Why this was not previously buildable:** Per-slot bilateral drive requires floating gate-drive circuits, level shifters, dead-time generators, and power switches at every slot — 36 sets for 18 slots bilateral. In discrete components this is physically impossible. IC integration is not optional — it is the only way this architecture is realisable. The team has now demonstrated this in silicon.

**Why it is buildable now:** The team holds all enabling prior work:
- BTMLC IC: complete per-slot drive infrastructure on a single chip, silicon-validated [Ref 1]
- TCAS-I level-shifter IC: floating-domain gate-drive circuits in same 130 nm BCD process [Ref 2]
- DCAT converter: adiabatic voltage-distribution principle at >99% efficiency at 2 kW [Ref 3]
- On-chip digital isolation for floating control domains, same process [Ref 5]
- Binary-tree multilevel converters driving three-phase induction motors under closed-loop control, including 400 V industrial machine [Ref 6]
- Multi-winding transformer analytical model experimentally validated [Ref 7]
- Fault-tolerant dual three-phase eVTOL machine winding analysis [Ref 12]

**Why IC integration is necessary (not optional):** A discrete implementation of per-slot bilateral drive would require so many floating supplies, level shifters, isolated drivers per slot that the control hardware would exceed the machine volume. This is why nobody has done it before — not because the concept is unknown, but because it was physically unrealisable without the IC platform this team has built.

---

## Confirmed technical parameters

| Parameter | Value |
|---|---|
| DC bus voltage | 270 V |
| Per-slot voltage | 20–50 V |
| Demonstrator power | 5–15 kW |
| Demonstrator speed | 6,000–10,000 RPM |
| Slot count | 18 |
| Driven sections | 6–9 |
| IC modules total | 12–18 (bilateral) |
| Electrical frequency range | 100 Hz – 3 kHz |
| Application scale (impact only, NOT research target) | 50–100 kW, 15,000–20,000 RPM, AAM/eVTOL |
| BTMLC IC chip area | 15.2 mm² |
| BTMLC current | 2 A |
| BTMLC voltage | 26 V |
| BTMLC max frequency | 5 kHz |
| BTMLC process | 130 nm BCD |
| DCAT efficiency | >99% at 2 kW |
| SkyDrive context | 100 kW, 18,000 RPM (application context only) |
| Paschen minimum at quarter-atmosphere | 200–300 V |
| Paschen margin | Factor of 4–15 |
| Altitude pressure | 25 kPa |
| End-winding resistance contribution | 20–40% of total |
| Insulation slot area loss in 1 kV machine | 20–30% |
| Fault tolerance | 89% torque retained (9 sections, 1 failure) vs 58% (3-phase) |
| UK AAM market | £3.2 billion by 2030 [PI TO CONFIRM: ATI publication] |
| UK aerospace direct jobs | 111,000 [PI TO CONFIRM: ADS Group year] |

---

## Five research questions

**RQ1:** What winding geometry, conductor arrangement, and slot count maximise independently controllable multi-harmonic spatial field excitation while accommodating bilateral per-slot IC access in a machine operating at 6,000–10,000 RPM on a 270 V bus?

**RQ2:** What circuit conditions sustain adiabatic zero-voltage switching when the bilateral source is an inductive winding section with back-EMF — and over what frequency range does this hold across the full propulsion speed envelope?

**RQ3:** What is the transient per-slot voltage distribution during bilateral IC switching and field transitions — and does it ever transiently approach the 200–300 V Paschen threshold at altitude?

**RQ4:** Given N independently controlled slot current sources, what current pattern minimises total losses across the torque-speed plane within per-slot limits — and how rapidly can it re-optimise after module failures?

**RQ5:** What is the coupled thermal behaviour of per-slot IC modules and winding conductors in the integrated configuration — and what packaging maintains safe IC junction temperatures under aerospace duty cycles?

---

## Work package structure

**WP1 — Machine Electromagnetic Design (M1–M18):** Led by Co-I Asef with PDRA 2. Addresses RQ1 and RQ3. Extended analytical winding factor models, multi-harmonic FEA, distributed-parameter transmission line model for transient voltage. Runs parallel with WP2 from month 1.

**WP2 — Per-Slot Circuit Module Architecture (M1–M18):** Led by PI with PDRA 1 and Co-I Everts. Addresses RQ2 and RQ5. SPICE simulation under machine winding source conditions, ZVS envelope mapping, thermal resistance network, 12–18 discrete prototype boards as primary experimental vehicle. IC tape-out is stretch enhancement not dependency.

**WP3 — Reconfigurable Field Control (M1–M30):** Led by PI. Addresses RQ4. Convex optimisation for 2N-DOF loss minimisation, MPC for real-time, HIL validation, fault re-optimisation response time as primary output.

**WP4 — Integrated Demonstrator (M18–M36):** Assembles WP1–3. Efficiency maps, thermal characterisation, fault insertion tests, end-winding elimination quantification, torque ripple measurements. Open dataset published.

**CRITICAL:** WP1 and WP2 run in parallel. WP3 begins analytically from month 1. Only WP4 depends on WP1–3. State this explicitly — reviewers penalise sequential WP structures.

---

## EPSRC format requirements

| Section | Limit |
|---|---|
| Summary | 550 words, plain English, public-facing |
| Vision | ~1,400–1,500 words (part of 6-page PDF) |
| Approach | ~1,200–1,800 words (part of 6-page PDF) |
| Vision + Approach combined | 6 pages maximum, Arial 11pt, single spacing, 2 cm margins |
| Applicant capability | 1,500 words, R4RI four-module format |
| References | 1,000 words, IEEE numeric, DOIs not hyperlinks |
| Resources | 1,000 words |
| Ethics | 500 words |
| Thematic area | D |
| Facilities | N/A |

---

## Section-specific writing rules

- Never use "novel" or "innovative" as standalone adjectives — say specifically what is new
- Never say "this project will investigate" — say "this programme will establish"
- Never use passive voice in opening paragraphs
- All acronyms expanded on first use within each section independently
- Lead with the problem before the solution in every section
- No internal notes or meta-comments in drafted text
- Format unconfirmed items as [PI TO CONFIRM: description]
- State word count at end of every section draft

**Vision must pass three tests:**
1. UK policy hook — Jet Zero named explicitly
2. Quantified UK context — at least one specific UK figure with source
3. Pre-competitive justification — explicit statement of why EPSRC not industry funds this

**R4RI Capability section must use exactly these four headings:**
1. Contributions to the generation of new ideas, tools, methodologies, or knowledge
2. The development of others and maintenance of effective working relationships
3. Contributions to the wider research and innovation community
4. Contributions to broader research or innovation users and audiences and towards wider societal benefit

**Ethics section must address:** no human participants (brief), dual use and defence (mandatory for aerospace — all outputs open, no defence contracts), environmental (WEEE compliance, net-zero contribution), open access data, TRL 1–3 framing (outputs are knowledge not certified hardware).

---

## Current proposal status

All sections have been drafted. The two sections currently under active revision are Vision and Approach. The current framing uses the angle: **"The architectural partition between converter and machine is an invisible assumption the entire field has accepted — this proposal dissolves it."**

The PI's feedback on the latest Vision draft:
1. The opening paragraph is not suitable for an expert reviewer in the field — it reads too philosophical for a specialist audience
2. The overall structure and argument are otherwise strong
3. We were about to rethink the Vision opening when the session ended

The PI wants the Vision and Approach revised with:
- A strong opening that works for expert power electronics and aerospace machines reviewers (not a lay audience)
- Conventional academic sub-headings (Background and Research Challenge / The Research Opportunity / Novelty and Scientific Contribution / Timeliness / Impact and Beneficiaries / Scope and Funding Rationale)
- The narrative should make an expert reviewer think "this must get funded" — not just impressive technology but important, necessary, and uniquely positioned science

---

## Additional context: What "integration" already means in the field

A PhD student in the group (Zac Edwards, transfer viva 2026) has surveyed the IMD integration landscape extensively. Key findings relevant to the proposal:

- "Integrated motor drive" in current literature means mounting a conventional inverter on the motor housing — shorter cables, shared cooling, same converter architecture. The voltage partition between converter and machine is NOT dissolved — it is merely shortened.
- Real-world IMD configurations reviewed: radial housing, radial stator, axial housing, axial endplate, distributed radial, IMMD, Smart Stator Teeth. None achieves per-slot bilateral IC drive.
- DC-link capacitors can form ~40% of motor-drive volume — a key miniaturisation target.
- Above ~7.5 kW, thermal management becomes the primary IMD challenge.
- Eliminating separate housings and shielded cables can reduce volume by 10–20% and installation/manufacturing cost by 30–40% (from Zac's survey — cite carefully).
- The DCAT architecture is already being explored within the group for compact voltage splitting inside an IMD unit, with circular/annular packaging for aerospace nacelle compatibility.
- PD mitigation in this literature is approached through: shorter cable runs (reduces parasitic inductance and overshoot), multilevel voltage steps (reduces per-step dV), and better insulation. Nobody eliminates PD by reducing per-slot voltage below the inception threshold by design.

**This means:** When a reviewer reads "integrated motor drive," they think of a conventional inverter mounted closer to the motor. The proposal must immediately and explicitly distinguish the proposed architecture from this well-known category. The opening of the Vision needs to engage with what expert reviewers already know — and then show them something they have not seen.

---

## Prior art positioning (how to differentiate)

**CVP paper [Ref 14] (most important to differentiate from):** Demonstrates simultaneous two-pole and six-pole excitation on a shared DC bus using an 18-leg discrete inverter to minimise losses. Does NOT: reduce per-coil voltage (PD unaddressed), integrate ICs, use open-end winding, or address aerospace. Only two harmonic orders on a shared bus, not N independently addressable slots. Differentiation: the proposed architecture achieves the same operational flexibility through a fundamentally different physical mechanism — per-slot bilateral IC drives where the winding itself distributes voltage.

**High-voltage aerospace insulation research:** Manages a problem the proposed architecture makes irrelevant. Per-slot 20–50 V means PD inception conditions never exist.

**Battery-integrated multilevel inverters (BIMIs):** Per-cell conversion for DC-AC. Do not involve rotating machines, winding integration, or multi-harmonic electromagnetic physics. The BTMLC IC sits in this family; the proposal moves the integration point from battery side to winding side.

---

## Outstanding PI actions before submission

| Item | Section |
|---|---|
| ATI publication details for £3.2 billion AAM figure | Summary, Vision |
| ADS Group year for 111,000 jobs figure | Vision, Capability |
| Eaton letter of support | Project partners |
| Airbus letter of support | Project partners |
| Venue/year/DOI for References [9], [10], [11], [12], [13] | References, Capability |
| 1–2 PD-at-altitude peer-reviewed papers | References [17] |
| 1–2 hairpin winding AC resistance papers | References [20] |
| PI, Co-I Asef, Co-I Everts FTE percentages | Resources |
| UCL APL dynamometer speed envelope confirmation | Approach WP4, Facilities |
| Editorial board / committee / panel roles | Capability Module 3 |
| Co-author institutions for eVTOL paper [12] | Capability Module 2 |

---

## What to do next in the new session

The immediate task is to revise the **Vision** opening and overall framing so it engages expert EPSRC Engineering panel reviewers directly — people who know the power electronics and aerospace machines literature well. The current opening is too philosophical for this audience.

The PI's instruction: Think from the perspective of an expert reviewer who has seen many integrated motor drive proposals before. What would make this one different? The answer must come from the science — from the fact that this is not integration in any sense the reviewer has previously encountered. Start there.

All confirmed facts, parameters, references, and WP structure above are fixed. Only the Vision and Approach framing needs revision.

**Note:** A separate file, `EPSRC_References_Handover.md`, contains detailed summaries of all the theses and papers shared during the project (BTMLC, DCAT, CVP, the three PhD theses, the eVTOL machine paper, the thermal papers, and Zac Edwards' IMD integration survey). Load that file too if reference detail is needed.
