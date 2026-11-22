# Restoring and verifying the OpenTimestamps proof

The binary proof is stored as base64 (this version is a complete, clean re-stamp).

```bash
# Decode to binary
base64 -d TRU_ORIGIN_ATTESTATION.txt.ots.b64 > TRU_ORIGIN_ATTESTATION.txt.ots

# Confirm it parses
ots info TRU_ORIGIN_ATTESTATION.txt.ots

# Later, after Bitcoin confirmation (hours to a day or two):
ots upgrade TRU_ORIGIN_ATTESTATION.txt.ots
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
```

This proof timestamps the attestation text (SHA-256 a986de63dce783087dc6ee014046e9295b0dc978ccfc88cbb32c8d98b79f39a1).
It establishes that the attestation (and therefore the claim about the Aug 31 commit) existed by the time of the Bitcoin block that embeds the calendar root. It does **not** prove the private commit object itself existed on Aug 31 — only that the claim about it existed by the Bitcoin timestamp.

To prove the commit object itself, the stamp must be run on a machine that can read the private `tru-unified` repository.
