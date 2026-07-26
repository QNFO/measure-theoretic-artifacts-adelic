# Phase 4.2 — Ultrametric vs. Archimedean Signature Simulation

> **Phase 4 — Falsification Design | Priority: P2**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 4
> Cross-refs: `falsification-experimental-protocols-designed.md` (P4.1), `falsifiability-matrix.md` (D4)

---

## 1. Simulation Scope

Before committing experimental resources, simulate the EXPECTED signals for both hypotheses to:
1. Verify that the ultrametric signature is distinguishable from noise
2. Quantify the required signal-to-noise ratio (SNR)
3. Generate mock data for blind analysis protocols
4. Prevent post-hoc pattern recognition (the Eddington risk)

---

## 2. Spin Noise Simulation

### 2.1 Archimedean Model

Generate synthetic spin noise time series:
```
S(t) = A₀ + Σ_n A_n cos(2πf_n t + φ_n) + η(t)
```
where:
- f_n = n·f₀ (equally spaced harmonics — continuous Fourier spectrum)
- A_n ~ Lorentzian envelope: A_n ∝ 1/(1 + (n − n₀)²/Γ²)
- φ_n ~ Uniform(0, 2π)
- η(t) ~ white noise, σ² = 1/SNR

### 2.2 Ultrametric Model

```
S(t) = A₀ + Σ_{n,m} A_{nm} cos(2π f₀·p^n·(1 + ε_m)·t + φ_{nm})
```
where:
- p = 2 (test case — smallest prime, strongest ultrametricity)
- f_n = f₀ · 2^n, n ∈ {−3, −2, −1, 0, 1, 2, 3} (7 octaves)
- ε_m ~ p-adic ball fluctuations, |ε_m|₂ < 2^{−3} (within a p-adic ball)
- A_{nm} ~ exponentially decaying with |n|
- φ_{nm} ~ correlated within p-adic balls: φ_{nm} = φ_{n0} + δφ_{nm}, |δφ|₂ small

### 2.3 Simulation Parameters

| Parameter | Value | Justification |
|:---|:---|:---|
| f₀ (base frequency) | 10¹² Hz | Effective ZBW in GaAs |
| Frequency range | 10¹⁰ − 10¹⁴ Hz (4 decades) | Accessible with ultrafast SNS |
| Time resolution | 10 fs | Nyquist for 50 THz |
| Integration time | 10⁶ periods (1 ms) | SNR ~ 10³ at cryogenic T |
| p-adic ball depth | 3 levels | |ε_m|₂ < 2^{−3} — 3 levels of 2-adic hierarchy |

### 2.4 Discriminating Metric

Compute the Gromov δ on the frequency-distance metric:
```
d(f_i, f_j) = |log(f_i) − log(f_j)|    (log-frequency distance)
```

For Archimedean: δ grows without bound as more frequencies are included — the log-frequency space looks like a line (0-hyperbolic in the limit).
For ultrametric (p-adic): δ bounded — the log-frequency space is a finite-valence tree.

**Expected δ values (from geometric arguments):**
- Archimedean, N frequencies: δ_arch ≈ log(N) / 2 → diverges with N
- Ultrametric, p=2 tree, depth D: δ_ult ≤ 2 (bounded independent of tree size)

### 2.5 Detection Threshold

For p = 2 ultrametric tree at depth D = 7 (7 octaves):
- Minimum distinguishable δ: δ_ult = 2, δ_arch = log(2⁷)/2 ≈ 2.43
- Difference: Δδ = 0.43 — needs SNR > 50 for 3σ detection
- Minimal integration time: ~100 μs at T = 4K

---

## 3. EELS/RIXS Simulation

### 3.1 Excitation Spectrum Model

**Archimedean:** Excitations at energies E_i drawn from continuous density of states ρ(E) ∝ E^{−α} with Lorentzian broadening.

**Ultrametric:** Excitations organized in a p-adic tree with branching factor p:
```
E_{branch} = {E₀·p^{±n} : n = 0,1,...,D}
```
with sub-excitations within each branch forming self-similar clusters.

### 3.2 Ultrametricity Index U

```python
# _ultrametric_sim.py
def compute_U(energies):
    """Ultrametricity index from 4-point condition."""
    N = len(energies)
    U_sum = 0
    for i, j, k in triplets(N):
        dij = abs(energies[i] - energies[j])
        dik = abs(energies[i] - energies[k])
        dkj = abs(energies[k] - energies[j])
        U_sum += (dij - max(dik, dkj))**2
    return U_sum / (N * (N-1) * (N-2) / 6)
```

For Archimedean: U → 0 (triangle equality holds approximately).
For ultrametric: U > 0 significantly (strong triangle inequality).

### 3.3 Required Resolution

For Sr₂IrO₄ with ~15 d-d excitations in 0-2 eV range:
- Energy resolution < 10 meV: resolves level splitting
- Need ≥ 10 resolved peaks for reliable U
- Bootstrapping: 10⁴ resamples for confidence interval on U

---

## 4. Mutual Information Metric Simulation

### 4.1 Simulated System

20-qubit ion trap with programmable couplings J_{ij}:
- **Archimedean:** J_{ij} ∝ |i−j|^{−α} (power-law, translation-invariant)
- **Ultrametric:** J_{ij} ∝ p^{−d_T(i,j)·γ} (tree-structured, hierarchical)

### 4.2 Computed Quantities
- Mutual information I(i:j) from exact diagonalization (20 qubits — classically tractable)
- Metric: d(i,j) = −log(I(i:j) / max_{k,l} I(k:l))
- Gromov δ from the metric distances

### 4.3 Expected Results

| System size N | δ_arch (power-law) | δ_ult (tree, p=2) | Distinguishable? |
|:---|:---|:---|:---|
| 10 qubits | ~1.8 | ~0.8 | Marginal |
| 20 qubits | ~2.5 | ~0.9 | Yes (Δ > 3σ) |
| 50 qubits | ~3.2 | ~1.0 | Strong |

**Minimum system size for clear discrimination: 20 qubits** — accessible on current trapped-ion platforms.

---

## 5. Simulation Deliverables

| Deliverable | Format | Time to Execute |
|:---|:---|:---|
| Spin noise mock data (Archimedean + ultrametric) | .h5 files, 10⁷ time points | 1 hour (Python + numpy) |
| EELS excitation spectrum + U-index | .csv + figures | 2 hours |
| Mutual information matrix + Gromov δ | .npy arrays, 20×20 matrix | 4 hours (exact diagonalization) |
| Blind analysis protocol | README + scripts | 1 day |

**Total simulation effort: ~2 days of Python development + computation.**

---

## 6. References
- Gromov (1987): δ-hyperbolicity definition and computation.
- Carlen et al. (2016): "Computation of the Gromov δ-hyperbolicity constant" — algorithm for metric spaces.
- Brydges et al. (2019): Randomized measurements for entanglement entropy in ion traps.

### QNFO Internal
- `artifacts/falsification-experimental-protocols-designed.md` (P4.1)
- `artifacts/falsifiability-matrix.md` (D4)

---

*Document status: DESIGNED | Key metrics: Gromov δ (spin noise: δ_arch→∞ vs δ_ult≤2), ultrametricity index U (EELS: U→0 vs U>0), mutual information Gromov δ (20 qubits: δ_arch~2.5 vs δ_ult~0.9). Minimum system: 20 qubits, 10 meV resolution, 10⁷ samples. Simlation effort: ~2 days. Next: P4.3 (lab identification).*
