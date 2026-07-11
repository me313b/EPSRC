# EPSRC STRATEGIC DECISIONS
## The settled positions on framing, novelty, emphasis, and voice

> Companion to `EPSRC_Master_Handover_v2.md`. This file records the reasoning behind the strategic choices that shape every section. It exists because the *facts* of the proposal (concept, parameters, evidence) do not by themselves determine *how to tell the story* — and the storytelling is where the earlier drafts underperformed. Read this before drafting the Vision. Everything here is a starting position the PI can adjust; where the PI revises, follow the revision.

---

## 1. THE CROWN JEWEL — a method framed as a discovery

**Decision: the heart is a METHOD, not a machine — but it must read as a discovery, not as bookkeeping.**

Reasoning: a new *class of machine* is a deliverable — it exists once (your demonstrator) and can be copied. A new *design science* is generative — it lets anyone design a member of that class for any requirement, and it outlives the specific hardware. EPSRC funds the second because "new knowledge" is what the second means. The per-slot machine is the exciting object; the **2N-DOF co-design framework** is the thing that could not have existed before and that changes what others can do.

**The trap to avoid:** never write "a new design methodology" — methods sound like admin and die on contact with a reviewer. Frame it instead as: *the machine and its power electronics stop being two coupled systems and become one system with one set of governing equations — and nobody has those equations yet.* That is a method, but it reads as a discovery.

**The one-sentence heart:**
> When the converter is distributed into the winding at slot resolution, the machine, its power electronics, and its control cease to be three coupled systems and become a single electromagnetic object with 2N degrees of freedom — an object with no governing design theory, because until the enabling silicon existed it could not be built.

**Cause vs consequences.** The *cause* is dissolving the partition. Everything else is a *consequence*: PD elimination (consequence of decoupling winding stress from bus voltage), software pole count (consequence of per-slot current control), graceful fault tolerance (consequence of distribution). Lead with the cause; let the four benefits fall out of it — that cascade is what makes reviewers feel the elegance.

**Specific caution:** PD elimination is the best *hook* but not the deepest *claim*. If PD is the whole story a reviewer says "so it's a low-voltage-per-turn machine — we have modular approaches." The 2N-DOF co-design object is the thing they cannot pattern-match away. Use PD to open the door; use the co-design object to hold the room.

---

## 2. THE GENUINELY UNCERTAIN SCIENCE — lead with the intellectual risk

**Decision: inter-slot magnetic coupling is the headline research question. Put the scariest result at the front.**

Ranked by how scientifically alive each uncertainty is:

**(1) Most alive — inter-slot coupling through a shared magnetic core.** When N slots are driven independently through shared iron, they are *not* independent: each slot's flux threads its neighbours, so a switching transient in slot k perturbs the voltage reference of slot k±1, and every slot's control loop is coupled to every other's through the magnetics. Nobody has characterised this because nobody has had N independent per-slot sources in one core. It could be benign (small perturbation the control rejects) or fatal (unstable above some slot count or frequency). **You cannot currently predict which.** This is simultaneously the heart of the *risk* and the heart of the *novelty* — the 2N-DOF object is hard precisely because the 2N DOF are coupled through the iron. Lead with it.

**(2) Real but bounded — ZVS under an inductive winding source with back-EMF.** ZVS needs the right source/load impedance at the switching instant; a battery cell is stiff and low-impedance, a winding is neither. Whether the adiabatic advantage survives, and over what band, is a genuine open question with a real chance of a negative result — but it is contained, and the fallback is clean (hard-switch: lose the efficiency edge, keep the voltage architecture). Alive, but bounded.

**(3) "Just engineering" — transient Paschen breach during switching.** Be honest: you probably already believe the answer. 20–50 V steady-state against a 200–300 V threshold means a transient must overshoot 4–15× to breach, and if dV/dt and ringing were that bad you'd have other problems first. This is a *verification* task (RQ3, WP1 transmission-line model), not a discovery. Include it as due diligence; **do not inflate it** — a sharp reviewer will spot padded risk, and that is worse than one fewer risk.

**The most powerful single move:** make the intellectual risk and the intellectual novelty the *same sentence* —
> The 2N degrees of freedom are coupled through the shared magnetic circuit, and whether that coupling can be controlled — or whether it fundamentally limits the achievable slot count — is the central open question this programme resolves.

That sentence is at once the boldest claim and the most honest admission of risk. Reviewers trust proposals that do this; it is what separates a research proposal from an engineering pitch.

---

## 3. WORK PACKAGES — centre of gravity is circuit + control

**Decision: the weight sits on WP2 (circuit-in-winding) and WP3 (coupled control). Do not distribute Vision emphasis evenly.**

Reasoning:
- **WP1 (machine)** is hard but *known-hard* — Asef's group has the methods, A5 proves it, multi-harmonic FEA is established. Its novelty is real but incremental over existing winding science. It is the **platform** the interesting work runs on, not the interesting work.
- **WP2 (circuit under winding source)** is where the architecture either works or does not, and where the unique prior silicon gets tested in the new regime.
- **WP3 (coupled control)** is where the crown-jewel 2N-DOF object lives as a solvable problem.

**On WP4 (demonstrator):** necessary, and reviewers want integration — but at TRL 1–3 the demonstrator is *evidence*, not *discovery*. The failure mode is letting WP4 become the tail that wags the dog: burning the back half of the grant building hardware to prove what the models already showed, squeezing the genuinely novel coupling/control science. The fix is not to cut it but to state clearly that **WP4 *validates* the framework rather than *being* the contribution.** The contribution is the framework; the demonstrator confirms it.

---

## 4. THE SILICON — hold two registers honestly

**Decision: in the Vision, the silicon is the load-bearing "why now / why nobody before" breakthrough. In the risk table, it is de-risked out of the critical path. Both true; keep them in their own sections.**

The tension is real and must be resolved deliberately:
- The silicon is **NOT optional to the Vision.** The entire "why now, why us, why nobody before" argument rests on the per-slot infrastructure fitting on a chip — that is what was impossible before and is possible now. If the silicon were incidental, so was your timeliness argument. In the *narrative*, own it.
- The silicon **IS optional to the programme's completion.** Discrete boards genuinely answer every scientific question (ZVS survival, coupling controllability, thermal), because those are physics questions indifferent to whether the circuit is one die or eighteen boards. Tape-out turns validated science into a manufacturable thing — a TRL 4+ concern, correctly out of scope.

**Resolution:** *the silicon is the reason the architecture is now worth studying (Vision, load-bearing), and the discrete boards are how the science gets done without betting the grant on a fab run (Approach/risk).* Do not let the risk table's "IC is a stretch enhancement" language leak into the Vision and undersell the chip's role in the *story*.

**The single technical outcome that would hurt most:** inter-slot coupling proving uncontrollable above a low slot count. If ZVS fails you keep the architecture (survivable). If thermal fails you re-package/derate (survivable). But if coupling limits you to three or four controllable slots before instability, "per-slot at 18 slots" collapses toward "modular at a handful of sections" and the distinctiveness erodes. That is the outcome that would hurt the *story* most — which is exactly why it should be the **headline research question**, not a buried risk.

---

## 5. VOICE & POSITIONING

### 5a. The opening register

**Decision: the first sentence should state a surprising CLAIM that CONTAINS A NUMBER, in the register of a strong paper abstract — declarative, mechanism-as-fact.**

Not a pure problem statement (too slow for an expert who knows the problem). Not a bare number (reads as a spec sheet). A *claim with a number in it* — the claim earns attention, the number earns trust.

**Exemplar of the register wanted** (tune numbers/verbs to taste; this is the *voice*, not necessarily the final line):
> A machine winding driven by an integrated circuit at every slot never sees more than a tenth of its own bus voltage — and with that single fact, partial discharge, the fixed pole count, and catastrophic phase-loss all cease to be constraints.

Declarative; contains a number (a tenth — 20–50 V of 270 V); states the mechanism as fact; promises the cascade without listing it yet. The opposite of philosophical.

**Closest existing draft:** Option A ("the binding constraint moves out of the magnetic and thermal domains, where the field has mature tools, and into one where it does not — insulation"), sharpened with a number in sentence one. It tells a specialist something they have *felt but not articulated* — that their tools are aimed at the wrong constraint — which is the "wow, that's right" reaction wanted.

**Explicitly rejected registers:** basic, philosophical, tautological, and "programme when it's a proposal." Also avoid the musing-about-assumptions opening (too philosophical for this panel, even though the assumption-dissolving idea is correct — express it through a concrete claim, not a meditation).

### 5b. The two dials

**(a) Confidence ≈ 70% bold, braced by de-risking.** Not 50/50 (a "we're just combining validated parts" study invites "then why is it research not development?"). Not 90% ("a new class of machine" full stop invites disbelief and overclaim-hunting). The stable, truthful posture: **bold about the destination, honest about the uncertainty, specific about why the uncertainty is tractable** — "a new class of machine drive with no existing design theory (bold); its central risk is controlling 2N DOF through shared magnetics (honest); every enabling capability is silicon-validated in isolation and the discrete-board route removes fabrication dependence (tractable)." A bold bet that has done its homework — the most fundable posture there is.

**(b) Policy lean ≈ 80/20 physics-to-policy in the opening, inverting toward 50/50 by Impact.** An EPSRC Engineering reviewer is a physicist/engineer first. If Jet Zero carries the opening sentence, you've signalled the policy is load-bearing and the science is decoration — backwards for this panel. Open on the physics (it is genuinely startling; they'll respect that you led with it). *Then* Jet Zero, the £3.2 bn AAM figure, and the 111,000 jobs land with force in Timeliness/Impact, answering "why does this matter beyond the lab" — the right question for policy to answer. **Policy as the *why it matters*, never as the *what it is*.**

---

## 6. THROUGH-LINE (one paragraph)

The heart is the 2N-DOF co-design object — a method that reads as a discovery. The scariest and most alive science is inter-slot magnetic coupling, and it should be the headline research question, not a buried risk, because the scariest result and the deepest novelty are the same thing. The weight sits on circuit-in-winding (WP2) and coupled control (WP3); WP1 is the platform and WP4 is the confirmation. The silicon is the reason the architecture is worth studying now (Vision, load-bearing) and simultaneously de-risked out of the critical path (risk table, honest) — hold both, in their own sections. Open on a surprising claim with a number in it, in the register of a strong paper abstract; Option A sharpened is the closest existing draft. Sit at 70% bold, braced by the de-risking. Let physics carry the opening 80/20 and let policy carry the impact 50/50.

---

## 7. OPEN QUESTIONS THE PI MAY STILL WANT TO SETTLE

- Whether to add a **dedicated inter-slot-coupling research question** (elevating it from its current implicit spread across RQ1/RQ3/RQ4) — recommended, given it is the designated headline uncertainty.
- Whether to cite the **Edwards transfer viva** for the IMD-partition claim, or wait for a published version.
- Final choice of **Vision opening** (A / B / C / hybrid) — see the versions library; Option A sharpened is the standing recommendation.
- Whether the **hybrid/scalable BTMLC preprint** is cited (it strengthens the "how does 2 A/26 V scale to per-slot aerospace duty" answer in WP2).

---

## 8. THE "TOO GOOD TO BE TRUE" SOLUTION (settled, July 2026)

The proposal solves many things at once (PD, multiphase, smoothness/losses, voltage split/efficiency, integration). Listing them flat reads as a sales pitch. Three rules fix it:

1. **Derive, don't list.** One decision (drive at every slot) → consequences fall out in causal order. The reviewer watches benefits *derive* from the cause; derived benefits read as physics, listed benefits read as marketing.
2. **Hierarchy.** Headline = voltage split kills PD (the wall the UK's own roadmap runs into: high-voltage is the ATI 2030 architecture milestone, 10→15 kW/kg the EPU target, and they collide at altitude). Multiplier = per-slot control ends the three-phase constraint → N-phase, redundancy, graceful failure (89% vs 58%). Corollaries in ONE sentence = end-windings gone (−20–40% R, shorter, coolable), pole count = software, smooth adiabatic output (>99% family efficiency, low ripple).
3. **Pay for it immediately.** Straight after the cascade, name the price: N drives on one magnetic core are coupled; whether the coupling is controllable at full slot count is unresolved and is the science of the programme. A claim that names its own price reads as research.

## 9. CURRENT VISION OPENINGS (see library/vision_openings_current.md)

Three drafted openings: **A** problem-first ("the blocked road"), **B** claim-first ("no section ever sees more than 50 V of its 270 V bus" — the agreed register: a surprising claim containing a number), **C** mission-first (the ATI collision). **Standing recommendation: B**, with A as safe fallback; C's ATI numbers go to Timeliness regardless. PI has not yet chosen.
