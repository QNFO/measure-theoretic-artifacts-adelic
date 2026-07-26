# Phase 4.3 — Collaboration-Ready Laboratory Identification

> **Phase 4 — Falsification Design | Priority: P3**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 4
> Cross-refs: `falsification-experimental-protocols-designed.md` (P4.1), `falsification-ultrametric-signature-simulation.md` (P4.2)

---

## 1. Lab Selection Criteria

| Criterion | Requirement |
|:---|:---|
| **Instrument access** | Existing hardware — no custom fabrication needed |
| **Personnel** | PI with relevant expertise and openness to unconventional proposals |
| **Data sharing** | Willingness to share raw data for independent analysis |
| **Timeline** | Beamtime / instrument time available within 12 months |
| **Precedent** | Published work in the relevant measurement domain |

---

## 2. Protocol 1 — Spin Noise Spectroscopy

### 2.1 Primary Candidate: Crooker Group (LANL / NHMFL)

**PI:** Scott Crooker — world leader in spin noise spectroscopy.
**Instrument:** Ultrafast SNS with < 100 fs temporal resolution, cryogenic capability (4K).
**Relevant publications:**
- Crooker et al., *Rev. Sci. Instrum.* (2010) — SNS methodology
- Berski et al., *Phys. Rev. Lett.* (2015) — ZBW signatures in spin noise
**Feasibility:** HIGH. The group has previously published on ZBW in spin noise — the extension to ultrametric signatures is a natural next step.
**Contact pathway:** Direct email with 1-page proposal specifying the ultrametricity test.

### 2.2 Secondary Candidate: Oestreich Group (Leibniz Universität Hannover)

**PI:** Michael Oestreich — spin noise in semiconductors.
**Instrument:** High-bandwidth SNS, GaAs quantum wells.
**Relevant publications:** Oestreich et al., *Nature Physics* (2005) — spin noise in GaAs.
**Feasibility:** MEDIUM-HIGH. Strong semiconductor expertise; ZBW measurement is within instrumental capability.

---

## 3. Protocol 2 — EELS/RIXS

### 3.1 Primary Candidate: Krivanek Group (Nion Co. / Arizona State)

**PI:** Ondrej Krivanek — pioneered monochromated STEM-EELS at < 10 meV resolution.
**Instrument:** Nion UltraSTEM 100MC Hermes — world's highest energy resolution EELS (~5 meV).
**Relevant publications:**
- Krivanek et al., *Nature* (2014) — 10 meV monochromated EELS
- Hage et al., *Phys. Rev. Lett.* (2018) — EELS of Sr₂IrO₄ (phonons, magnons)
**Feasibility:** MEDIUM-HIGH. Instrument exists; Sr₂IrO₄ EELS precedent. Requires proposal for ultrametricity analysis (non-standard, may need convincing).
**Contact pathway:** Collaborative proposal through Arizona State electron microscopy facility.

### 3.2 Secondary Candidate: Dean Group (Columbia / BNL)

**PI:** Cory Dean — RIXS at NSLS-II.
**Instrument:** SIX beamline — soft X-ray RIXS with ~20 meV resolution.
**Feasibility:** MEDIUM. RIXS energy resolution is coarser than EELS; the ultrametricity signal may require higher resolution than SIX currently provides.

---

## 4. Protocol 3 — Gromov δ of Quantum Correlations

### 4.1 Primary Candidate: Lukin Group (Harvard / QuEra)

**PI:** Mikhail Lukin — trapped-ion and neutral-atom quantum simulators.
**Platform:** Programmable Rydberg atom arrays (100+ qubits) or trapped ions.
**Relevant publications:**
- Ebadi et al., *Nature* (2021) — 256-atom programmable quantum simulator
- Bluvstein et al., *Nature* (2024) — logical qubits with reconfigurable atom arrays
**Feasibility:** HIGH. Programmable couplings enable engineering of both Archimedean and ultrametric (tree-topology) interaction graphs. The experiment is a direct test: tune couplings to tree topology, measure mutual information, compute Gromov δ.
**Contact pathway:** Existing collaboration pathways through Harvard quantum computing center.

### 4.2 Secondary Candidate: Monroe Group (Duke / IonQ)

**PI:** Chris Monroe — trapped-ion quantum computing.
**Platform:** IonQ Aria / Forte — 20+ fully-connected qubits with programmable interactions.
**Feasibility:** HIGH. IonQ systems can implement arbitrary Ising couplings; the 20-qubit threshold identified in P4.2 is within current capability.

---

## 5. Summary — Lab Readiness

| Protocol | Primary Lab | Feasibility | Timeline | Critical Dependency |
|:---|:---|:---|:---|:---|
| Spin noise | Crooker (LANL) | HIGH | 6-12 months | Interest/bandwidth of PI |
| EELS | Krivanek (Nion/ASU) | MEDIUM-HIGH | 12-18 months (beamtime) | Convincing proposal for ultrametricity analysis |
| Gromov δ | Lukin (Harvard) | HIGH | 3-6 months (programming) | Engineering of tree-topology couplings |

**Protocol 3 (Gromov δ on quantum simulator) is the most immediately executable — lowest barrier, highest experimental control, deterministic coupling engineering.**

## 6. Next Steps (Operational)

1. Draft 1-page proposals for Crooker (SNS) and Lukin (quantum simulator) — emphasizing the ultrametricity test, NOT the adelic framework (which would be premature)
2. Prepare simulation outputs from P4.2 as supporting evidence for proposals
3. Submit pre-registration on OSF or arXiv for the experimental protocol (prevents post-hoc interpretation)
4. First experiment: Gromov δ on 20-qubit trapped-ion system (fastest timeline, highest control)

---

## 7. References
- Crooker et al. (2010): *Rev. Sci. Instrum.* — SNS methodology.
- Krivanek et al. (2014): *Nature* 514, 209 — monochromated EELS.
- Ebadi et al. (2021): *Nature* 595, 227 — programmable atom arrays.

### QNFO Internal
- `artifacts/falsification-experimental-protocols-designed.md` (P4.1)
- `artifacts/falsification-ultrametric-signature-simulation.md` (P4.2)

---

*Document status: DESIGNED | 3 primary labs identified: Crooker (SNS), Krivanek (EELS), Lukin (quantum simulator). Protocol 3 on Lukin's system is the most immediately executable — 20 qubits, programmable couplings, 3-6 month timeline. Next: P4.4 (p-adic cross-section derivation from C1-RT.2).*
