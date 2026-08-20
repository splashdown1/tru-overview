<div align="center">

# TRU

**A private, offline-first Bible study and sovereign intelligence engine.**

**Truth is constant. Perspective is fluid.**

[![Offline](https://img.shields.io/badge/runtime-offline--first-111827)](#privacy-and-sovereignty)
[![KJV](https://img.shields.io/badge/scripture-complete%20KJV-7c2d12)](#what-is-included)
[![No cloud](https://img.shields.io/badge/cloud-processing-none-166534)](#privacy-and-sovereignty)

</div>

---

## Summary

TRU is a sovereign, offline-first Bible study companion and local intelligence engine. It is designed to run from a downloaded file in a modern browser, without an account, subscription, cloud service, API key, or recurring fee.

Ask questions in plain language, look up any passage in the complete 31,100-verse King James Bible, explore linked themes and doctrines, compare related Scripture witnesses, follow study threads, and read continuously from any starting point. TRU keeps the work on the device instead of sending questions and history to a remote AI service.

TRU is not a generic chatbot and it is not only a keyword search box. It is a family of self-contained browser engines, build systems, research layers, and archived experiments developed around local knowledge, Scripture retrieval, transparent source labels, and portable memory.

## What is included

The mature TRU study builds can include:

- Complete KJV Scripture with verse and chapter lookup
- A local knowledge graph connecting themes, doctrines, characters, decisions, and passages
- Conversational study routing for Scripture, doctrine, definitions, Strong's terms, commentary, calculations, and knowledge gaps
- Continuous reading mode from a chosen passage through Revelation
- Book-change announcements without interrupting every verse with chapter references
- Related Scripture witnesses for comparison
- Persistent browser-local memory for recent questions and study threads
- Progressive follow-ups that add context instead of repeating the same answer
- Confidence and source labels distinguishing Scripture, local study material, and interpretation
- Matthew Henry and other historical commentary layers in the larger builds
- Greek and Hebrew study support through Strong's lexicon data where included in a specific build
- A polysemic PaRDeS study layer in the APEX9 lineage, presenting PESHAT, REMEZ, DERASH, and SOD readings
- Local audit, provenance, state, council, graph, teaching, export, and memory workflows in the phase builds
- No telemetry, cloud processing, or external runtime dependency in the offline contract

The exact feature set depends on the build. Larger files contain more material but are not automatically better for every device or use case.

## Available versions

TRU has a preserved lineage of **103 tracked HTML files**, **5 ZIP bundles**, and many source, data, test, and build files in the private development monorepo. The number refers to preserved artefacts, not 103 separate polished products. Some are historical prototypes, specialised tools, experimental candidates, or build outputs.

The most useful groups are:

| Family | What it is | Examples |
|---|---|---|
| **Canonical offline host** | The maintained baseline built from a reproducible source tree | `Projects/TRU/current/index.html` — Phase 27 host, 30,745 embedded nodes |
| **Phase builds** | Structured development milestones with increasing local graph, council, and state features | Phase 27, Phase 28 Knowledge Graph, Phase 29 Council, Phase 30 Recursive Council |
| **Sovereign / APEX lineage** | Large single-file study engines combining Scripture, local brain data, dictionaries, lexicons, commentary, and routing | `TRU_SOVEREIGN`, `TRU_COMPLETE`, `TRU_APEX7`–`TRU_APEX10` |
| **Max-content bundles** | Compressed distributions for larger research libraries | `TRU_APEX_MAX.zip`, `TRU_APEX_MAX_POLYSEM.zip`, `TRU_APEX_ULTIMATE.zip` |
| **Specialised builds** | Smaller, focused, or differently presented tools | `TRU_APEX_LITE`, `TRU_DICTIONARY`, `Scripture_Seeker`, `TRU_GHOST`, `TRU_MOBILE` |
| **COIL / Pastoral / Logos / Holographic branches** | Distinct experimental interfaces and identity or reasoning directions | `TRU_COIL`, `TRU-PASTORAL`, `TRU_LOGOS`, `TRU_HOLO`, `TRU_SUPER` |
| **Archives and public ghosts** | Frozen lineage, recovery copies, and portable snapshots | `archive/legacy-root-builds`, `tru-ghost-public`, `Projects/TRU/ship` |

### The current canonical baseline

The current canonical offline host is the Phase 27 build at `Projects/TRU/current/index.html`. It is the release baseline for the maintained source tree: self-contained, offline, locally persistent, and verified against its smoke test. It embeds 30,745 local knowledge nodes and the KJV Scripture layer.

Phase 28 and Phase 29 are preserved candidate branches that add a larger knowledge graph and a deterministic local council. Phase 30 is an active recursive-council development line, not a claim that every experimental branch is production-ready.

The larger APEX builds and later experimental files are preserved for research, comparison, and future release decisions. They should be described as candidates or experiments unless a release note explicitly promotes them.

## How TRU works

At a high level, a question moves through local routing rather than being sent to a cloud model:

1. The browser opens the self-contained application.
2. The local router identifies the kind of request: Scripture, doctrine, definition, lexicon, commentary, calculation, or gap.
3. TRU retrieves from embedded local data and Scripture indexes.
4. The response shows its source or confidence class where the build supports those labels.
5. Follow-up questions can use browser-local memory and the current study thread.
6. The user can audit, export, reset, or continue the session locally.

The architecture favours files and portable artefacts: HTML for a complete offline application, JSON for local data, Python builders for reproducible assembly, and browser storage for personal session state.

## Try it

Example prompts include:

```text
Psalm 23
What is faith without works?
Where is Jesus now?
Who wrote Genesis?
What is the KJV?
Explain the meaning of grace
TRU start reading at Genesis 1:1
TRU start reading at John 3:16
TRU pause reading
TRU resume reading
TRU audit last answer
```

Download a chosen HTML build, open it in a modern browser, and study locally. No installation is required for the single-file builds.

## Privacy and sovereignty

TRU's offline contract is intentionally strict:

- no account required
- no subscription required
- no API key required
- no telemetry in the offline host
- no cloud processing for local questions
- no recurring fees
- Scripture, study data, questions, and local history remain in the downloaded application and browser storage
- the files can be copied, archived, inspected, or run without a hosted service

This overview repository does not contain the complete TRU engine source or distribution files. It contains this README as the public explanation; the implementation and larger artefacts remain private or are distributed separately.

## Honest boundaries

TRU is a study companion. It presents Scripture references and labels interpretation where the selected build supports that distinction. It is not a replacement for prayer, personal study, Christian community, pastoral counsel, medical care, or emergency support.

Not every preserved version has the same evidence level, feature set, or release status. A version number, larger file size, or more extensive data layer does not by itself make a build canonical. Provenance and regression status matter.

Some historical files in the development archive have unresolved source provenance. They should not be marketed as authoritative translations or as fully verified releases without a corresponding audit.

## Project structure

The private development monorepo is organised around:

- `Projects/TRU/current/` — maintained canonical source and baseline host
- `Projects/TRU/phase28/`, `phase29/`, and `phase30/` — milestone branches
- `Projects/TRU/build-scripts/` — reproducible builders and patches
- `Projects/TRU/data/` — Scripture, brain, dictionary, lexicon, and cross-reference inputs
- `Projects/TRU/versions/` — preserved named engine variants
- `archive/legacy-root-builds/` — older large-build lineage
- `tru-ghost-public/` — ghost/export variants
- `tru-core/` and related repositories — portable core, research, and supporting work

## Licence and status

TRU is an evolving personal project. Individual files may carry different licence notices or source obligations; inspect the distribution's included licence and attribution files before redistributing a build. The public overview is descriptive, not a grant of rights to every private or third-party data layer.

Built by Joe (Splashdown) and TRU.

---

<div align="center">

**One download. No account. No cloud. Scripture in your hands.**

</div>
