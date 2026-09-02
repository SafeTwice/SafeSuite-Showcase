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

## Jira integration (experimental)
Enable it under Tools → AI settings → Experimental → *Jira integration*, then Tools →
*Jira settings*: the project is already bound (`.ssjira.json`: safetwice.atlassian.net,
project **MYN** — shared through git); enter your own Atlassian email and an API token
(id.atlassian.com → Security → API tokens; stored encrypted on this computer only). The
Jira chip in the status bar turns green and its hub offers refresh, import and the browser.
- `9_Extras/Jira_Tracking.strdoc` — work packages that *refine* the HW/SW safety
  requirements through real cross-document links (see the Traceability pane); seven of
  them are linked to MYN issues. Hover a row for the icons (**Open in Jira**, **Unlink**);
  Tools → **Refresh Jira statuses** pulls status and assignee; **Jira Status** and
  **Jira Assignee** are dropdowns mirroring the site — picking an assignee (or *No one*)
  changes it in Jira after a confirmation, a status pick is refused (workflow-governed).
  WP-08 and WP-09 are unlinked: their Jira cells stay empty and carry no warnings. Try
  **Link to issue** (just a number works: `14` → `MYN-14`) or **Create issue** — the
  summary and the rich-text description travel to Jira, a back-link to the row is added
  on the ticket, and the row is linked at once (⚠ this creates a real ticket in MYN).
- `Jira/Jira_MYN.strdoc` — what Tools → **Import issues from Jira** produced (preset
  *All issues of MYN*): one "Jira Issue" row per ticket, description as rich text, every
  row linked. Import again with the same name and folder to watch it refresh in place;
  the wizard's **Preview** validates any JQL against the site first.
- Check & Repair on both documents reports healthy (optional selections — the
  `allow-empty` attribute — are part of the format).
## Housekeeping demos
- `.ssexclude` hides `AI-Demos/Internal_Notes.md` from the tree (right-click project
  root → Restore Excluded Items).
- `reset.cmd` restores the whole bench to this repository's pristine state.
