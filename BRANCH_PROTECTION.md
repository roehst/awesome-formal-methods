# Branch Protection Setup

To ensure that all links pass before merging to or committing to `main`, you need to configure branch protection rules in the GitHub repository settings.

## Steps to Configure Branch Protection:

1. Go to your repository on GitHub: `https://github.com/roehst/awesome-formal-methods`

2. Navigate to **Settings** → **Branches** → **Branch protection rules**

3. Click **Add rule** or edit the existing rule for `main`

4. Configure the following settings:

   - **Branch name pattern**: `main`
   
   - ✅ **Require status checks to pass before merging**
     - Enable "Require branches to be up to date before merging"
     - Search for and select the status check: `check-links`
   
   - ✅ **Require pull request reviews before merging** (optional but recommended)
   
   - ✅ **Include administrators** (optional - to enforce rules on admins too)

5. Click **Create** or **Save changes**

## What This Does:

- The `check-links` job from the CI workflow must pass before:
  - Any pull request can be merged into `main`
  - Any direct commits can be pushed to `main` (if direct pushes are allowed)
  
- This ensures all links in README.md are valid before changes are accepted

## Workflow Behavior:

The CI workflow (`.github/workflows/check-links.yml`) will:
- Run automatically on every push to `main`
- Run automatically on every pull request targeting `main`
- Execute the `check-links.sh` script to validate all URLs
- Fail if any links return non-2xx/3xx HTTP status codes

## Note:

Branch protection rules can only be configured by repository administrators through the GitHub web interface. They cannot be set via code or API without appropriate permissions.
