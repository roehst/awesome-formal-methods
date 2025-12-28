# Link Checking CI/CD

## Philosophy

This repository uses a **non-blocking** approach to link checking. The CI workflow checks all links and provides detailed diagnostics, but **does not block commits or merges** based on link failures.

### Why Non-Blocking?

- **Precise diagnostics over enforcement**: Link checking can be flaky due to temporary network issues, rate limiting, or transient server problems
- **Better developer experience**: Contributors aren't blocked by issues outside their control
- **Clear visibility**: The workflow output provides detailed information about which links work and which don't, allowing manual review and fixes

## Workflow Behavior

The CI workflow (`.github/workflows/check-links.yml`) will:
- Run automatically on every push to `main`
- Run automatically on every pull request targeting `main`
- Execute the `check-links.sh` script to validate all URLs
- Display results showing:
  - Number of successful links
  - Number of failed links
  - Percentage of working links
  - Detailed output for each URL checked
- **Always pass** (exit code 0) regardless of link failures

## How to Use the Results

1. Check the CI workflow output after each push or PR
2. Review the detailed link check results
3. Fix broken links when convenient, but don't feel blocked by temporary failures
4. Use the diagnostics to identify persistent link issues that need attention

## Optional: Branch Protection

If you want to require the workflow to run (but not necessarily pass) before merging:

1. Go to repository **Settings** → **Branches** → **Branch protection rules**
2. Add a rule for `main` branch
3. Enable "Require status checks to pass before merging"
4. Select the `check-links` status check
5. The workflow will always pass, but this ensures it runs on every PR

Note: Since the workflow always passes, this only ensures the check runs, not that all links work.
