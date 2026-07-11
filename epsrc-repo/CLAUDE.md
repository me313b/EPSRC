# CLAUDE.md — EPSRC Proposal Project

You are helping Dr Mehdi Baghdadi (UCL Advanced Propulsion Laboratory) write an EPSRC Standard Research Grant proposal. This file is your operating manual. Read it fully before doing anything.

## What this project is

**Title:** Foundations of Monolithically Integrated Per-Slot Machine Drives for Reconfigurable Aerospace Propulsion
**PI:** Dr Mehdi Baghdadi (UCL APL) · **Co-Is:** Dr Pedram Asef (electrical machines), Dr Marilize Everts (thermal) · **Partners:** Eaton, Airbus (letters NOT yet confirmed) · **Duration:** 36 months · **Theme:** D — Engineering · **TRL 1–3 only.**

**The idea in one paragraph:** A modular power-electronic drive (an integrated-circuit pair) at every stator slot, working bilaterally across an open-end winding. The bus voltage is composed magnetically along the machine, so no winding section ever sees more than 20–50 V of the 270 V bus. Partial discharge is eliminated by architecture (at quarter-atmosphere the inception threshold is ~200–300 V — a 4–15× margin). Because every slot is driven individually, phase count stops being a design constraint (N sections = N phases), giving graceful fault tolerance (~89% torque retained after one module failure vs ~58% for three-phase), software-defined pole count (gearbox removed), end-winding elimination (−20–40% winding resistance, shorter machine, better cooling), and smooth adiabatic output (lower losses; the group's converter family measured >99% efficiency). Converter and machine become the same physical object.

Full detail: `docs/01_concept_and_parameters.md`. Never invent numbers — every figure you use must come from that file or be flagged `[PI TO CONFIRM: …]`.

## How to work (non-negotiable protocol)

1. **Section by section.** Work on one proposal section at a time, in `proposal/`. For each section produce **2–3 distinct EPSRC-style variants** for the PI to choose from, then converge on one.
2. **Lock protocol.** Every file in `proposal/` has a `Status:` line at the top: `SKELETON`, `DRAFTING`, `CHOSEN`, or `LOCKED`. Never edit a `LOCKED` file unless the PI explicitly says to unlock it. When the PI approves a section, set it to `LOCKED` and note the date.
3. **Word counts.** State the word count at the end of every draft. Hard limits are in `docs/02_epsrc_rules.md`. Never exceed them.
4. **Anonymisation.** Individual researcher names (Farhat, Tazehkand, Kolahian, Edwards) must NOT appear in proposal body text — write "the group's work" / "prior doctoral research in the group"; use [Author] placeholders in reference entries. PI and Co-I names appear normally.
5. **Unconfirmed facts** are always flagged inline as `[PI TO CONFIRM: description]` and mirrored in `docs/06_outstanding.md`.
6. **Voice rules:** never "novel"/"innovative" as bare adjectives; never "this project will investigate" (write "this programme will establish"); no passive voice in opening paragraphs; expand acronyms on first use per section; UK English throughout.
7. **Commit discipline.** Make small, labelled commits: `vision: add variant B opening`, `approach: lock RQ set`, etc. Never rewrite a locked section in the same commit that drafts a new one.

## The story strategy (read `docs/03_strategy.md` for full reasoning)

- **Crown jewel:** a method framed as a discovery — when the converter is distributed into the winding at slot resolution, machine + power electronics + control become ONE electromagnetic object with 2N degrees of freedom, and no governing design theory for that object exists. PD elimination, n-phase operation, fault tolerance are CONSEQUENCES, not the heart. Lead with the cause; derive the benefits.
- **Against "too good to be true" — three rules:** (1) derive, don't list — benefits fall out of one decision in causal order; (2) hierarchy — headline (voltage split kills PD, the wall the ATI roadmap runs into) → multiplier (per-slot control ends three-phase tyranny → redundancy) → corollaries in one sentence (smoothness, end-windings, pole count); (3) pay for it immediately — right after the cascade, name the price: N drives sharing one magnetic core are coupled, and whether that coupling is controllable is the central open question.
- **Headline scientific risk:** inter-slot magnetic coupling. It is the most alive uncertainty and doubles as the deepest novelty. ZVS under an inductive back-EMF source is real but bounded. Transient Paschen breach is verification, not discovery — do not inflate it.
- **WP weight:** the science lives in WP2 (circuit-in-winding) and WP3 (2N-DOF control). WP1 is the platform; WP4 validates, it is not the contribution.
- **The silicon, two registers:** in the Vision it is the load-bearing "why now / why nobody before" breakthrough; in the risk table it is de-risked out of the critical path (12–18 discrete boards carry all the science). Both true; keep each in its own section.
- **Dials:** ~70% bold braced by de-risking; physics carries the opening ~80/20 over policy, inverting toward 50/50 by Impact (ATI figures live in Timeliness/Impact, not sentence one).
- **ATI anchor (from the 2026 roadmap):** EPU target 10 kW/kg by 2030 → 15 kW/kg; "high-voltage" named as the 2030 electrical-architecture milestone; MW-scale distributed power system architectures on the ultra-efficient roadmap. The UK's own strategy collides with PD at altitude — this proposal dissolves the collision.

## File map

```
CLAUDE.md                      ← you are here
SETUP.md                       ← how the repo was set up / how to run
docs/
  01_concept_and_parameters.md ← concept, cascade, all confirmed numbers
  02_epsrc_rules.md            ← format, limits, criteria, voice rules
  03_strategy.md               ← full strategic reasoning (framing, risks, dials)
  04_evidence_base.md          ← group papers/theses, lineage table, prior art, ATI findings
  05_reference_list.md         ← master reference list + renumbering warning
  06_outstanding.md            ← every [PI TO CONFIRM] item, consolidated
proposal/                      ← the deliverables, one file per section
  00_summary.md        (550 w)
  01_vision.md         (~1,400–1,500 w, part of 6-page V&A PDF)
  02_approach.md       (~1,200–1,800 w, part of 6-page V&A PDF)
  03_capability_r4ri.md (1,500 w)
  04_resources.md      (1,000 w)
  05_ethics.md         (500 w)
  06_references.md     (1,000 w)
  07_facilities.md     (250 w — expected N/A-style)
  08_partner_contributions.md (1,000 w)
  09_gantt_plan.md     (content for the +1 page workplan)
library/
  vision_openings_current.md   ← the three current openings (A/B/C) + cascade paragraph
  versions_archive.md          ← full archive of earlier Vision/Approach drafts
sources/                       ← all PDFs/theses/papers (moved from repo root)
scripts/
  wordcount.sh                 ← ./scripts/wordcount.sh proposal/01_vision.md
```

## Order of work

1. Vision opening — PI chooses between the three openings in `library/vision_openings_current.md` (recommendation: B). 
2. Full Vision (2–3 variants) → converge → LOCK.
3. Approach: RQ set (consider a dedicated inter-slot-coupling RQ), WPs, risk table → variants → LOCK.
4. Summary → Capability (R4RI) → Resources → Ethics → Partner contributions → Facilities.
5. References: assemble to 1,000 w, then **renumber every inline [n] in Vision/Approach against the final list** (they currently use an older numbering — see warning in `docs/05_reference_list.md`).
6. Gantt content, then assemble the 6-page V&A PDF (Arial 11pt, single spacing, ≥2 cm margins, ≤8 MB).

## When reading sources

The PDFs in `sources/` are the primary evidence (BTMLC IC paper, TCAS-I level shifters, DCAT 2016, hybrid BTMLC preprint, Kolahian thesis, Tazehkand thesis, Edwards transfer viva, CVP paper, ATI strategy). Read them only when you need exact measured numbers or quotes; `docs/04_evidence_base.md` already summarises every confirmed figure. Large PDFs: extract pages selectively (pdftotext -f N -l M), never load whole theses.
