# Utilities

This directory contains utility scripts for the SciCat Governance repository.

## create_single_document.bash

A script that combines all governance markdown documents into a single markdown file and PDF document.

### Description

The script:
1. Creates a cover page with title, author, and current date
2. Combines all markdown files listed in `manifest.txt` (in order)
3. Removes license footers from each file
4. Generates a single markdown file with all content
5. Converts the combined markdown to a PDF using pandoc
6. Fixes internal markdown links to work in the combined document
7. Cleans up temporary files

### Dependencies

- **pandoc** - For converting markdown to PDF
- **xelatex** - PDF engine used by pandoc (part of TeX Live)

On Ubuntu/Debian:
```bash
sudo apt-get install pandoc texlive-xetex
```

### Usage

Run from the utils directory:

```bash
cd utils
bash create_single_document.bash
```

Or from the repository root:

```bash
bash utils/create_single_document.bash
```

Note: When running from the repository root, ensure the script can find `manifest.txt` in the utils directory.

### Output

The script generates two timestamped files in the utils directory:

- `scicat_governance_full_YYYYmmddHHMMSS.md` - Combined markdown document
- `scicat_governance_full_YYYYmmddHHMMSS.pdf` - PDF version of the document

Where `YYYYmmddHHMMSS` is the current timestamp (e.g., 20260603143022).

### Files

- `create_single_document.bash` - The main script
- `manifest.txt` - List of markdown files to combine (in order), with paths relative to the repository root
