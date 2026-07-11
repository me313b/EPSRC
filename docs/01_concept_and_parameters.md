# 01 — Concept and Confirmed Parameters

*Single source of truth. Every number used anywhere in the proposal must come from this file or be flagged `[PI TO CONFIRM: …]`.*

## The concept

A **per-slot bilateral integrated drive**: one modular power-electronic unit (an IC pair) at every stator slot, each driving its own winding section across an **open-end winding**. The bus voltage is composed **magnetically** along the machine (the autotransformer principle from the group's DCAT converter), so **no winding section ever exceeds 20–50 V** of the 270 V bus. There is no central converter, no converter-to-machine cabling, no terminal at which the full bus voltage appears. The drive module is simultaneously the machine's per-slot excitation source and the converter's switching element; the winding conductor is simultaneously the force-producing medium and the converter's voltage-distribution network. **Converter and machine become the same physical object.**

## The cascade (one decision → derived consequences)

| Tier | Consequence | Mechanism | Numbers |
|---|---|---|---|
| **Headline** | Partial discharge eliminated by architecture | per-slot voltage never reaches inception threshold | 20–50 V vs ~200–300 V Paschen minimum at quarter-atmosphere → **4–15× margin** |
| **Multiplier** | Phase count ceases to be a constraint → redundancy & graceful failure | every slot independently driven; N sections = N phases; failed module → others re-optimise | 9-section machine retains **~89%** torque after one failure vs **~58%** for 3-phase losing a phase; continuous, not stepped |
| Corollary | End-windings eliminated | hairpin conductors terminate at slot module; no copper outside active length | winding resistance **−20–40%**; axial length shortens; terminations exposed where cooling is effective |
| Corollary | Pole count = software parameter | any spatial-harmonic current pattern | gearbox removed |
| Corollary | Smooth output, lower losses | adiabatic ZVS → smooth per-section transitions | group converter family measured **>99%** efficiency; reduced torque ripple |
| Corollary | System power density | inverter cabinet, cables, busbars, filters, gearbox all removed | — |

**The price (state immediately after the cascade):** N drives sharing one magnetic core are coupled — each slot's switching perturbs its neighbours through the iron. Whether that coupling can be controlled at full slot count, or fundamentally limits it, is unresolved and is the central question of the programme.

## Why IC integration is NECESSARY, not preferred

A discrete per-slot implementation needs, per section: isolated gate-drive supplies, floating-domain level shifters, dead-time generation, drivers, switches — ~36 sets for 18 slots bilateral. The control hardware alone would exceed the machine volume. Nobody has built per-slot drive not because the concept is unknown but because it was physically unrealisable until this group put the entire per-slot infrastructure on a chip.

## Standing differentiation rule (use wherever relevant)

In the literature, "integrated motor drive" (IMD) = a conventional inverter mounted on/near the housing — shorter cables, shared cooling, same architecture; the winding still sees full bus voltage. **IMD shortens the converter–machine partition; this proposal dissolves it.** Pre-empt the reviewer's pattern-match explicitly.

## Confirmed parameters (keep identical everywhere)

| Parameter | Value |
|---|---|
| DC bus voltage | 270 V |
| Per-slot voltage envelope | 20–50 V |
| Demonstrator power | 5–15 kW |
| Demonstrator speed | 6,000–10,000 RPM |
| Slot count | 18 |
| Driven sections | 6–9 |
| Drive modules total | 12–18 (bilateral) |
| Electrical frequency range | 100 Hz – 3 kHz |
| **Application scale (impact narrative ONLY — never the research target)** | 50–100 kW, 15,000–20,000 RPM, AAM/eVTOL |
| Paschen minimum inception (quarter-atmosphere ≈ 25 kPa) | ~200–300 V |
| Paschen margin factor | 4–15× |
| Winding thermal environment | 120–150 °C |
| BCD process junction limit | ~150–175 °C |
| Control freedom | N elements / 2N degrees of freedom |
| Fault tolerance | ~89% torque (9-section, 1 failure) vs ~58% (3-phase) |
| BTMLC IC (predecessor chip) | 15.2 mm², 2 A, ~26 V, DC–5 kHz, 130 nm BCD, path R ~0.472 Ω, 50–66 °C at 2 A, switching losses ~0.5% |
| Hybrid/scalable BTMLC (preprint 2026) | 20.52 mm², up to 6 A, 98.5% peak efficiency, stacked modules extend voltage beyond one die |
| DCAT converter (2016) | >99% efficiency at 1–2 kW, ~400 W/in³, 400–450 V DC → 230 V AC |
| SkyDrive (application context only) | 100 kW, 18,000 RPM, with ARC Additive & iNetic |
| UK AAM market | ~£3.2 bn by 2030 [PI TO CONFIRM: ATI source] |
| UK aerospace direct jobs | ~111,000 [PI TO CONFIRM: ADS Group edition] |

## ATI 2026 roadmap anchors (verified from the strategy document)

- Electric propulsion unit performance target: **10 kW/kg by 2030 → 15 kW/kg by 2045** (MW-plus scale)
- Electrical power system architecture milestone: **"High-voltage" at 2030** (→ cryogenic at 2045)
- **MW-scale distributed power system architectures** named on the ultra-efficient roadmap
- Key deliverable: **MW-class electrical power distribution system demonstrator**
- Power distribution & control priorities: electrical machines, power systems, electrical propulsion
- Programme scale: £8 bn joint funding by 2035; £1 R&D → £14 whole-economy output; ambition to double UK share of global aerospace by 2035
- **The collision to use:** the roadmap's named route (high voltage) and its target (10–15 kW/kg EPUs) collide at altitude, where PD inception falls to ~200–300 V. This proposal dissolves the collision at source.
