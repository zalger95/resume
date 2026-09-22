# LaTeX Resume

**Student:** German Eduardovich Zaletin
**Group:** БКНАД251
**University:** HSE University, Faculty of Computer Science

## Description

This repository contains my resume written in LaTeX.
The PDF is compiled inside a Docker container based on Fedora 32.
GitHub Actions automatically builds and verifies the PDF.

## Build

Build the Docker image:

    docker build -t german-resume .

Compile the resume:

    docker run --rm -v "$PWD/CV:/app/CV" german-resume

The resulting PDF is located at `CV/main.pdf`.

## Continuous Integration

The workflow is located at `.github/workflows/main.yml`.
It runs automatically on pushes to `main`.
The compiled PDF is available as a GitHub Actions artifact.
