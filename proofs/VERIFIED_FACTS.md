# TRU VERIFIED FACTS — Origin Timestamp Status

TRU means **Truth Resonance Understanding**.

Last updated: 2026-11-22 (UTC)

## 1. What is currently proven by independent cryptographic timestamp

- Public repository: https://github.com/splashdown1/tru-overview
- Proof directory: https://github.com/splashdown1/tru-overview/tree/main/proofs
- Attestation file: proofs/TRU_ORIGIN_ATTESTATION.txt
- SHA-256 of attestation text: a986de63dce783087dc6ee014046e9295b0dc978ccfc88cbb32c8d98b79f39a1
- OpenTimestamps proof: proofs/TRU_ORIGIN_ATTESTATION.txt.ots.b64 (clean, complete, parses)
- Proof status as of last check: PENDING Bitcoin confirmation
- Calendars that accepted the stamp:
  - https://bob.btc.calendar.opentimestamps.org
  - https://alice.btc.calendar.opentimestamps.org
  - https://finney.calendar.eternitywall.com
  - https://btc.calendar.catallaxy.com

The proof commits to the attestation text. Once upgraded, it will prove that the attestation existed no later than the Bitcoin block that contains the calendar root.

## 2. The claim inside the attestation

The attestation states that the following commit existed in the private repository splashdown1/tru-unified:

- Full SHA: 80ef43da9c2b5da72c47adcb02ddee3bd06dd664
- Short: 80ef43d
- Message: feat: add TRU Universe world-room layer
- Author date (Git metadata, self-reported): 2026-08-31T00:25:30Z
- Author: zocomputer <help@zocomputer.com>

Multiple subsequent commits on the same calendar day continued the Universe / education / offline layer work in the same private repository.

## 3. What is not proven

- The private commit object itself has not yet been stamped with OpenTimestamps.
- Git author and committer dates are local clock values. They can be set to any time. They are not independent evidence of when the commit first existed.
- A future Bitcoin stamp of the commit object will prove only that the object existed by the date of the Bitcoin block (expected around or after 2026-11-22). It will not prove that the commit was created on 2026-08-31.
- Therefore the August 31 date remains a self-reported claim.

## 4. How to verify the current public proof

```bash
git clone https://github.com/splashdown1/tru-overview
cd tru-overview/proofs
base64 -d TRU_ORIGIN_ATTESTATION.txt.ots.b64 > TRU_ORIGIN_ATTESTATION.txt.ots
ots info TRU_ORIGIN_ATTESTATION.txt.ots
# After Bitcoin confirmation (usually hours to 1–2 days):
ots upgrade TRU_ORIGIN_ATTESTATION.txt.ots
ots verify TRU_ORIGIN_ATTESTATION.txt.ots
```

Anyone with a Bitcoin node or a public OpenTimestamps calendar explorer can independently confirm the existence lower-bound once the proof is upgraded.

## 5. Next step that strengthens the record

Run `stamp_tru_origin.sh` (in this directory) inside a clone of the private tru-unified repository on a machine that has the OpenTimestamps client installed. The script extracts the raw commit object and its tree, stamps them as binary .ots files, and runs `ots info` so a broken proof fails immediately.

Publishing those binary .ots files will give an independent Bitcoin-anchored existence proof for the commit object itself. The August 31 author date will still be self-reported; only the existence of the object by the Bitcoin block date will be newly proven.

## 6. Contemporaneous evidence (still needed for the August date)

Sources that could speak to August 2026 include:

- GitHub push and event records for public repositories that received commits on or near 2026-08-31
- Wayback Machine (or other archive) captures of the repositories from before November 2026
- Any third-party timestamped records (email, chat export, etc.) from that period

These are weaker than a Bitcoin stamp but are the only class of evidence that can support a specific date in August.

## 7. Definition used in this document

TRU = Truth Resonance Understanding  
Public description (from the project’s own overview): sovereign offline intelligence and source-bound study engines. Truth is constant. Perspective is fluid. A gap stays a gap.

## 8. Change log

- 2026-11-22: Initial public attestation created and stamped (pending). Clean proof published. Facts block written. Name fixed to the publicly documented expansion “Truth Resonance Understanding.” Overreaching agent instructions removed. Distinction between “attestation stamped” and “commit object stamped,” and between “existed by Bitcoin block date” and “created on August 31,” stated explicitly.

End of facts block.
