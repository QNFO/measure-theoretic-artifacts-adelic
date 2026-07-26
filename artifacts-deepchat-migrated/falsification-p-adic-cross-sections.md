# Phase 4.4 — p-Adic Corrections to Cross Sections

> **Phase 4 — Falsification Design | Priority: P4**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 4
> Cross-refs: `padic-adscft-mellin-amplitudes.md` (C1-RT.2), `adelic-s-matrix-product.md` (C1-RT.4), `falsifiability-matrix.md` (D4)

---

## 1. From Mellin Amplitudes to Cross Sections

The p-adic S-matrix element M_p(s,t) (C1-RT.2, C1-RT.4) determines the p-adic contribution to the total cross section via the optical theorem (where applicable) or directly from squared amplitudes.

For a 2→2 scattering process with Mandelstam variables (s,t), the Archimedean differential cross section:
```
dσ_∞/dt = (1/16π s²) |M_∞(s,t)|²
```

The adelic extension replaces the squared amplitude with the adelic product:
```
dσ_A/dt = (1/16π s²) |M_∞(s,t)|² × ∏_p |M_p(s,t)|²_p
```

where |·|_p is the p-adic absolute value (not the complex modulus — the squared amplitude in p-adic sense).

---

## 2. Correction Structure — The Adelic Cross Section Ratio

Define the adelic correction factor:
```
R(s,t) = dσ_A/dσ_∞ = ∏_p |M_p(s,t)|²_p
```

For principal adeles (rational-valued amplitudes at rational (s,t)):
- |M_p(s,t)|_p = 1 for all p ∉ S (active prime set)
- For p ∈ S = {2, 3, 5}: |M_p(s,t)|_p = p^{k_p} where k_p depends on pole structure

The correction factor is:
```
R = p_2^{2k_2} × p_3^{2k_3} × p_5^{2k_5}
```

For p-adic integer amplitudes (|M_p|_p ≤ 1): k_p ≤ 0 → R < 1 → **p-adic contributions SUPPRESS the Archimedean cross section.**

For p-adic non-integer amplitudes (|M_p|_p > 1): k_p ≥ 1 → R > 1 → **p-adic contributions ENHANCE the Archimedean cross section.**

---

## 3. Explicit Example: φ⁴ Scattering at Threshold

Consider s-channel φ⁴ scattering at threshold (s ≈ 4m²). The Archimedean tree-level amplitude:
```
M_∞(s,t) = −λ (s-channel contact term)
```

For the p-adic analog on T_p, the contact diagram (C1-RT.2 §4 Step 3):
```
M_p(s,t) = ∑_{v∈T_p} ∏_{i=1}^4 p^{−Δ·d(v, [ξ_i])}
```

This sum converges to a rational function of p. For p = 2, Δ = 1 (free scalar):
```
M_2(threshold) = (1 + p^{−1})/(1 − p^{−3}) = (3/2) / (7/8) = 12/7 ≈ 1.714
```

|M_2|_2 = |12/7|_2 = 2^0 × 7^{−1} → |M_2|_2 = 1 (numerator and denominator coprime to 2).

The 2-adic correction: |M_2|²_2 = 1 — **no correction at p=2 for this process at this order.**

For p = 3: M_3 = (4/3)/(26/27) = 36/26 = 18/13. |18/13|_3 = 1.
For p = 5: M_5 = (6/5)/(124/125) = 150/124 = 75/62. |75/62|_5 = 1.

**For the tree-level contact diagram: R = 1 at all primes — no adelic correction at leading order.** The non-trivial corrections begin at one-loop, where the integer-spaced pole structure differs from the Archimedean continuous pole structure.

---

## 4. One-Loop Correction Estimate

The one-loop p-adic bubble diagram (see B2, Missarov 1989):
```
M_p^{(1-loop)}(s) = M_p^{(0)}(s) × [1 + g_p² × β_p × log(|s|_p/μ²)]
```
where β_p is the p-adic β-function coefficient (rational function of p).

For p = 2: β_2 = rational — differs from β_∞ = 3/(16π²) by factor involving (p²−1)/p².

The one-loop adelic correction to the cross section:
```
R^{(1-loop)} = ∏_{p∈S} |1 + g_p² × β_p × log(|s|_p/μ²)|²_p
```

For small coupling g_p ≪ 1: the first non-trivial term is:
```
R^{(1-loop)} ≈ 1 + 2 Σ_{p∈S} g_p² × β_p × log(|s|_p/μ²)
```

**The sign of the correction depends on whether log(|s|_p/μ²) is positive or negative in the p-adic sense — i.e., whether |s|_p > μ²_p or |s|_p < μ²_p in the p-adic norm.** This is fundamentally different from the Archimedean case where log is monotonic.

---

## 5. Numerical Estimate — Most Falsifiable Process

**Process:** φ⁴ 2→2 scattering at center-of-mass energy √s = 1 TeV, with μ = m_Z ≈ 91 GeV (electroweak scale).

| Quantity | Archimedean Value | p-adic (p=2) Value |
|:---|:---|:---|
| √s | 1 TeV | |1 TeV|_2 — depends on units |
| μ | 91.1876 GeV | |91.1876|_2 in natural units |
| log(s/μ²) | log(10⁶/8.3×10³) ≈ 4.79 | DNE (no continuous log in ℚ_p) |
| β_∞ | 3/(16π²) ≈ 0.019 | β_2 — rational, O(p⁰) |

**The fundamental obstruction: the p-adic log is only defined on 1 + pℤ_p, not on arbitrary p-adic numbers.** The RG scale dependence cannot be naively transcribed from ℝ to ℚ_p — it requires a fundamentally different treatment of scale evolution.

---

## 6. Falsifiability of Cross-Section Corrections

**Direct test (requires C1-RT.2 computation):**
If A_p(s,t) can be computed for a specific process at rational (s,t), the adelic correction R(s,t) is:
```
R = ∏_{p∈S} |A_p(s,t)|²_p
```
and the predicted cross section:
```
σ_A = σ_∞ × R
```

**Falsifies adelic hypothesis if:** σ_A ≠ σ_measured (at precision exceeding R − 1).

**Current status:** R cannot be computed because A_p(s,t) have not been numerically evaluated (Phase 3 pipeline, zero executions). This task is gated on C1-RT.2 implementation.

---

## 7. Tiered Falsifiability (by implementation difficulty)

| Tier | Derivation Complexity | Example Signature | Executable? |
|:---|:---|:---|:---|
| **A** — Ultrametric correlations (P4.1-4.3) | LOW — existing quantum simulators | Gromov δ < 3 on mutual information metric | YES — 3-6 months |
| **B** — Tree-level Amplitudes | MEDIUM — requires C1-RT.2 Python implementation | R(s,t) for contact diagram at rational (s,t) | Requires Phase 3 |
| **C** — One-loop Corrections | HIGH — requires full p-adic QED | β_p mismatch in loop-level cross section | Requires Phase 3 + B2 extension |
| **D** — Full Adelic S-Matrix | VERY HIGH — requires C1-RT.2 + C1-RT.3 + C1-RT.4 | Adelic product constraint on hadronic cross sections | Multi-year research programme |

**The programme's most immediately falsifiable claim is NOT from cross-section corrections (Tiers B-D) but from ultrametric correlation signatures (Tier A) — accessible on existing quantum simulators.**

---

## 8. References
- Missarov (1989): p-adic β-functions.
- Penedones (2011): Mellin amplitudes and CFT correlators.

### QNFO Internal
- `artifacts/padic-adscft-mellin-amplitudes.md` (C1-RT.2)
- `artifacts/adelic-s-matrix-product.md` (C1-RT.4)
- `artifacts/falsification-experimental-protocols-designed.md` (P4.1)

---

*Document status: DESIGNED | Key findings: (1) Tree-level contact diagram gives R=1 — no adelic correction at leading order; (2) Non-trivial corrections begin at one-loop where β_p ≠ β_∞ (Missarov); (3) The p-adic log's domain restriction prevents naive RG scale transcription; (4) Cross-section falsifiability is gated on Phase 3 computation (C1-RT.2) and is not currently executable; (5) Tier A (ultrametric correlations from P4.1-4.3) is the most immediately falsifiable path — no cross-section computation needed.*
