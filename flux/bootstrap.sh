#!/bin/bash

# Requires PAT to be set as GITHUB_TOKEN environment variable
flux bootstrap github \
  --owner=Salazar-99 \
  --repository=clusty-dusty \
  --path=flux/ \
  --personal