# Restoring and verifying the OpenTimestamps proof

The binary proof is stored as base64 to travel safely through text APIs.

```bash
# Decode
base64 -d proofs/TRU_ORIGIN_ATTESTATION.txt.ots.b64 > TRU_ORIGIN_ATTESTATION.txt.ots

# Later, when calendars have confirmed into Bitcoin:
ots upgrade TRU_ORIGIN_ATTESTATION.txt.ots
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
```

The attestation text that was hashed is in `TRU_ORIGIN_ATTESTATION.txt`.

Pending calendars at creation time included alice/bob OpenTimestamps, Eternity Wall, and Catallaxy.
