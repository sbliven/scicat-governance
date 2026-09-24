#!/bin/bash
set -e

# Use provided suffix or generate timestamp
SUFFIX="${1:-$(date +%Y%m%d%H%M%S)}"

cat > cover.md <<EOF
---
title: "SciCat Project Governance"
author: "SciCat project"
date: "$(date +%Y-%m-%d)"
---

# SciCat Project Governance

Author: SciCat Project
Compiled on: $(date +"%Y-%m-%d")

\newpage
EOF

# remove all combined mark down file
rm -f combined.md

# combines all the markdown files
# in the order given in manifest
# removes the footer with the license
while read file; do
    sed '/^\*\*\*$/,/^Licensed/d' "$file" >> combined.md
    echo -e "\n\n\\newpage\n" >> combined.md
done < manifest.txt

# Copy combined.md to final markdown output
cp combined.md "scicat_governance_full_${SUFFIX}.md"

# convert document to pdf
pandoc \
  cover.md \
  combined.md \
  -o "scicat_governance_full_${SUFFIX}.pdf" \
  --toc \
  --pdf-engine=xelatex \
  --resource-path=../procedures \
  -V geometry:"a4paper,portrait,margin=1.5cm" \
  -V fontsize=6pt

# fix links in combined markdown
sed -E -i'' 's|\((\./)?[^)]*/([A-Z-]+)\.md\)|(#\L\2)|g' "scicat_governance_full_${SUFFIX}.md"

# remove temporary files
rm -f cover.md combined.md
