# Hook kit, as Team server settings > Save hook kit... exports it

This repository lives on GitHub (a hosted service): the way to make a push *refuse* findings is a required status check.
Copy `safesuite-verify.yml` to `.github/workflows/safesuite-verify.yml`, set the repository variable `SAFESUITE_VERIFY_URL` to a
safesuite-verify release zip, and require the check *SafeSuite governance* on `main` with force-pushes forbidden.
It is kept here, not under `.github/`, so that the demonstration repository does not start running a workflow by itself.

`pre-receive` is the self-hosted alternative (any git server that runs hooks); the GitLab and Azure files are the same check
for those services. None of these is needed to *see* findings: Verify all seals and the activity log record them regardless.
