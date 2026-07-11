# Vision Openings — Current Best (July 2026)

*Three complete opening candidates + the cascade paragraph that follows any of them. These reflect the settled strategy (docs/03): a claim with a number, physics-led, derive-don't-list, hierarchy, pay-for-it-immediately. Standing recommendation: **B**, with A as safe fallback; C's ATI numbers go to Timeliness regardless of choice.*

---

## Variant A — problem-first ("the blocked road") — classic register, safest

Aerospace electric propulsion has one proven route to the power densities the sector requires: raise the bus voltage. Higher voltage means lower current, thinner conductors and lighter distribution, and it is the route the field is taking — 270 V systems in service, kilovolt-class architectures in development. At cruise altitude, that route is blocked by physics. At a quarter of sea-level pressure the partial-discharge inception voltage in air falls to roughly 200–300 V for realistic winding geometries — inside the operating envelope of the machines the roadmap requires. Insulation does not resolve this: it thickens, surrenders 20–30% of slot area, and still ages invisibly under discharge until the winding fails. Every existing countermeasure — better dielectrics, dV/dt filters, multilevel drives, inverters mounted on the housing — helps the winding survive a voltage it should never have been asked to see. This proposal removes the requirement instead. A modular power-electronic drive at every stator slot, working across an open-end winding, composes the bus voltage magnetically along the machine itself — so no winding section ever sees more than 20–50 V of the 270 V bus, and the discharge that governs high-voltage machine design at altitude has no conditions in which to begin.

## Variant B — claim-first ("the number") — boldest; the agreed register — RECOMMENDED

In the machine proposed here, no section of the winding ever sees more than 50 V of its 270 V bus — and from that single architectural fact, the constraints that define high-voltage aerospace machine design fall away together. Partial discharge cannot begin: at quarter-atmosphere the inception threshold is 200–300 V, four to fifteen times above the per-slot envelope, so the failure mode that dominates insulation design at altitude has no conditions in which to occur. The mechanism is not better insulation but a different architecture: a modular power-electronic drive at every stator slot, working bilaterally across an open-end winding, so that the bus voltage is composed magnetically along the machine and arrives at each slot already divided. The converter is no longer a box connected to the machine; it is distributed into the machine at the resolution of individual slots — and that same resolution is what turns the machine's remaining constraints into choices.

## Variant C — mission-first ("the ATI collision") — strongest national-importance opening

The UK's aerospace technology strategy sets electric propulsion a hard target — 10 kW/kg by 2030, 15 kW/kg beyond — and names high-voltage electrical power architecture as the milestone on the way to it. These two commitments collide at cruise altitude. At a quarter of sea-level pressure, the partial-discharge inception voltage in air falls to roughly 200–300 V: squarely inside the operating range of the high-voltage machines the roadmap calls for. The route the strategy names undermines the target the strategy sets, and no insulation programme resolves the collision — dielectrics thicken, consume 20–30% of slot area, and still age invisibly under discharge. This proposal dissolves the collision at its source. A modular power-electronic drive at every stator slot, working across an open-end winding, composes the bus voltage magnetically along the machine — so the system runs at high voltage while no winding section ever sees more than 20–50 V, and the failure mode blocking the roadmap's own route has no conditions in which to begin.

---

## The cascade paragraph (follows whichever opening is chosen)

The consequences of driving every slot individually extend well beyond insulation. A machine of N driven sections is no longer a three-phase machine — it is an N-phase machine, or more precisely a machine for which phase count has ceased to be a design constraint at all. Lose one drive module and the remaining sections re-optimise: a nine-section machine retains roughly 89% of its torque where a three-phase machine losing one phase retains 58%, and it degrades continuously rather than in a step — the failure behaviour aerospace certification actually asks for. The same architecture removes the end-windings (conductors terminate directly at each slot's module, cutting 20–40% of winding resistance and shortening the machine), smooths the output voltage through adiabatic switching (reducing ripple and switching loss — the group's converter of this family measured above 99% efficiency), and makes the pole count a control-software parameter rather than a wiring decision. These are not independent claims: each is a consequence of the single decision to place the drive at the slot. That decision has a price, and the price is the science of this programme — N drives sharing one magnetic core are not independent, and whether their coupling can be controlled at full slot count, or fundamentally limits it, is the central open question this research resolves.

---

## Notes
- Inline citations deliberately omitted here; add [n] keys when assembling into `proposal/01_vision.md`, then reconcile against `proposal/06_references.md` (see docs/05 warning).
- Older openings and full drafts (three-crises framing, dissolve-the-partition framing, expert options A/B/C of the earlier generation): `library/versions_archive.md`.
