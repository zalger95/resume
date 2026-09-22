#!/bin/bash

set -e

echo "Starting LaTeX compilation..."

cd /app/CV

pdflatex \
    -interaction=nonstopmode \
    -halt-on-error \
    main.tex

pdflatex \
    -interaction=nonstopmode \
    -halt-on-error \
    main.tex

echo "PDF compilation completed successfully."

ls -lh main.pdf
