# SafeSuite Showcase — the complete feature tour

One project exercising every SafeSuite capability. It doubles as a **team server demo**:
this GitHub repository *is* the server — clone it via *File → Open from Team Server*.

Numbered folders 0–8 are the AgriPTO functional-safety case (EN ISO 25119, rear PTO,
AgPL d / Cat 3): HARA → FSC → TSC → HW/SW requirements → V&V → analyses → sealed release.
`9_Extras` and `AI-Demos` add the feature demonstrators.

## Records & collaboration (git underneath, never in your face)
- **History**: ~40 commits over months by 10 authors — including Дмитрий Соколов,
  田中優子, María-José Ortega, Νίκος Παπαδόπουλος — plus one genuine merge commit.
  See it in the Versions pane and per-file File History.
- **Signed baselines**: tags `baseline/BL-…` = *v0.9 Concept Review* (deliberately
  broken later by the HARA refinement — teaching moment), *v1.0 Release* (its verify
  now flags the post-release role-views update on the structured documents — the seal
  detecting legitimate change) and *v1.1 Role views* (green, the current state).
  Assessment → Attestation & signing → Verify all seals.
- **Team server**: the traffic light shows your divergence from this repo; Get updates /
  Share sync it. Conflicts land in the decision list (strdocs field-by-field, other
  files keep-mine/take-theirs or your installed merge tool, e.g. TortoiseGitMerge).

## Error List, TODO pane, repair
- `9_Extras/Markers_Worklist.strdoc` — TODO/FIXME/TBD rows fill the **TODO pane**;
  WARNING/ERROR rows land in the **Error List** as warnings.
- `9_Extras/Broken/` — two documents Check & Repair fixes deterministically
  (encoding, truncation) and one that needs **Ask AI assistant** (missing `>` —
  the AI proposes atomic edits behind an approval card). Double-click any errored
  document to open Check & Repair.

## Documents & attributes
- `9_Extras/International.strdoc` — every attribute type, multi-selection with
  non-Latin choices, descriptions everywhere (hover the column headers), initial
  values, and three computed columns from trivial to deliberately gnarly.
- `9_Extras/Manual_Outline.strdoc` — hierarchical levels 1–4 with per-level title
  styles, web URLs, and a link that jumps straight into the HARA.
- `9_Extras/AutoId_Ideas.strdoc` — automatic ID generation (IDEA-{###}); enable the
  Experimental option and add rows.
- `9_Extras/Attribute_Removal.strdoc` — why a populated column refuses deletion.
- `9_Extras/Compare_Baseline/​Reworked.strdoc` — Document → Compare/merge documents.
- `9_Extras/Linked_SharedTestBenchSpec.md` — hard link to
  `C:\Demo\Showcase-External\SharedTestBenchSpec.md` (same file, two paths).

## Traceability
View → Traceability: real coverage across HARA↔FSC↔TSC↔HW/SW↔V&V with genuine gaps.
Generate document / Export to Excel for deliverables.

## Interchange & compliance
- `0_Guide/Interchange/AgriPTO_Concept.reqifz` — ReqIF 1.2 export of the concept
  phase; File → Import ReqIF round-trips it (wizard with attribute renaming).
- `1_Management/Compliance/AgriPTO_ControlFW.cdx.json` — CycloneDX SBOM for the
  CRA vulnerability scan (Assessment menu).
- `4_Hardware/CAD/` — the same speed-sense circuit as **KiCad**, **Eagle** and
  **Altium** schematics: attach any of them in the AI chat and ask for the BOM,
  or run the assessment's design-input extraction.
- `8_Release/PDF/` — exported record set from the sealed documents.

## AI (see AI-Demos/AI_PROMPTS.md for copy-paste prompts)
Help mode with menu highlighting · project manipulation with approval cards ·
requirement extraction from `AI-Demos/Minutes_2026-03-14.md` · norm questions with
online search · skill creation/modification (`AI-Demos/Skill_ReviewChecklist.md`) ·
autocomplete configuration · per-turn cost telemetry in the chat footer.

## Housekeeping demos
- `.ssexclude` hides `AI-Demos/Internal_Notes.md` from the tree (right-click project
  root → Restore Excluded Items).
- `reset.cmd` restores the whole bench to this repository's pristine state.
