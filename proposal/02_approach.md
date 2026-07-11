<!--
Status: DRAFTING        (SKELETON -> DRAFTING -> CHOSEN -> LOCKED)
Word limit: ~1,200-1,800 words (part of the 6-page V&A PDF, with Vision; 6 pages total + 1 Gantt page)
Locked date: -
-->

# Approach

## Agreed sub-headings
Hypotheses & objectives · Research design & methodology (co-design as scientific necessity) · Work packages · Building on previous work · Research environment & facilities · Feasibility & risk management · Project management & delivery · Maximising translation of outputs into outcomes & impact · Project plan (+ the 1-page Gantt).

## Research questions (working set — see open item below)

- **RQ1** — winding geometry / conductor arrangement / slot count for independently controllable multi-harmonic spatial excitation + bilateral per-slot access, at 6,000–10,000 RPM on 270 V (existing single-terminal single-frequency winding models cannot be applied).
- **RQ2** — circuit conditions sustaining adiabatic ZVS when the bilateral source is an inductive winding with back-EMF; achievable frequency range across the speed envelope (all prior demonstrations used low-impedance battery cells).
- **RQ3** — transient per-slot voltage distribution during switching / field transitions; does it ever transiently approach the 200–300 V Paschen threshold even when steady-state is safe? *(Verification-grade: keep, do not inflate.)*
- **RQ4** — optimal 2N-DOF current pattern minimising losses across the torque-speed plane within per-slot limits; fault re-optimisation speed (certification needs smooth transitions).
- **RQ5** — coupled module/winding thermal behaviour (module dissipating inside a 120–150 °C winding against a ~150–175 °C junction limit); packaging for aerospace duty.

**OPEN ITEM (recommended):** add a dedicated **inter-slot magnetic coupling** RQ — it is the designated headline uncertainty (Strategy §2) and currently sits implicitly across RQ1/RQ3/RQ4. Candidate wording: *"When N slot drives share one magnetic core, each drive's switching perturbs its neighbours' operating point through the shared flux paths and common-mode coupling. Under what conditions is the coupled 2N-DOF system controllable at full slot count — and does coupling impose a fundamental limit on the number of independently drivable sections?"*

## Work packages

- **WP1 — Machine Electromagnetic Design (M1–M18).** Lead: Co-I Asef + PDRA 2. RQ1, RQ3. Analytical winding-factor models; multi-harmonic FEA; distributed-parameter transmission-line model for transient per-turn voltage; establishes the modelled conventional baseline (3-phase winding, discrete 2-level inverter, 270 V, same power/speed). **Parallel with WP2 from M1.** *(Platform WP — known-hard; do not over-weight in the Vision.)*
- **WP2 — Per-Slot Circuit Module Architecture (M1–M18).** Lead: PI + PDRA 1 + Co-I Everts. RQ2, RQ5 (+ coupling RQ if adopted). SPICE under winding-source conditions; ZVS-envelope mapping; thermal resistance network; **12–18 discrete prototype boards = primary experimental vehicle** — IC tape-out is a stretch enhancement, not a dependency. *(Centre of gravity #1.)*
- **WP3 — Reconfigurable Field Control (M1–M30).** Lead: PI + both Co-Is + PDRA 1. RQ4 (+ coupling RQ). Convex 2N-DOF loss maps for every fault state; MPC real-time; HIL; fault re-optimisation response time a primary output. *(Centre of gravity #2 — where the crown-jewel object lives as a solvable problem.)*
- **WP4 — Integrated Demonstrator (M18–M36).** Assembles WP1–3: 5–15 kW, 270 V, 6,000–10,000 RPM on the APL dynamometer [PI TO CONFIRM: envelope]. Efficiency maps vs baseline; thermal characterisation; fault-insertion; end-winding-elimination quantification; torque ripple; open dataset. *(WP4 VALIDATES the framework; it is not the contribution.)*

**WP writing recipe:** each WP = one aim sentence + run-in tasks; each task carries *method → facility → partner input → inter-WP hand-off → deliverable (Dn.k)*. Hold the 1:1 spine **Gap n → On → WPn**. State explicitly that WP1∥WP2 from M1, WP3 analytic from M1, only WP4 dependent.

## Risk table (agreed)

| Risk | L | Mitigation |
|---|---|---|
| IC fabrication delayed/fails | High | Discrete boards carry all WP2–WP4 research; validation proceeds regardless |
| ZVS lost under inductive winding source | Med | WP2 maps achievable frequency envelope; fallback = hard-switched parallel low-voltage devices, retaining per-slot voltage distribution |
| 2N-DOF control unstable under inter-slot coupling | Med | Offline convex maps as stable fallback preserving software-defined pole selection |
| Module junction temperature exceeds limit | Med | WP2 thermal model sets packaging spec before build; fallback derates per-module current, adds sections |
| Demonstrator specific power below projection | Low | End-winding elimination + insulation reduction give structural gains independent of the efficiency headline; dataset retains value |

## Silicon — two registers (hold both)
Vision: the chip is the load-bearing "why now / why nobody before" breakthrough. Risk table: de-risked out of the critical path. Never let the risk-table language leak into the Vision.

## Still needed from PI (docs/06 item 17)
WP task/duration/deliverable/milestone detail; H1..Hn / O1..On enumeration; APL facility distinctive numbers; Gantt content; Eaton/Airbus roles.

## Draft

*(To be built after the Vision locks. Prior full drafts: `library/versions_archive.md` — C1 "co-design as scientific necessity" is the closest structural precedent.)*
