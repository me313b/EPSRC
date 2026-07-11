# SETUP — how to install this structure into the EPSRC repo and run Claude Code

## 1. Add the structure to your repository

```bash
git clone https://github.com/me313b/EPSRC.git
cd EPSRC
# unzip the package you downloaded from Claude into the repo root:
unzip ~/Downloads/epsrc-claude-code.zip -d .
# move the source PDFs out of the root into sources/:
git mv *.pdf QFT.txt "good photos for Question 10.docx" sources/ 2>/dev/null || mv *.pdf QFT.txt sources/
# the old handover .md files are superseded by docs/ — archive them:
mkdir -p archive && git mv EPSRC_Handover_Brief.md EPSRC_Master_Handover.md EPSRC_References_Handover.md HANDOVER_2_Sources_References_Evidence.md archive/ 2>/dev/null
# if you have ATI.txt locally, add it too:
# cp ~/Downloads/ATI.txt sources/
git add -A && git commit -m "structure: install Claude Code project layout"
git push
```

## 2. Run Claude Code

```bash
cd EPSRC
claude
```

Claude Code reads `CLAUDE.md` automatically — it contains the full operating manual (protocol, strategy, file map, order of work).

## 3. First prompts to use (in order)

1. `Read CLAUDE.md and all files in docs/. Summarise in five sentences: the crown jewel, the headline scientific risk, the benefit hierarchy, the two dials, and the order of work — so I can confirm we are aligned.`
2. `Open library/vision_openings_current.md. I choose opening [A/B/C]. Build the full Vision in proposal/01_vision.md — two complete variants sharing that opening but differing in the Novelty and Timeliness sections. Word-count each. Do not touch any other file.`
3. After choosing: `Converge on variant [1/2] with these changes: … Set Status: CHOSEN.`
4. When happy: `Lock the Vision: set Status: LOCKED with today's date. Commit as "vision: locked".`
5. Then: `Draft the Approach in proposal/02_approach.md per its seeded structure — first give me the RQ set decision (add the coupling RQ or not, with your recommendation), then two full variants.`

## 4. Habits that keep quality high
- One section per session where possible; small labelled commits.
- Never let Claude edit a LOCKED file without saying "unlock".
- Run `./scripts/wordcount.sh proposal/<file>` before accepting any draft.
- End-stage: assemble the V&A PDF (Arial 11 pt, single spacing, >=2 cm margins, <=6 pages + 1 Gantt, <=8 MB) and renumber inline citations against proposal/06_references.md.
