# The Lab's Reproducible Analysis Template

## Purpose
A template analysis repository that standardizes new project setup with package management, directory structure, and a Quarto report scaffold to support reproducible, collaborative, and open-science workflows.

### Intended Users

Lab members and collaborators at the Seafood Globalization Lab who are starting a new R-based analysis. 

### Key components of the template:

- `report.qmd` - a Quarto report pre-configured for open-science workflows
pak-based package management with a snapshot-pinned CRAN repository for reproducibility
- `00_write_pkg_deps.R` - A lockfile script to record exact package versions
- `00_functions.R` - A placeholder for custom functions
- Pre-structured `output`, `data`, `figures`, and `scripts` directories
- `.gitignore` - tuned to exclude data, rendered HTML, and user-specific R files

## How to use

1. [From the GitHub website](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) OR
2. [From the terminal / command line interface](https://cli.github.com/manual/gh_repo_create)

```bash
gh repo create Seafood-Globalization-Lab/my-new-repo-name --public --clone --template Seafood-Globalization-Lab/analysis-template
```
