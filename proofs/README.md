# TRU Origin Timestamp Proofs

TRU = Truth Resonance Understanding.

## Files

- `VERIFIED_FACTS.md` — current verified state of the origin claim. Precise about what is proven and what is not.
- `TRU_ORIGIN_ATTESTATION.txt` — the human-readable claim that was stamped.
- `TRU_ORIGIN_ATTESTATION.txt.ots.b64` — clean OpenTimestamps proof (base64). Decode, then `ots info` / `ots upgrade` / `ots verify`.
- `stamp_tru_origin.sh` — run inside the private tru-unified repository to stamp the actual commit object and tree.

## Quick verify

```bash
base64 -d TRU_ORIGIN_ATTESTATION.txt.ots.b64 > TRU_ORIGIN_ATTESTATION.txt.ots
ots info TRU_ORIGIN_ATTESTATION.txt.ots
# later:
ots upgrade TRU_ORIGIN_ATTESTATION.txt.ots
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
```

A gap stays a gap.
