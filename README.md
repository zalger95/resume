# LaTeX Resume

**Student:** German Eduardovich Zaletin

**Group:** БКНАД251

**University:** HSE University, Faculty of Computer Science

## Description

This repository contains my resume written in LaTeX.

The resume is built using Docker and Fedora 32.

GitHub Actions automatically checks the compilation and publishes
the latest PDF version.

## Build

Build the Docker image:

```bash
docker build -t german-resume .
docker run --rm -v "$PWD/CV:/app/CV" german-resume
The resulting PDF is located at CV/main.pdf.

## Resume

The published resume will be available through GitHub Pages.
