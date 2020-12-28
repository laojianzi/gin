#!/bin/bash

echo "${{ job.status }}"

PR_OR_COMPARE="$(if [ "${{ github.event.pull_request }}" != "" ]; then echo "${{ github.event.pull_request.diff_url }}/files"; else echo "${{ github.event.compare }}"; fi)"

echo "${PR_OR_COMPARE}"
