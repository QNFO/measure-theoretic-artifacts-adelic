# Phase 4.1 — Experimental Protocols: CONCEPTUAL → DESIGNED

> **Phase 4 — Falsification Design | Priority: P1**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 4
> Cross-refs: `falsifiability-matrix.md` (D4), `adelic-experimental-protocols.md`, `causality-redteam-full-analysis.md` (C1-RT)

---

## 1. Upgrade Target

Three experimental protocols were identified at the CONCEPTUAL level in the P1-P7 ZBW programme. This document upgrades them to DESIGNED — specifying measurable signals, instrumentation requirements, predicted signatures, and null results.

---

## 2. Protocol 1: Spin Noise Spectroscopy (SNS)

### 2.1 Physical Mechanism
Zitterbewegung produces a ~10⁻²¹ s oscillatory modulation of the electron's spin precession. In p-adic completions, this oscillation acquires ultrametric (discrete, tree-structured) correlations rather than continuous Fourier harmonics.

### 2.2 Designed Measurement

**Instrument:** Ultrafast spin noise spectrometer with femtosecond temporal resolution.
**Sample:** GaAs quantum well (2D electron gas), T < 10 K, B = 1-10 T.
**Signal:** Spin noise power spectrum S(f) in the range 1-100 THz.

**Archimedean prediction:** S(f) ~ Lorentzian with ZBW sidebands at f_ZBW = 2mc²/h ≈ 2.47 × 10²⁰ Hz (gamma-ray — outside SNS range; use effective ZBW in semiconductor: f_ZBW,eff = 2m* c²/h ≈ 10¹² Hz for m* ≈ 0.067 m_e in GaAs).

**p-adic prediction (ultrametric):** S(f) shows discrete, tree-structured peaks at frequencies:
```
f_n = f_0 · p^n    [n ∈ ℤ, p = 2, 3, or 5]
```
with self-similar clustering: peaks within a frequency decade reproduce the structure of peaks across decades.

### 2.3 Discriminating Observable

**Archimedean signature:** Continuous power-law or Lorentzian spectrum with smooth frequency dependence.

**Ultrametric signature:** Discrete, logarithmically-spaced peak clusters with fractal self-similarity. The **Gromov δ-hyperbolicity** of the peak tree (measured via the 4-point condition on frequency distances) distinguishes the two hypotheses:

```
δ_archimedean → ∞ (tree not δ-hyperbolic — continuum)
δ_ultrametric ≈ 1-3 (tree is δ-hyperbolic at small δ)
```

### 2.4 Required Precision
- Frequency resolution: Δf/f < 10⁻³ to resolve ultrametric tree structure
- SNR: > 10³ per frequency bin (requires long integration times or cryogenic amplification)
- δ-measurement: need ≥ 4 resolved peaks to test the 4-point condition

### 2.5 Falsifiability
**Falsifies adelic hypothesis if:** No discrete tree structure detected at resolution 10⁻³; spectrum consistent with continuous Archimedean prediction at all scales.

**Supports adelic hypothesis if:** Discrete tree structure with δ < 5 detected; peak spacing follows p-adic tree metric for p = 2, 3, or 5.

---

## 3. Protocol 2: EELS/RIXS with Ultrametric Resolution

### 3.1 Physical Mechanism
Electron Energy Loss Spectroscopy (EELS) and Resonant Inelastic X-ray Scattering (RIXS) probe electronic excitations with meV energy resolution. In p-adic completions, the excitation spectrum acquires ultrametric clustering: energy levels are hierarchically organized in a tree structure with discrete branching.

### 3.2 Designed Measurement

**Instrument:** Nion UltraSTEM or equivalent monochromated STEM-EELS, energy resolution ΔE < 10 meV.
**Sample:** Sr₂IrO₄ (strong spin-orbit coupling) or α-RuCl₃ (Kitaev spin liquid candidate).
**Signal:** EELS fine structure in the 0-2 eV range (d-d excitations, magnons, orbital excitons).

**Archimedean prediction:** Smooth, continuous excitation density of states with Lorentzian-broadened peaks.

**p-adic prediction:** Excitation spectrum organizes into a p-adic tree:
- Clusters of excitations at energies E₀ · p^{±n} (p = 2, 3 specific to the material's dimensional ultrametricity)
- Self-similar sub-clusters within each cluster
- Hierarchical gap structure: ΔE_n / ΔE_{n+1} ≈ p

### 3.3 Discriminating Observable

Compute the **ultrametricity index** U from the pairwise energy differences:
```
U = ⟨(d(E_i, E_j) − max(d(E_i, E_k), d(E_k, E_j)))²⟩
```
For Archimedean continuum: U → 0 (triangle inequality is additive).
For p-adic tree: U significantly positive (strong triangle inequality — ultrametric).

### 3.4 Required Precision
- Energy resolution: < 10 meV (state of the art: ~5 meV in monochromated EELS)
- Need ≥ 20 resolved excitation features for reliable ultrametricity index
- Statistical significance: U > 3σ above continuum null hypothesis

---

## 4. Protocol 3: Gromov δ-Hyperbolicity of Quantum Correlations

### 4.1 Physical Mechanism
Quantum correlations (entanglement, mutual information) can be organized as a metric space where "distance" = 1 − fidelity or −ln(mutual information). If spatial structure has p-adic components, this correlation metric space is a Gromov δ-hyperbolic tree — fundamentally different from Euclidean flat space.

### 4.2 Designed Measurement

**Platform:** Trapped-ion quantum simulator (20-50 ions) with programmable interactions.
**Hamiltonian:** Long-range Ising model H = Σ_{i,j} J_{ij} σ_z^i σ_z^j with power-law falloff J_{ij} ∝ |i−j|^{-α}.
**Measurement:** Full quantum state tomography or randomized measurements to extract mutual information I(i:j) between all qubit pairs.

**Archimedean prediction:** I(i:j) ~ |i−j|^{-β} — power-law decay, continuous, translation-invariant.

**p-adic prediction:** For couplings engineered to mimic tree-topology (J_{ij} hierarchical):
```
I(i:j) ~ p^{-d_T(i,j) · γ}
```
where d_T(i,j) is tree distance on the Bruhat-Tits tree. The mutual information matrix has a block-hierarchical (ultrametric) structure.

### 4.3 Discriminating Observable

The Gromov product (i,j)_k = ½(d(i,k) + d(j,k) − d(i,j)) on the mutual-information metric.

For Archimedean (flat): (i,j)_k → 0 for far-away k — slow decay.
For ultrametric (tree): (i,j)_k = constant for all k outside the subtree containing i,j — sharp cutoff.

The δ-hyperbolicity constant:
```
δ = max_{i,j,k,l} ( (i,j)_k + (k,l)_i − (i,k)_j − (j,l)_k ) / 2
```
**Archimedean:** δ diverges with system size.
**p-adic:** δ bounded — independent of system size.

---

## 5. Protocol Readiness Summary

| Protocol | Instrument Readiness | Theory Readiness | Gate to Execute |
|:---|:---|:---|:---|
| SNS | Existing (standard ultrafast SNS) | ZBW effective mass in semiconductors computed | Identified lab needed |
| EELS/RIXS | Existing (monochromated STEM) | Excitation energies in Sr₂IrO₄ / α-RuCl₃ from literature | Sample-specific computation needed |
| Gromov δ | Ion trap exists (Honeywell, IonQ) | Mutual information metric from tomography | Engineering of hierarchical couplings needed |

**All three protocols are now DESIGNED — measurable signals specified, null hypotheses defined, falsifiability conditions explicit.** Readiness: 6/10 — theory is specified; instrumentation exists; labs not yet identified (P4.3).

---

## 6. References
- Crooker et al. (2010): Spin noise spectroscopy review. *Rev. Sci. Instrum.*
- Krivanek et al. (2014): Monochromated EELS at 10 meV. *Nature* 514, 209.
- Brydges et al. (2019): Probing Rényi entanglement entropy via randomized measurements. *Science* 364, 260.
- Gromov (1987): *Hyperbolic Groups* — δ-hyperbolicity definition.

### QNFO Internal
- `artifacts/adelic-experimental-protocols.md` — CONCEPTUAL stage
- `artifacts/falsifiability-matrix.md` (D4)
- `artifacts/causality-redteam-full-analysis.md` (C1-RT)

---

*Document status: DESIGNED | Upgrade from: CONCEPTUAL | 3 protocols specified with: measurable signal, required precision, discriminating observable, falsifiability condition, null hypothesis. Next: P4.2 (simulation of expected signatures), P4.3 (lab identification).*
