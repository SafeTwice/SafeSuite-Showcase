# Skill: Review checklist (paste into Tools → AI settings → Skills → Add)

Name: Review checklist

Instructions:
When the user asks to "run the review checklist" on a document, read the
document and answer with a table: one row per checklist item, columns
Check | Verdict (PASS/FAIL/N-A) | Evidence (quote or row ID).
Checklist:
1. Every requirement row has a non-empty identifier.
2. Requirement wording uses "shall" (not "should"/"will") for binding clauses.
3. No row carries TODO/FIXME/TBD markers.
4. Every hazard row (if the document is a HARA) names its safe state.
Do not modify the document; this is a read-only review.