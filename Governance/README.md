# Governance — who may do what, and the proof of it

This folder is the governance section of the Showcase: a policy over the AgriPTO safety case, keys for its
cast, waivers, delegations, four-eyes approvals, a baseline sealed under the seal rules, and the report that
verifies all of it. **Start with `Governance_Guide.strdoc`** in SafeSuite (24 rows: what each feature is in
plain words, where it lives, what to try as whom, what it proves).

Governed actions need a named person. Become one:

    become.cmd elena-vidal        (any name below; become.cmd -List; become.cmd -Restore when done)

Passphrase of every pack: `agripto`. Then reopen the project in SafeSuite.

| Person | Role | Pack |
|---|---|---|
| Elena Vidal | Safety manager | `elena-vidal` |
| Ravi Patel | Project manager | `ravi-patel` |
| Greta Hoffmann | Independent assessor | `greta-hoffmann` |
| Henrik Larsen | Systems lead | `henrik-larsen` |
| Claire Moreau | Software lead | `claire-moreau` |
| Paolo Ferraro | Verification lead | `paolo-ferraro` |
| Tomasz Kowal | Hardware engineer | `tomasz-kowal` |
| Callum Reid | Contract firmware engineer | `callum-reid` |

- `Identities/` — one Level 1 identity per member of the cast (key file + identity record). Fictional keys, worthless outside this demo.
- `CI/` — the hook kit as Team server settings exports it: pre-receive hook, GitHub Actions / GitLab CI / Azure Pipelines templates.
- `Verify_all_seals.txt` — the report right after sealing baseline v1.3; its findings are expected (the older seals broken by later
  work, the pre-policy maintenance wave reported as unjudged) and the guide's row 12 explains each.

Laid on 2026-09-05 by `demos/agri-pto-generator/governance.sh` in the SafeSuite repository with the product's own services, as
signed commits by the cast on top of the existing history. Never regenerated wholesale: evolve it with surgical commits.
