# VISION & APPROACH — VERSION LIBRARY
## EPSRC Standard Grant: "Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion"

*A reference collection of every Vision and Approach variant developed during drafting, plus the alternative opening paragraphs. Use this to compare framings, lift paragraphs, or pick a direction. Nothing here is final — it is a menu. The most recent / most-developed versions are marked ★.*

**Quick guide to what's inside:**
- **Part A — Vision, full versions** (three complete drafts, chronological — the framing evolved from "three crises" → "dissolve the partition")
- **Part B — Vision opening paragraphs** (all standalone opening options generated, grouped by the framing they belong to)
- **Part C — Approach, full versions** (two complete drafts)
- **Part D — reusable components** (research-question sets, risk tables, WP blurbs that recur)

---
---

# PART A — VISION, FULL VERSIONS

---

## A1. VISION — "Three crises, one root cause" framing (conventional sub-headings)
*The version that leads with three converging failures — insulation trap, mass spiral, fragility trap — all traced to one architectural root cause. Strong for making the problem feel large; risk is that a problem-list invites comparison with other groups solving those problems.*

**Three crises, one root cause.**

Aerospace electric propulsion is constrained by three simultaneous engineering failures. They are treated in the literature as separate problems requiring separate solutions. They are not. They share a single architectural root cause, and this proposal addresses that root cause directly.

**Crisis one — the insulation trap.** Every volt added to the motor bus voltage reduces cable current and saves wiring mass. This logic drives aerospace electrification toward progressively higher voltages. But every voltage increase demands proportionally thicker winding insulation to survive it. Insulation is inert mass: it fills slot volume that could carry current, extends the machine axially without contributing to torque, and in high-voltage systems can consume 20–30% of the available slot cross-section. The mass saved by raising voltage is substantially surrendered back to the insulation required to survive it. No material improvement resolves this, because the relationship between system voltage and required insulation thickness is a physical law, not an engineering shortfall.

Altitude makes insulation failure not merely a design challenge but an operational crisis. Partial discharge — the localised electrical breakdown of gas trapped in insulation voids, conductor interfaces, and slot gaps — is the dominant ageing and failure mechanism in high-voltage rotating machines [13,16]. It is invisible: each discharge event erodes insulation chemistry through ozone attack and fractures the material through repetitive pressure shock, progressively and silently reducing the breakdown margin over thousands of flight hours until catastrophic failure occurs. On the ground, a well-designed insulation system contains this. At cruise altitude, where air pressure falls to approximately one quarter of sea level, the Paschen curve shifts the minimum discharge inception voltage in air toward values that intersect the normal operating range of standard aerospace winding geometries [16]. A machine that satisfies every ground qualification requirement can be experiencing damaging discharge from its first revenue flight. Wide-bandgap switching devices — silicon carbide and gallium nitride, adopted precisely for their efficiency advantage — compound this further: switching at tens of kilovolts per microsecond, they inject displacement currents through winding capacitance and concentrate electric fields at turn-to-turn boundaries far beyond what bulk insulation characterisation predicts [14,15]. The entire research programme on high-voltage aerospace machine insulation is, in effect, an attempt to manage a problem that the sector's own enabling technology is simultaneously intensifying.

**Crisis two — the mass spiral.** The external power converter, connecting cables, busbars, and electromagnetic compatibility filters together represent a significant mass overhead before any electromagnetic torque is produced. Within the machine itself, the conventional end-windings — the copper sections that loop conductors from one slot to the next at each end of the stator — contribute 20–40% of total winding resistance while lying outside the active magnetic length where they cannot be effectively cooled [18]. The mechanical gearbox, required to transform the fixed-pole motor's torque-speed characteristic to match a variable propulsion load, adds further mass, introduces lubrication and maintenance requirements, and is a known reliability liability in aerospace drivetrains. None of these overheads are optional within the conventional architecture. They are consequences of connecting a centralised high-voltage source to a lumped winding.

**Crisis three — the fragility trap.** Conventional motor drives are architecturally fragile. When a phase or power module fails, output drops in a large, sudden step — approximately one third of rated output for a three-phase machine losing one phase. Aerospace certification requires that performance degradation be gradual, predictable, and manageable by the control system and the pilot. The sudden large-step failure characteristic of conventional drives does not meet this requirement. Addressing it through hardware redundancy — duplicating entire inverter phases or winding sets — incurs additional mass that the propulsion system cannot afford.

**The common root cause.** All three crises are consequences of the same decision: connecting a single centralised high-voltage converter to the motor through a shared bus. The insulation must withstand the full bus voltage because the winding sees it. The end-windings exist because slots must be connected externally. The gearbox exists because the pole count is fixed. The fragility exists because power is routed through a small number of high-capacity channels. This architecture has never been rethought for aerospace; it has been inherited from industrial drives and incrementally improved. This proposal replaces it.

**The architectural solution: per-slot bilateral integrated-circuit drive.**

The proposed architecture places one pair of integrated circuits at each stator slot, driven bilaterally across an open-end winding — both ends of every slot conductor accessible and each driven by its own circuit independently. Each circuit synthesises its output by selecting from a set of tap voltages derived magnetically from the bus, so the voltage across any winding section is the controlled difference between two low-voltage outputs rather than the full bus voltage. For a 270 V bus driving 6–9 slot sections bilaterally, the per-section voltage falls naturally to 20–50 V. The Paschen minimum inception voltage at quarter-atmosphere pressure, in a realistic slot geometry, is approximately 200–300 V [16]. The per-slot envelope sits below this by a factor of four to fifteen under all operating conditions — altitude, contamination, geometry variation, and transient switching. Partial discharge does not occur. Not because the insulation is stronger. Because the voltage that would initiate it never appears.

The same architectural decision resolves Crises two and three as direct structural consequences.

Because hairpin conductors terminate at the circuit module at the stator end-face, no copper need run outside the active magnetic length. The end-winding is architecturally eliminated — not reduced, eliminated. Axial machine length shortens. Winding resistance falls by the 20–40% that end-winding copper normally contributes. End-winding elimination also resolves one of the most persistent thermal management challenges in high-speed machines: end-windings are the hardest part of the stator to cool because they lie outside the lamination stack, remote from the primary thermal path. Their elimination exposes the winding terminations at the end-face where cooling is most accessible and effective.

Because every slot carries an independently programmable current, the effective pole count is a software parameter. Two-pole, six-pole, or any blended spatial harmonic composition is achievable by choosing a different per-slot current pattern. The machine continuously adapts its electromagnetic configuration to match the propulsion load at every operating point — providing the torque-speed flexibility that previously required a mechanical gearbox. The adiabatic zero-voltage switching principle underlying the circuit architecture produces inherently slow voltage transitions at each winding section, yielding smooth field changes and reduced torque ripple without additional control complexity.

Because every slot has its own independent circuit pair, failure of any module leaves all others operational. The control system detects the failure and re-optimises the per-slot current pattern within milliseconds. A nine-section machine retains approximately 89% of its rated torque after one module failure, with the transition continuous and smooth — compared to approximately 58% for a conventional three-phase machine losing one phase in a step. This graceful degradation characteristic is directly compatible with aerospace certification requirements.

**Why this was not possible before — and why it is possible now.**

Implementing per-slot bilateral drive with discrete components requires, at every slot section: isolated gate-drive power supplies, floating-domain level-shift circuits, dead-time generation, gate driver stages, and switching devices. With 18 slot sections and bilateral drive, the control infrastructure alone — repeated 36 times — would physically exceed the machine volume and violate every aerospace mass constraint. The concept was architecturally sound. It was not realisable.

It is realisable now because this team has demonstrated in silicon that the entire per-slot drive infrastructure fits on a single chip [1,2]. The voltage-distribution principle was established at system level using a multi-winding adiabatic converter achieving above 99% efficiency [3]. The floating-domain signal isolation required for per-slot control was demonstrated on-chip in the same semiconductor process [5]. Binary-tree multilevel circuits from this family were validated driving three-phase induction motors under closed-loop control, including industrial-scale machines with back-EMF [6] — providing prior experimental evidence that this converter architecture operates correctly into machine loads. The multi-winding electromagnetic dynamics were analytically modelled and experimentally validated [7], providing the modelling framework for multi-slot interaction analysis. Every component of the proposed architecture has a prior demonstration within this group. What has not been demonstrated — and what this programme investigates — is the combination: all of these capabilities applied together inside a rotating machine winding, and the new physics that arises from doing so.

**Timeliness.** Three factors converge to make this the right moment. The enabling IC technology was demonstrated experimentally only within the last design cycle — per-slot integration was physically impossible before these silicon demonstrations. The UK advanced air mobility market is scaling toward the 5–50 kW per-motor power class where this architecture offers maximum benefit, with the sector valued at approximately £3.2 billion by 2030 [21, PI TO CONFIRM]. The UK Jet Zero strategy and EPSRC's energy and decarbonisation priority both require the power-density advances that only an architectural change can deliver [21].

**Benefits.** Academic beneficiaries — power electronics and electrical machines researchers — gain a multi-physics co-design framework treating the stator as an N-element phased array with 2N control degrees of freedom: a new class of design problem with no existing solution methodology. Industrial beneficiaries — UK propulsion integrators including Eaton and Airbus — gain an architecture that eliminates the dominant insulation failure mode by physics, removes the gearbox, and provides certifiable graceful fault degradation. Societal beneficiaries gain a credible route to lighter, more reliable electric propulsion supporting the Jet Zero net-zero-by-2050 objective and the approximately 111,000 direct UK aerospace jobs [22, PI TO CONFIRM] that depend on national competitiveness in next-generation propulsion.

**Scope and funding rationale.** This programme operates at TRL 1–3: foundational architecture, co-design framework, and bench-scale validation. Certification and flight hardware are outside scope. The per-slot IC architecture is foundational infrastructure on which multiple integrators will build — a public good that no single manufacturer will fund alone because the knowledge benefits the whole supply chain. This is precisely why EPSRC is the appropriate sponsor. The validated framework hands off to Eaton and Airbus at TRL 3 for follow-on Innovate UK or ATI development at TRL 4–6.

---

## A2. ★ VISION — "Dissolve the partition" framing (conventional academic sub-headings)
*The most-developed version. Leads with the invisible architectural assumption the whole field has accepted — the partition between converter and machine — then dissolves it. This is the recommended structural direction. The opening below is the "invisible assumption" opening; note the PI flagged it as slightly too philosophical for expert reviewers, which is why Part B collects sharper expert-facing openings (A/B/C) to drop in here.*

## Background and Research Challenge

In every electric motor drive ever deployed — from the smallest industrial servo to the largest traction system — the power converter and the machine winding are designed as separate functional domains. The converter switches. The winding carries current. They are connected through cables, busbars, and terminals, and separated by insulation rated for the full system voltage. This architectural partition is so deeply embedded in the discipline that it has become invisible. It is simply how motor drives are built.

It is also the single point from which every major limitation of aerospace electric propulsion originates.

The insulation must withstand the full bus voltage because the winding sees the full bus voltage — and at cruise altitude, where air pressure falls to one quarter of sea level, the Paschen curve depresses the discharge inception voltage in air from above 300 V into the normal operating range of high-voltage aerospace windings [16]. Partial discharge — the silent, cumulative electrical erosion of insulation — becomes not a design risk but an operational certainty [13]. The end-windings exist because slots must be electrically connected through copper paths that loop outside the magnetic core, contributing 20–40% of total winding resistance, extending axial length, and lying in the most thermally inaccessible part of the stator where effective cooling is nearly impossible to achieve. The mechanical gearbox exists because the pole count is fixed by the physical winding — no combination of voltage and frequency control can replicate the torque-speed transformation that a different winding geometry would provide. The catastrophic fault response — a sudden loss of one third of rated output when a single phase fails — exists because power is concentrated through a small number of high-capacity channels rather than distributed across many.

Every active research programme in aerospace electric propulsion — better insulation chemistries, faster wide-bandgap switching, fault-tolerant winding layouts, variable-frequency drives — operates within this architectural partition. Each programme mitigates one consequence of the partition. None questions the partition itself.

This proposal questions it.

## The Research Opportunity

What becomes possible if the boundary between converter and machine is not merely shortened or better managed, but dissolved entirely?

The proposed architecture places one pair of integrated circuits at each stator slot, each driving its own winding section bilaterally across an open-end conductor. There is no centralised converter. There are no cables from the converter to the machine. There are no terminals at which the full system voltage appears. The switching function is distributed into the winding at the spatial resolution of individual slots. The IC is simultaneously the machine's per-slot excitation source and the power converter's switching element. The winding conductor is simultaneously the electromagnetic force-producing medium and the converter's voltage-distribution network. You cannot draw a boundary between converter and machine because they are the same physical object.

This is not integration in the sense that the motor drive community uses the word. When the literature says "integrated motor drive" it means mounting a conventional inverter onto the machine housing — shorter cables, shared cooling, smaller package. The converter remains a functionally distinct entity connected to the machine through terminals at full bus voltage. What this proposal achieves is categorically different: the converter as a separate functional entity ceases to exist.

The consequences are structural, simultaneous, and arise from a single architectural decision — not from parallel engineering improvements applied independently.

Each IC synthesises its output from a fraction of the bus voltage, so the voltage across any winding section is the controlled difference between two low-voltage IC outputs. For a 270 V bus with 6–9 bilaterally driven sections, the per-section voltage falls to 20–50 V. The Paschen minimum at quarter-atmosphere is approximately 200–300 V [16]. The per-slot envelope sits below this by a factor of four to fifteen. Partial discharge does not occur — not because of better insulation, but because the conditions for discharge inception are architecturally prevented from arising.

Because hairpin conductors terminate directly at the IC modules at the stator end-face, there is no copper path running outside the active magnetic length. The end-winding is not reduced — it is structurally eliminated. The 20–40% of winding resistance that end-windings normally contribute vanishes. The thermally inaccessible end-winding overhang — the part of the stator that limits cooling in high-speed aerospace machines — is replaced by exposed conductor terminations at the end-face where direct thermal management is most effective.

Because every slot carries an independently programmable current, the effective pole count is a continuously adjustable software parameter. The machine reconfigures its spatial field pattern to match the propulsion load at every operating point — two-pole, six-pole, or any blended combination — without a mechanical gearbox and without the discrete switching transients that variable-pole drives require [14,15]. The adiabatic zero-voltage switching inherited from the converter architecture produces inherently smooth voltage transitions at each winding section, yielding smoother rotating field transitions and measurably reduced torque ripple without additional filtering or control complexity.

Because power is distributed across N independent circuit pairs rather than concentrated in a small number of phases, the failure of any single module leaves all others operational. The control system re-optimises the current pattern across the remaining modules within milliseconds. A nine-section machine retains approximately 89% of rated torque after one module failure — compared to approximately 58% for a conventional three-phase machine — with the transition continuous rather than a step. This degradation characteristic is directly compatible with aerospace certification requirements for gradual, predictable performance reduction.

None of these outcomes is an independent design feature. They are all consequences of one decision: dissolve the converter into the winding at slot resolution. This is why the architecture is disruptive rather than incremental — it changes not what you optimise, but what is possible to achieve.

## Novelty and Scientific Contribution

The novelty operates at two levels.

At the architectural level, no prior work has achieved per-slot bilateral IC drive in a rotating machine. Existing modular and multilevel drives subdivide the DC-link or stack cells to manage device voltage stress — they do not address the per-slot insulation constraint that determines machine power density. The continuously-variable-pole concept [14] demonstrates multi-harmonic loss minimisation at the machine terminals through shared-bus modulation — it does not distribute voltage to per-slot level, does not address insulation physics, and retains the full architectural partition between converter and machine. Per-slot bilateral IC drive is architecturally distinct from all of these.

At the scientific level, the coupled multi-physics that arise when the converter is dissolved into the winding are entirely unstudied. The electromagnetic interaction between independently driven adjacent slots sharing a magnetic core. The behaviour of adiabatic zero-voltage switching circuits when the source impedance is an inductive winding with back-EMF rather than a low-impedance DC supply. The coupled thermal problem of IC modules dissipating heat inside a winding environment operating at 120–150°C. The 2N-degree-of-freedom control optimisation across the torque-speed plane with per-slot thermal constraints and electromagnetic coupling. None of this physics exists in any existing literature because the architecture that creates it has not previously been buildable. The multi-physics co-design framework required to design such a system — binding IC circuit envelope, winding electromagnetics, and thermal path into a single optimisation — is itself new knowledge, and is the primary scientific contribution of this programme.

## Why This Is Now Possible

This architecture was not previously buildable. Per-slot bilateral drive requires, at every slot section, a complete set of floating-domain control infrastructure: gate drivers, level shifters, dead-time circuits, voltage regulators, and switching devices. For 18 slots with bilateral drive, that is 36 repetitions of this infrastructure. In discrete component form, the control hardware alone would physically exceed the machine volume. The concept was architecturally sound. It was not realisable.

It is realisable now because this team has demonstrated in silicon that the entire per-slot drive infrastructure fits on a single chip [1,2]. The voltage-distribution principle was established at system level using a multi-winding adiabatic converter achieving above 99% efficiency [3]. The floating-domain signal isolation required for per-slot control was demonstrated on-chip in the same semiconductor process [5]. Binary-tree multilevel circuits from this family were validated driving three-phase induction motors under closed-loop control, including industrial-scale machines with back-EMF [6]. The multi-winding electromagnetic dynamics were analytically modelled and experimentally validated [7]. Every component of the proposed architecture has a prior demonstration within this group. What has not been demonstrated — and what this programme investigates — is the combination inside a rotating machine winding, and the new physics that arises from doing so.

## Timeliness

The enabling IC technology was demonstrated experimentally only in the current design cycle — per-slot integration was physically impossible before these silicon demonstrations. The UK advanced air mobility sector is scaling toward the 5–50 kW per-motor class where this architecture offers maximum benefit, valued at approximately £3.2 billion by 2030 [21, PI TO CONFIRM]. The UK Jet Zero strategy and EPSRC's energy and decarbonisation priority both require power-density advances that no incremental improvement to conventional partitioned motor drives can deliver [21]. This programme provides the architectural lever, at the moment the enabling technology makes it achievable and the national strategy demands it.

## Impact and Beneficiaries

Academic beneficiaries — the power electronics and electrical machines communities — gain a multi-physics co-design framework for a class of machine drive that does not yet have a design methodology. This framework treats the stator as an N-element independently driven electromagnetic array with 2N control degrees of freedom — a fundamentally new optimisation problem reusable across any application where the converter-machine partition limits performance. Industrial beneficiaries — UK propulsion integrators including Eaton and Airbus [PI TO CONFIRM: letters of support] — gain an architecture that eliminates partial discharge by physics, removes the gearbox, and provides aerospace-compatible graceful fault degradation, delivering a power density advantage unreachable by any architecture that retains the converter-machine partition. Societal beneficiaries gain a credible route to lighter, more reliable electric propulsion advancing the Jet Zero net-zero-by-2050 objective and supporting the approximately 111,000 UK aerospace jobs [22, PI TO CONFIRM] that depend on national competitiveness in next-generation propulsion.

## Scope and Funding Rationale

This programme operates at TRL 1–3: foundational architecture, multi-physics co-design framework, and bench-scale validation. Certification and flight hardware are outside scope. The per-slot architecture is foundational infrastructure on which multiple integrators will build — a public good unsuited to single-firm development because no individual company captures enough of its value to justify funding the pre-competitive science alone. This is precisely the class of research EPSRC exists to fund. The validated TRL 3 framework provides the handoff point for Eaton and Airbus to pursue follow-on Innovate UK or ATI development at TRL 4–6.

---

## A3. VISION — early "insulation trap" first draft (pre-restructure, for reference)
*The earliest full Vision, before the three-crises and dissolve-the-partition framings. Kept for the strong opening image and the power-density quantification. Superseded by A1/A2 but useful for lifting phrasing.*

Aerospace electric propulsion has a power density ceiling, and insulation built it. Every kilovolt added to the bus voltage to reduce cable mass and copper weight demands a proportional increase in winding insulation thickness — insulation that fills slot volume that could carry current, extends axial machine length that serves no electromagnetic purpose, and in a 1 kV machine consumes 20–30% of available slot area. The mass saved by raising voltage is surrendered back to the insulation required to survive it. This is not an engineering shortfall. It is a structural consequence of connecting a high-voltage source directly to a winding, and no insulation material resolves it.

Altitude transforms the constraint into a failure mode. Partial discharge — the localised electrical breakdown of gas trapped in insulation voids, conductor interfaces, and slot gaps — is the dominant ageing and failure mechanism in high-voltage rotating machines. It is silent: each discharge event erodes insulation through ozone attack and pressure shock, progressively reducing the breakdown margin over thousands of flight hours before catastrophic failure occurs. On the ground, a well-designed insulation system holds discharge at bay. At cruise altitude, where air pressure falls to approximately 25 kPa — one quarter of sea level — the Paschen curve shifts the minimum discharge inception voltage in air from above 300 V toward values that intersect the normal operating range of standard aerospace winding geometries. A machine that passes every ground qualification test can be discharging at 35,000 feet from its first revenue flight. Wide-bandgap semiconductors — silicon carbide and gallium nitride devices adopted for their switching efficiency — compound this further: switching at tens of kilovolts per microsecond, they drive displacement currents through winding capacitance and create localised field concentrations at turn-to-turn boundaries that no bulk insulation property predicts. The entire high-voltage aerospace motor research programme is managing a problem that its own enabling technology is simultaneously making worse.

There is no material solution because the problem is architectural. This proposal replaces the architecture. A bilateral integrated circuit at every stator slot distributes the bus voltage across the winding so that no slot section ever exceeds 20–50 V. At quarter-atmosphere pressure, the Paschen minimum inception voltage for air in a realistic slot geometry is approximately 200–300 V — the per-slot envelope sits below this by a factor of four to fifteen under all altitude, contamination, and geometry conditions. Partial discharge does not occur. Not because the insulation is stronger. Because the voltage that would cause it never arrives.

*(Continued into "The opportunity / Timeliness / Novelty / Principal risk / Benefits / Scope" — that continuation was later reworked into A1 and A2; see those for the developed versions.)*

---
---

# PART B — VISION OPENING PARAGRAPHS (standalone options)

*These are drop-in opening paragraphs. The three lettered options (A/B/C) are the sharpest, most expert-facing openings — designed to replace the "Background and Research Challenge" opening in version A2 when a less philosophical, more specialist register is wanted. Below them are earlier opening experiments kept for phrasing.*

## The three expert-facing options (★ current live decision)

**Option A — "The binding constraint is insulation, not magnetics or thermal"** *(sharpest reframe; tells reviewers the limit isn't where their tools are)*

> As aerospace propulsion pushes to higher DC-bus voltages in pursuit of power density, the binding constraint moves out of the magnetic and thermal domains — where the field has mature design tools — and into one where it does not: insulation. Above a few hundred volts, and especially at the reduced air pressure of cruise altitude, partial discharge becomes the mechanism that limits how hard a winding can be driven and how long it survives [13,16], and the wide-bandgap devices adopted for converter efficiency only sharpen it. The discipline's responses — better dielectrics, multilevel voltage steps, inverters mounted onto the machine — are all ways to help the winding *survive* the full bus voltage. None questions whether the winding must *see* the full bus voltage at all. This proposal shows that it need not — and that removing this single architectural assumption lifts not only the insulation limit but several of the field's hardest constraints at once.

**Option B — "Certifying machines against a self-inflicted failure mode"** *(most vivid; reuses the "first revenue flight" image)*

> A high-voltage aerospace machine can pass every insulation qualification on the ground and begin ageing on its first revenue flight. At cruise the ambient pressure falls to roughly a quarter of sea level, the Paschen minimum collapses, and the partial-discharge inception voltage in air drops into the normal operating range of standard winding geometries [16]; a machine that was silent at sea level then discharges continuously at altitude, eroding insulation for thousands of flight-hours before any qualification model predicts failure [13]. Wide-bandgap switching, adopted for efficiency, only accelerates it. The field is, in effect, certifying machines against a failure mode that its own enabling technologies create — and every countermeasure operates inside one fixed architecture, in which the converter and the machine are separate objects and the winding must therefore withstand the entire bus voltage. This proposal removes that necessity, and with it the failure mode.

**Option C — "Power density and efficiency bought against insulation life"** *(most self-contained; lands the 20–50 V mechanism in the opening itself)*

> In high-voltage aerospace drives, the two levers the field pulls hardest — raising DC-bus voltage for power density and switching wide-bandgap devices faster for efficiency — are precisely the two that drive partial discharge, the dominant life-limiting mechanism in the machine [13]. At altitude this becomes acute: reduced pressure collapses the discharge inception voltage into the winding's operating range [16], so every increment of power density and efficiency is bought directly against insulation life. This is usually treated as an insulation problem to be out-engineered; it is not. It is a direct consequence of an architecture in which converter and machine are distinct, so the winding must hold the full bus voltage. This proposal dissolves that architecture — placing a bilateral integrated-circuit pair at every stator slot so that no winding section ever exceeds 20–50 V, and partial discharge is eliminated by design rather than mitigated by insulation.

*Integration note: if C is chosen, trim the first sentences of "The Research Opportunity" (they restate the per-slot architecture and would repeat). A and B flow in as-is. A hybrid (A's reframe → C's mechanism sentence) is also on the table.*

## Earlier opening experiments (kept for phrasing)

**"The paradox" opening** *(general-audience; strong rhetorical hook)*

> Every electric aircraft flying today carries a fundamental contradiction: the higher the voltage you push through the motor to save weight, the more insulation you must add to survive it — and that insulation gives back half the weight you saved. The aerospace industry has spent a decade optimising around this contradiction. This proposal dissolves it. By distributing a small integrated circuit at every slot of the motor winding, the system voltage never appears at any insulation boundary — the motor runs on a high-voltage bus and a low-voltage winding simultaneously, because the two are no longer the same thing.

**"The impossible trade-off" opening** *(general-audience; states the trade then breaks it)*

> To build a lighter electric aircraft, raise the motor voltage — higher voltage means lower current, thinner cables, less copper, less mass. But raising the voltage thickens the insulation, which adds back the mass you just saved. Worse: at cruise altitude, the insulation that survived ground testing begins to discharge, because thin air lowers the breakdown threshold. The industry has spent a decade trying to find a material that breaks this trade-off. There is no such material. The trade-off exists because of the architecture, and this proposal replaces the architecture.

**"Tolerance management" opening** *(most direct; risk of reading as dismissive of prior work)*

> Every electric aircraft motor built today connects its winding directly to a high-voltage inverter and hopes the insulation survives. This is not engineering — it is tolerance management. The insulation is too thick, too heavy, and still inadequate at altitude, where falling air pressure brings discharge inception down to meet the operating voltage. The solution is not better insulation. The solution is to ensure the high voltage never reaches the winding in the first place. That is what this proposal does.

**Optional UPU framing paragraph** *(insert anywhere the per-slot idea needs grounding in the group's battery-domain precedent)*

> The principle of distributing power conversion to the point of consumption — rather than centralising it in a large unit and routing high-voltage power to each load — has been validated in battery-electric systems where each cell is served by its own compact power unit [5,6]. The per-slot machine drive applies the same principle to the stator winding: each slot is its own point of electromagnetic energy conversion, and this programme places the power electronics at that point rather than routing high-voltage power from a central converter through the winding to reach it.

---
---

# PART C — APPROACH, FULL VERSIONS

---

## C1. ★ APPROACH — "Co-design as scientific necessity" (conventional academic sub-headings)
*The most-developed Approach, paired with Vision A2. Frames co-design not as a project-management convenience but as a scientific necessity forced by bidirectional coupling — and positions the co-design framework itself as a primary research contribution.*

## Research Questions

When the converter-machine partition is dissolved, physics that has no precedent in the existing literature arises at every interface. Five questions define the boundary of current knowledge that this programme crosses.

**RQ1:** What winding geometry, conductor arrangement, and slot count maximise independently controllable multi-harmonic spatial field excitation, while accommodating bilateral per-slot IC access, in a machine operating at 6,000–10,000 RPM on a 270 V bus — given that existing winding models assume single-terminal single-frequency excitation and therefore cannot be applied?

**RQ2:** Under what circuit conditions does adiabatic zero-voltage switching remain achievable when the bilateral source is an inductive winding section with back-EMF and variable impedance — and over what frequency envelope does this hold across the full propulsion speed range — given that all prior demonstrations used low-impedance battery-cell sources?

**RQ3:** What is the transient per-slot voltage distribution during bilateral IC switching and during spatial field reconfiguration — and does that distribution ever transiently approach the 200–300 V Paschen inception threshold at altitude, even if the steady-state per-slot voltage remains safely below it?

**RQ4:** Given N independently controllable slot current sources, each with its own thermal and current limits, what current pattern minimises total losses across the torque-speed plane — and how rapidly can that pattern be re-optimised after one or more IC modules fail, given that aerospace certification requires the transition to be smooth and predictable?

**RQ5:** What is the coupled thermal behaviour of per-slot IC modules and winding conductors in the integrated configuration — where the IC dissipates heat inside a winding environment operating at 120–150°C, against a semiconductor process junction limit of approximately 150–175°C — and what packaging geometry maintains safe margins throughout representative aerospace duty cycles?

These questions are unanswerable from existing literature because the architecture that creates them has not previously existed. Each is directly answerable by the methodology below.

## Methodology: Co-Design as Scientific Framework

The architecture that dissolves the converter-machine partition also dissolves the conventional sequential design approach. In standard motor drive development, the machine is designed first, the converter is designed to drive it, and the control is designed to manage both. This sequence fails fundamentally here because the systems are bidirectionally coupled at every interface.

The winding geometry determines the per-slot impedance, back-EMF profile, inter-slot coupling matrix, spatial harmonic spectrum, and thermal environment that each IC must operate within. The IC's thermal and electrical limits — junction temperature, switching frequency ceiling, current capability — in turn constrain the winding's current density, section count, and permissible harmonic content. The control framework cannot be formulated without both the coupling matrix from the machine and the switching bandwidth from the IC. Each of the three subsystems constrains the design of the other two. There is no valid starting point for a sequential design process.

The methodology is therefore structured as a parallel co-design programme in which machine, IC, and control are developed simultaneously and iteratively. WP1 (machine) and WP2 (IC) run in parallel from month 1, exchanging parameterised models at defined interface milestones. WP3 (control) begins analytical formulation from month 1 using parameterised placeholder models, and consumes validated WP1 and WP2 outputs as they become available. WP4 (demonstrator) integrates from month 18. This parallel structure is not merely efficient — it is scientifically necessary, because the co-design framework itself, and the methodology for navigating a bidirectionally coupled machine-converter-control design space, is a primary research contribution of this programme. No such framework exists in the literature.

Every work package produces standalone publishable output — validated models, characterised hardware, or control frameworks — so the programme retains full scientific value even if integration in WP4 reveals challenges that require iteration.

## WP1 — Machine Electromagnetic Design (M1–M18)
*Addresses RQ1 and RQ3. Led by Co-I Asef with PDRA 2.*

The 18-slot open-end hairpin fractional-slot winding must simultaneously support independently controllable multi-harmonic spatial excitation across all slot sections, present both conductor ends at the stator end-face for bilateral IC attachment, and minimise AC resistance under concurrent harmonic currents spanning 100 Hz to 3 kHz. No existing winding model addresses this combination — standard proximity-effect and winding-factor models assume single-frequency, single-terminal drive, neither of which holds here.

Extended analytical winding factor models, building on the winding configuration methods the group established for fault-tolerant eVTOL machines [12], identify slot-pitch and coil-group geometries supporting at least three independently controllable spatial harmonic orders. Multi-harmonic finite element analysis characterises per-slot voltage distribution under bilateral IC switching, concurrent-harmonic AC resistance, and the inter-slot electromagnetic coupling matrix that WP3 requires. A distributed-parameter transmission line model of the winding quantifies transient per-turn voltage during IC switching — directly answering RQ3 by confirming whether insulation stress remains below the Paschen threshold under all transient conditions. A modelled conventional baseline — three-phase winding, discrete two-level inverter, 270 V bus, same power and speed — is established here as the efficiency and mass comparator for WP4 validation.

OUTPUT: Validated multi-harmonic electromagnetic model, per-slot voltage distribution and transient characterisation, AC resistance maps, and confirmed winding geometry for physical build.

## WP2 — Per-Slot Circuit Module Architecture (M1–M18)
*Addresses RQ2 and RQ5. Led by PI with PDRA 1 and Co-I Everts.*

The IC architecture underlying the per-slot drive was validated driving battery cells — low-impedance voltage sources with no back-EMF [1,2,4]. A machine winding section is fundamentally different: inductive impedance, speed-dependent back-EMF, and magnetic coupling to adjacent sections through the shared stator core. Whether adiabatic zero-voltage switching is maintained across the propulsion speed range, and over what frequency envelope, are the central open questions. The group's prior demonstration of binary-tree multilevel converters driving three-phase induction motors under closed-loop control [6] provides preliminary evidence that the circuit architecture operates into machine loads — but at terminal level, not per-slot bilateral level. WP2 investigates the specific physics that arise when each individual slot section is the source.

SPICE-level simulation parameterised from WP1 impedance models maps the achievable ZVS envelope. On-chip digital isolation demonstrated in the same semiconductor process [5] provides the floating-domain control signal architecture directly applicable to per-slot drive. A thermal resistance network model, developed with Co-I Everts and informed by the group's microchannel heat-sink analysis [13], targets IC junction temperature within safe limits when the winding operates at 120–150°C.

Experimental characterisation uses discrete functional-equivalent prototype boards — one per slot section — replicating the circuit architecture with discrete power devices. Every WP2 scientific question is answerable on these boards. Monolithic IC fabrication is a stretch enhancement, not a programme dependency. This fully de-risks the programme from fabrication timelines and cost.

OUTPUT: Characterised per-slot drive cell with ZVS envelope map, validated thermal model, and packaging specification for winding-integrated duty.

## WP3 — Reconfigurable Field Control (M1–M30)
*Addresses RQ4. Led by PI with both Co-Is and PDRA 1.*

With N independently driven sections, the control problem has 2N real-valued degrees of freedom per operating point. The existing continuously-variable-pole formulation [14] optimised four variables on a shared bus. This programme extends that to the full N-slot problem with per-section thermal constraints and inter-slot electromagnetic coupling terms — a qualitatively different optimisation structure.

Offline convex optimisation generates loss-minimisation current maps across the torque-speed plane for every possible fault state, from zero to progressive multiple-module failure. Online model predictive control provides real-time pattern selection, with offline maps as a stable fallback when update rate is limited by coupling bandwidth. The fault re-optimisation response time — the interval between module failure detection and stable current reallocation — is a primary research output and the critical metric for aerospace certification compatibility. Hardware-in-the-loop validation on UCL APL's real-time control infrastructure tests software-defined pole-count transitions and fault re-optimisation before physical integration.

OUTPUT: Validated 2N-DOF control framework, offline loss maps for all fault states, real-time MPC implementation, and quantified fault re-optimisation response and torque recovery profile.

## WP4 — Integrated Demonstrator and Validation (M18–M36)
*Addresses RQ5.*

WP4 assembles the WP1 machine, WP2 circuit modules, and WP3 control into a complete 5–15 kW, 270 V, 6,000–10,000 RPM system on UCL APL's dynamometer [PI TO CONFIRM: speed envelope]. The validation programme produces: efficiency maps compared against the WP1 conventional baseline; thermal characterisation of per-slot IC modules under sustained load and transient duty cycles; fault insertion tests with controlled module disconnection confirming re-optimisation latency and smooth torque recovery; end-winding elimination quantification confirming predicted axial length and resistance reductions; and torque ripple measurements confirming the smooth-transition benefit of adiabatic switching. All data are published as an open community dataset in the UCL institutional repository.

OUTPUT: Validated integrated demonstrator, complete multi-physics experimental dataset, fault response characterisation, torque ripple measurements, and open dataset.

## Feasibility and Prior Work

Every component of the proposed architecture has a prior experimental demonstration within this team — and the gap between what has been demonstrated and what this programme investigates is precisely defined.

The adiabatic magnetic voltage-distribution principle was demonstrated at above 99% efficiency at kilowatt scale [3] — leaving open whether ZVS holds with an inductive machine winding source (answered by WP2). The complete per-slot drive infrastructure — switches, gate drivers, floating supplies, level shifters, dead-time control — was integrated onto a single chip and silicon-validated [1,2,4] — leaving open operation under machine winding conditions (WP2). On-chip digital isolation for floating control domains was demonstrated in the same semiconductor process [5] — directly applicable to per-slot control signal routing. Binary-tree multilevel circuits were demonstrated driving three-phase induction motors with back-EMF under closed-loop control [6] — leaving open per-slot bilateral operation (WP2). Multi-winding electromagnetic dynamics were modelled and experimentally validated [7] — informing WP1 directly. Fault-tolerant dual three-phase winding configurations for eVTOL were analysed and published [12] — establishing the winding analysis methodology for WP1.

What none of this prior work addresses — and what defines the scientific gap — is the combined multi-physics of per-slot bilateral IC drive operating inside a rotating machine winding: the electromagnetic coupling, the thermal co-design, the 2N-DOF control, and the co-design framework that navigates all three simultaneously. That is precisely what this programme produces.

## Risk Assessment

| Risk | Level | Mitigation |
|---|---|---|
| IC fabrication delayed or fails | High | Discrete prototype boards carry all WP2–WP4 research; full architectural validation proceeds regardless of fabrication outcome |
| ZVS lost under inductive winding source | Medium | WP2 maps achievable frequency envelope; fallback adopts hard-switched parallel low-voltage devices, retaining per-slot voltage distribution benefit even without adiabatic switching |
| 2N-DOF control unstable under inter-slot coupling | Medium | Offline convex loss maps provide a stable lookup fallback that preserves software-defined pole selection even if real-time MPC update rate must be constrained |
| IC junction temperature exceeds process limit | Medium | WP2 thermal model, developed with Co-I Everts, sets packaging specification before any physical assembly; fallback derates per-IC current and compensates by increasing the number of active sections |
| Demonstrator specific power below projection | Low | End-winding elimination and insulation thickness reduction yield measurable structural gains that are architecture-inherent and independent of efficiency headlines; the experimental dataset retains full scientific value regardless |

## Research Environment

UCL Advanced Propulsion Laboratory holds all facilities required to deliver the programme: dynamometer for motor-drive validation [PI TO CONFIRM: confirm 6,000–10,000 RPM at 5–15 kW]; power electronics laboratory with high-speed oscilloscopes and electronic loads; real-time control platform for hardware-in-the-loop validation; and electromagnetic, power electronics, and thermal modelling tools. The IC design flows developed for prior chip work [1,2,4,5] transfer directly into WP2. Grant procurement covers project-specific items only: the prototype machine, discrete circuit prototype boards, high-bandwidth differential voltage probes for per-slot transient measurement, and thermal imaging instrumentation for module-level temperature mapping — none of which duplicates existing APL capability.

**Translation.** The validated multi-physics co-design framework and open experimental dataset are the primary academic outputs, deliverable to the power electronics and electrical machines community alongside UK groups at Nottingham, Bristol, Newcastle, and Sheffield working in adjacent areas of aerospace electric propulsion. Industrial translation runs through Eaton and Airbus [PI TO CONFIRM: letters of support], whose internal demonstrator programmes provide the natural pathway for follow-on Innovate UK or ATI development at TRL 4–6. All data are published openly.

---

## C2. APPROACH — first full draft (WP-structured, for reference)
*The earlier Approach draft. Same WP content but framed as parallel technical strands rather than co-design-as-necessity. Kept for the alternative phrasing of the WP intros and the RQ framing.*

## Research questions

This proposal is structured around five questions that current understanding cannot answer, each answerable by the methodology that follows:

**RQ1:** What is the magnetic voltage distribution and AC-resistance behaviour of a slot-level open-end hairpin winding under simultaneous multi-harmonic excitation, where existing proximity-effect models assume single-frequency operation?

**RQ2:** What integrated-circuit packaging, dead-time, and adiabatic zero-voltage-switching (ZVS) conditions sustain per-slot bilateral drive when the source is an inductive winding with back-EMF rather than a low-impedance battery cell?

**RQ3:** What control formulation solves the 2N-degree-of-freedom loss-minimisation, thermal-balancing, and harmonic-shaping problem in real time under inter-slot magnetic coupling?

**RQ4:** What fault re-optimisation envelope and transition speed does per-slot redundancy deliver when one or more IC pairs fail, relative to the abrupt torque collapse of three-phase machines?

**RQ5:** What system-level specific power and efficiency does an integrated per-slot demonstrator achieve against a conventional 1 kV centralised-inverter aerospace drive?

## Methodology

The work divides into four packages. WP1 and WP2 run in parallel from the start; WP3 begins analytically at month 1 and consumes WP1 outputs at ~month 12; WP4 integrates from ~month 18.

**WP1 — Electromagnetic design of the slot-level open-end winding (M1–M18). Addresses RQ1 and RQ5.** The lead activity establishes the magnetic voltage distribution across an 18-slot hairpin fractional-slot concentrated winding driven bilaterally — each coil section accessed from both end-face tips — so that per-section insulation sees only 20–50 V of a 270 V bus. Multi-harmonic finite-element analysis (ANSYS Maxwell or FEMM) and extended analytical winding models characterise AC resistance under simultaneous multi-pole excitation across 100 Hz–3 kHz, because single-frequency proximity-effect models do not capture concurrent harmonic orders. The phased-array stator is modelled as N elements giving 2N control degrees of freedom rather than a fixed three-phase set, eliminating discrete pole boundaries. OUTPUT: a validated multi-harmonic electromagnetic model and an 18-slot winding geometry with quantified per-section voltage and AC-resistance maps.

**WP2 — Per-slot bilateral IC drive characterisation (M1–M18). Addresses RQ2 and RQ4.** The lead activity characterises the bilateral IC pair driving an inductive winding section rather than the low-impedance battery cell against which the binary-tree multilevel converter (BTMLC) IC was previously measured. SPICE-level circuit simulation under winding-source and back-EMF conditions establishes ZVS feasibility and the switching-frequency envelope for machine duty; a thermal resistance network targets junction-to-cooling-system below 5°C/W, because sustained winding temperatures reach 120–150°C against a 130 nm BCD junction limit of ~150–175°C. Discrete-component functional-equivalent prototype boards — 12 to 18, one per section — decouple this programme from IC tape-out, preserving progress even if monolithic fabrication slips. OUTPUT: a characterised per-slot drive cell with verified ZVS envelope, thermal model, and fault-bypass behaviour.

**WP3 — Reconfigurable per-slot control (M1–M30). Addresses RQ3, RQ4 and RQ5.** The lead activity formulates the high-dimensional control problem as offline convex optimisation generating loss-minimisation maps, extending the continuously-variable-pole two-variable formulation [14] to the N-slot case, then implements model predictive control (MPC) for real-time execution under inter-slot coupling. Hardware-in-the-loop validation tests software-defined pole-count selection and graceful fault re-optimisation, rather than the discrete switched-pole transitions that demand dedicated transition controllers [15]. OUTPUT: a validated 2N-DOF control framework with measured fault re-optimisation envelope and stability proof under coupling.

**WP4 — Integrated demonstrator (M18–M36). Addresses RQ4 and RQ5.** The lead activity assembles a 5–15 kW, 270 V, 6,000–10,000 RPM integrated machine-drive demonstrator with the 18-slot hairpin winding and 6–9 driven sections, operating across 100 Hz–3 kHz. Instrumentation produces efficiency maps, thermal data, fault-response data, and a released multi-physics dataset. OUTPUT: a working integrated demonstrator and an open community dataset benchmarking system-level specific power against a conventional 1 kV drive.

## Feasibility

Four prior assets establish that the architecture is buildable and de-risk its hardest dependencies. The DCAT converter [3] proves that adiabatic ZVS multi-winding topologies sustain >99% efficiency and that a winding can act as a natural voltage-distribution network — leaving open whether ZVS holds when the source is an inductive machine winding, which WP2 resolves. The BTMLC IC [1] proves monolithic integration of 18 power switches, gate drivers, level shifters, and floating supplies on a 15.2 mm² BCD die — leaving open behaviour under inductive winding source, variable frequency, inter-slot coupling, and aerospace vibration, which WP2 addresses through functional-equivalent boards and alternative packaging study. The binary-tree converter family driving a real 400 V three-phase induction machine under closed-loop control [6] proves the architecture operates into machine loads with back-EMF — leaving open per-slot bilateral operation. The continuously-variable-pole machine [14] proves that combining pole orders minimises combined machine and inverter losses — leaving open the N-slot generalisation beyond two superimposed harmonic orders on a shared bus, precisely the 2N-DOF problem WP3 solves.

*(Risk table and research-environment content in this earlier draft are equivalent to C1's; use C1's versions.)*

---
---

# PART D — REUSABLE COMPONENTS

*Recurring blocks that appear across versions — collected here so they can be lifted without hunting through the full drafts.*

## D1. Research-question set — the two phrasings

**Phrasing 1 (dissolve-the-partition / co-design framing — matches C1):** RQ1 winding geometry for multi-harmonic + bilateral access "given existing models cannot be applied"; RQ2 ZVS under inductive source "given all prior demos used battery cells"; RQ3 transient per-slot voltage "even if steady-state is safe"; RQ4 2N-DOF optimisation + fault re-optimisation "given certification needs smooth transitions"; RQ5 coupled thermal "IC dissipating inside 120–150°C winding vs 150–175°C junction limit." *(Each RQ names the reason it is unanswerable from existing literature.)*

**Phrasing 2 (technical-strand framing — matches C2):** RQ1 magnetic voltage distribution + AC resistance under multi-harmonic; RQ2 IC packaging/dead-time/ZVS under inductive source; RQ3 2N-DOF control formulation under coupling; RQ4 fault re-optimisation envelope vs three-phase collapse; RQ5 system-level specific power vs conventional 1 kV baseline. *(More conventional; RQ5 framed as a benchmarking question.)*

## D2. Standard risk table (agreed — appears in both Approaches)

| Risk | Level | Mitigation |
|---|---|---|
| IC fabrication delayed/fails | High | Discrete boards carry all WP2–WP4 research; validation proceeds regardless |
| ZVS lost under inductive winding source | Medium | WP2 maps achievable frequency envelope; fallback = hard-switched parallel low-voltage devices, retaining per-slot voltage distribution |
| 2N-DOF control unstable under inter-slot coupling | Medium | Offline convex maps as stable fallback preserving software-defined pole selection |
| IC junction temperature exceeds limit | Medium | WP2 thermal model sets packaging spec before build; fallback derates per-IC current, adds sections |
| Demonstrator specific power below projection | Low | End-winding elimination + insulation reduction give structural gains independent of efficiency headline; dataset retains value |

## D3. WP one-liners (for a Gantt or summary table)

- **WP1 (M1–M18, Asef + PDRA2):** machine electromagnetic design — winding-factor models, multi-harmonic FEA, transmission-line transient model. RQ1, RQ3.
- **WP2 (M1–M18, PI + PDRA1 + Everts):** per-slot circuit module — SPICE under winding source, ZVS mapping, thermal network, 12–18 discrete boards. RQ2, RQ5.
- **WP3 (M1–M30, PI + both Co-Is + PDRA1):** reconfigurable control — convex 2N-DOF loss maps, MPC, HIL, fault re-optimisation. RQ4.
- **WP4 (M18–M36):** integrated demonstrator — efficiency/thermal/fault/torque-ripple characterisation, open dataset. RQ5.

## D4. The "why now / feasibility" lineage sentence (recurs in several forms)

> Every component of the proposed architecture has a prior experimental demonstration within this group — the adiabatic voltage-distribution principle [3], the complete per-slot drive infrastructure on a single chip [1,2], on-chip floating-domain isolation [5], binary-tree converters driving real induction machines with back-EMF [6], and validated multi-winding electromagnetic models [7]. What has never been demonstrated, and what this programme establishes, is their combination inside a rotating machine winding and the new physics it produces.

## D5. The IMD-differentiation sentence (standing content rule — always include)

> This is not integration in the sense the motor-drive community uses the word. "Integrated motor drive" means mounting a conventional inverter onto the machine housing — shorter cables, shared cooling, smaller package — with the converter remaining a functionally distinct entity connected through terminals at full bus voltage. IMD *shortens* the converter–machine partition; this proposal *dissolves* it, so the converter as a separate entity ceases to exist.

---

*End of version library. For the merged project brief, evidence base, reference list, and outstanding-confirmations checklist, see `EPSRC_Master_Handover.md`.*
