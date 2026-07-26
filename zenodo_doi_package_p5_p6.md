# Zenodo DOI Registration Package — P5 & P6

**Date:** 2026-07-22
**Status:** Ready for Zenodo submission
**Action Required:** Create Zenodo deposit via API or web interface, upload PDF/Markdown, publish

---

## Paper P5: Adelic Quantum Error Correction

### Metadata

| Field | Value |
|---|---|
| **Title** | Adelic Quantum Error Correction: Intrinsic Qubit Protection from Ostrowski's Theorem |
| **Authors** | Rowan Brad Quni-Gudzinas (ORCID: 0009-0007-2683-8836) |
| **Description** | We formalize an adelic approach to quantum error correction (QEC) based on Ostrowski's theorem: the only non-trivial completions of the rational numbers are the Archimedean (real) and p-adic completions. A Majorana zero mode on a Bruhat-Tits tree is a p-adic fixed point. No Archimedean perturbation can move this fixed point because the ℝ and ℚₚ topologies are mutually singular. This provides intrinsic qubit protection without active QEC codes — hardware-level error correction based on number theory rather than energy gaps. |
| **License** | QNFO Unified License Agreement (QNFO-ULA) |
| **Keywords** | Adelic QEC, Ostrowski's theorem, Bruhat-Tits tree, Majorana zero modes, intrinsic error protection, topological quantum computing |
| **Publication Date** | 2026-07-05 |
| **Version** | v1.0.0 |
| **Language** | eng |
| **Type** | preprint |
| **Communities** | qnfo |
| **Related Identifiers** | |
| - cites | 10.5281/zenodo.21211007 (P1: ZBW as p-Adic Observable) |
| - cites | 10.5281/zenodo.21211139 (P2: Majorana ZBW Correlator) |
| - cites | 10.5281/zenodo.21211382 (P3: Bruhat-Tits Readout Protocol) |
| - cites | 10.5281/zenodo.21214358 (P4: ZBW ↔ p-Adic Anyons) |
| - isPartOf | 10.5281/zenodo.21211484 (P7: Grand Synthesis) |
| **Slug (D1)** | zbw-majorana-tqc-p5-adelic-qec |
| **Files to upload** | |
| | 1. adelic-qec-v1.0.0.pdf |
| | 2. adelic-qec-v1.0.0.md (source) |

### Pre-registration Experiment

The OSF pre-registration `osf_registration_adelic_qec.md` describes the protocol to test P5's central claim: T₂ of Majorana qubit is independent of Archimedean noise amplitude. The pre-registration should be linked as an OSF Registration connected to the Zenodo DOI.

---

## Paper P6: Ultrametric Engine

### Metadata

| Field | Value |
|---|---|
| **Title** | Ultrametric Engine: Deploying a 20-Principle p-Adic Discovery Worker |
| **Authors** | Rowan Brad Quni-Gudzinas (ORCID: 0009-0007-2683-8836) |
| **Description** | We specify and deploy an ultrametric discovery engine — a Cloudflare Worker implementing 20 principles from the proven Ask QWAV production system. The Worker provides 27+ API endpoints including Bruhat-Tits tree construction, p-adic ranking via 3-phase discovery, dendrogram visualization data, and spectral analysis (Tate, Amice, intrinsic Amice transforms). Deployed on Cloudflare's edge network with D1, R2, and Vectorize bindings. |
| **License** | QNFO Unified License Agreement (QNFO-ULA) |
| **Keywords** | Ultrametric engine, Cloudflare Workers, Bruhat-Tits tree, p-adic discovery, Gromov hyperbolicity, p-adic time clusters |
| **Publication Date** | 2026-07-05 |
| **Version** | v1.0.0 |
| **Language** | eng |
| **Type** | software |
| **Note on Type** | "software" selected because the primary contribution is a deployed computational infrastructure. Alternative: "preprint" if the paper content is considered primary. |
| **Communities** | qnfo |
| **Related Identifiers** | |
| - cites | 10.5281/zenodo.21211007 (P1) |
| - cites | 10.5281/zenodo.21211139 (P2) |
| - cites | 10.5281/zenodo.21211382 (P3) |
| - isPartOf | 10.5281/zenodo.21211484 (P7: Grand Synthesis) |
| **Slug (D1)** | zbw-majorana-tqc-p6-ultrametric-engine |
| **Files to upload** | |
| | 1. ultrametric-engine-v1.0.0.pdf |
| | 2. ultrametric-engine-v1.0.0.md (source) |
| | 3. worker.js (source code — the deployed Worker) |
| **Deployment Status** | ✅ Deployed on Cloudflare Workers. Gromov δ endpoint live. 27+ endpoints operational. |

---

## Zenodo API Deposit Commands (Reference)

```bash
# 1. Create a new deposit
curl -X POST "https://zenodo.org/api/deposit/depositions" \
  -H "Authorization: Bearer $ZENODO_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"metadata": {"title": "...", "upload_type": "preprint", ...}}'

# 2. Upload file
curl -X POST "https://zenodo.org/api/deposit/depositions/$DEPOSIT_ID/files" \
  -H "Authorization: Bearer $ZENODO_TOKEN" \
  -F "file=@adelic-qec-v1.0.0.pdf"

# 3. Publish
curl -X POST "https://zenodo.org/api/deposit/depositions/$DEPOSIT_ID/actions/publish" \
  -H "Authorization: Bearer $ZENODO_TOKEN"
```

### Post-Publication Checklist
- [ ] Verify DOI resolves via doi.org
- [ ] Update D1 living-paper database with new DOI
- [ ] Update P7 Grand Synthesis with P5 and P6 DOIs
- [ ] Update knowledge graph nodes
- [ ] Commit paper sources to QNFO GitHub (if not already)

---

## Current DOI Status (Adelic Physics Program)

| Paper | DOI | Status |
|---|---|---|
| P1: ZBW as p-Adic Observable | 10.5281/zenodo.21211007 | ✅ Published |
| P2: Majorana ZBW Correlator | 10.5281/zenodo.21211139 | ✅ Published |
| P3: Bruhat-Tits Readout Protocol | 10.5281/zenodo.21211382 | ✅ Published |
| P4: ZBW ↔ p-Adic Anyons | 10.5281/zenodo.21214358 | ✅ Published |
| **P5: Adelic QEC** | **MISSING** | **← ACTION NEEDED** |
| **P6: Ultrametric Engine** | **MISSING** | **← ACTION NEEDED** |
| P7: Grand Synthesis | 10.5281/zenodo.21211484 | ✅ Published |
| Adelic Synthesis (Pattern-Particle) | Needs separate DOI | ⚠️ Draft |
| UMF (Number-Theoretic Foundations) | Needs separate DOI | ⚠️ Draft |
| UC-Langlands v1.0 | **In preparation** | ❌ |
