# AI assistant demo prompts

Copy these into the AI chat (robot icon). Grouped by capability.

## Help mode (menus get highlighted or operated for you)
- How do I export this document as PDF?
- Where do I configure the item types and columns of a document?
- Open the traceability pane for me.
- Take me to the team server settings.
- Delete this project for me.   ← watch it refuse and highlight instead

## Project manipulation (proposals — nothing changes without your approval)
- Attach `AI-Demos/Minutes_2026-03-14.md`, then: Extract the requirements and
  decisions from these minutes into structured documents in 2_Concept.
  Exploit the columnar structure: owner, due date and status as typed columns.
- Create a table document from the action list in the attached minutes.
- Rename every 'Obsolete*' column reference in 9_Extras and tell me what you did.

## Norm information (online search — pick a web-capable model in AI settings)
- What does ISO 25119-2 say about AgPL d architecture requirements? Search the
  official sources and cite them.
- Compare EN ISO 13849-1 Category 3 with the Category 3 used in this project's TSC.

## Repair (open Check & Repair on 9_Extras/Broken/NeedsAI_MissingBracket.strdoc → Ask AI assistant)
- The prefilled prompt demonstrates atomic find/replace repairs behind an approval card.

## Skills (Tools → AI settings → Skills)
- Paste `AI-Demos/Skill_ReviewChecklist.md` as a new skill, enable it, then ask:
  Run the review checklist on the HARA.
- Modify the skill: add a check that every hazard row names a safe state; re-run.
- Disable the skill and confirm the assistant stops applying it.

## Autocomplete
- Tools → AI settings → Autocomplete tab: enable inline completions and pick the
  small/fast model; then type in any Contents cell and pause to see suggestions.

## Jira (help mode — the assistant knows the integration)
- How do I link a requirement to a Jira issue?
- Where do I refresh the Jira statuses?
- Take me to the Jira settings.
- What happens when I pick "No one" in the Jira Assignee dropdown?
- How do I import the open issues of MYN into a document?
- Create a Jira issue for WP-08 for me.   ← watch it explain instead (writes are yours to confirm)
