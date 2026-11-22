#!/usr/bin/env bash
# stamp_tru_origin.sh
# Run this INSIDE a clone of the private tru-unified repository
# on a machine that has the OpenTimestamps client (ots) installed.
#
# Usage:
#   ./stamp_tru_origin.sh <commit-sha> [path/to/TRU_ORIGIN_ATTESTATION.txt]
#
# Example:
#   ./stamp_tru_origin.sh 80ef43da9c2b5da72c47adcb02ddee3bd06dd664 ../tru-overview/proofs/TRU_ORIGIN_ATTESTATION.txt
#
# It produces binary .ots files and runs ots info so a broken proof fails immediately.
# Commit only the .ots files to a public repo if you want to keep author metadata private.
# The .ots files alone prove nothing without the original commit object / attestation text.

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <commit-sha> [path/to/attestation.txt]"
  exit 1
fi

COMMIT_SHA="$1"
ATTESTATION="${2:-}"

if ! command -v ots >/dev/null 2>&1; then
  echo "ERROR: ots (opentimestamps-client) not found in PATH"
  exit 1
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "ERROR: must be run inside a git repository (the private tru-unified clone)"
  exit 1
fi

if ! git cat-file -e "${COMMIT_SHA}^{commit}" 2>/dev/null; then
  echo "ERROR: commit ${COMMIT_SHA} not found in this repository"
  exit 1
fi

OUTDIR="ots-proofs-$(date -u +%Y%m%dT%H%M%SZ)"
mkdir -p "${OUTDIR}"
echo "Writing proofs into ${OUTDIR}/"

# 1. Extract and stamp the target commit object
echo "== Extracting commit object ${COMMIT_SHA} =="
git cat-file commit "${COMMIT_SHA}" > "${OUTDIR}/${COMMIT_SHA}.commit.txt"
echo "Tree: $(git rev-parse ${COMMIT_SHA}^{tree})"
ots stamp "${OUTDIR}/${COMMIT_SHA}.commit.txt"
ots info "${OUTDIR}/${COMMIT_SHA}.commit.txt.ots"

# 2. Also stamp the tree (commits to every file in that snapshot)
TREE_SHA=$(git rev-parse "${COMMIT_SHA}^{tree}")
echo "== Stamping tree ${TREE_SHA} =="
git cat-file -p "${TREE_SHA}" > "${OUTDIR}/${TREE_SHA}.tree.txt" || true
# For large trees the text dump can be big; the tree object itself is better
git cat-file tree "${TREE_SHA}" > "${OUTDIR}/${TREE_SHA}.tree.obj"
ots stamp "${OUTDIR}/${TREE_SHA}.tree.obj"
ots info "${OUTDIR}/${TREE_SHA}.tree.obj.ots"

# 3. Stamp the repository root commit if different
ROOT_SHA=$(git rev-list --max-parents=0 HEAD | head -1)
if [[ "${ROOT_SHA}" != "${COMMIT_SHA}" ]]; then
  echo "== Stamping root commit ${ROOT_SHA} =="
  git cat-file commit "${ROOT_SHA}" > "${OUTDIR}/${ROOT_SHA}.root.commit.txt"
  ots stamp "${OUTDIR}/${ROOT_SHA}.root.commit.txt"
  ots info "${OUTDIR}/${ROOT_SHA}.root.commit.txt.ots"
fi

# 4. Stamp the public attestation if provided
if [[ -n "${ATTESTATION}" && -f "${ATTESTATION}" ]]; then
  echo "== Stamping public attestation =="
  cp "${ATTESTATION}" "${OUTDIR}/TRU_ORIGIN_ATTESTATION.txt"
  ots stamp "${OUTDIR}/TRU_ORIGIN_ATTESTATION.txt"
  ots info "${OUTDIR}/TRU_ORIGIN_ATTESTATION.txt.ots"
fi

echo
echo "Done. Binary .ots files are in ${OUTDIR}/"
echo "Run 'ots upgrade' on them after Bitcoin confirmation (hours to a day or two)."
echo "Publish the .ots files (and optionally the .txt companions) to a public proofs/ directory."
echo "Keep the raw commit/tree objects available for verifiers."
