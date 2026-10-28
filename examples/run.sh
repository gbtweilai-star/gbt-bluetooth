#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_bluetooth info
PYTHONPATH=src python -m gbt_bluetooth check --payload '{}'
PYTHONPATH=src python -m gbt_bluetooth run   --payload '{}'
