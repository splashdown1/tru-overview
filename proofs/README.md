# TRU Origin Timestamp Proofs

This directory holds an OpenTimestamps attestation that the listed early TRU work existed by the time of the Bitcoin commitment.

## Files

- `TRU_ORIGIN_ATTESTATION.txt` — human-readable claim referencing the key Aug 31 2026 commit in the private history.
- `TRU_ORIGIN_ATTESTATION.txt.ots` — the OpenTimestamps proof (currently pending Bitcoin confirmation).

## How to verify later

```bash
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
# or, once confirmed:
ots upgrade TRU_ORIGIN_ATTESTATION.txt.ots
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
```

Anyone with a Bitcoin node (or a public explorer that shows the calendar roots) can independently confirm the existence date.

A gap stays a gap. This is the strongest free, trust-minimized external timestamp we can attach today.
