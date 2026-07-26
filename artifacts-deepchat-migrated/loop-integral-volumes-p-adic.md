# Loop Integral Volumes: π^{d/2} vs. p-Adic Rational Coefficients

> **Workstream A5 | Tier 1–2 — Numerically + Structurally Non-Cosmetic**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 2
> Cross-refs: `non-cosmetic-archimedean-predictions.md` §1.5, `p-adic-feynman-propagator.md` (B1), `uncertainty-principle-p-adic.md` (B6)

---

## 1. The Archimedean π^{d/2} Factor

Every loop integral in QFT contains a factor from the d-dimensional solid angle:

```
Ω_{d-1} = 2π^{d/2} / Γ(d/2)
```

For the most common dimensionalities:

| d | Ω_{d-1} | Numeric | π factor |
|:---|:---|:---|:---|
| 1 | 2 | 2.0 | None |
| 2 | 2π | 6.283 | π¹ |
| 3 | 4π | 12.566 | π¹ |
| 4 | 2π² | 19.739 | π² |
| d | 2π^{d/2}/Γ(d/2) | varies | π^{d/2} |

Combined with the Fourier normalization (2π)^{-d}, the effective measure for a d-dimensional loop integral is:

```
∫ d^d k/(2π)^d · f(k²) = [Ω_{d-1}/(2π)^d] ∫_0^∞ k^{d-1} f(k²) dk
```

The factor Ω_{d-1}/(2π)^d = [2π^{d/2}/Γ(d/2)]/(2π)^d = 1/[2^{d-1} π^{d/2} Γ(d/2)] contains π^{d/2} and is **not rational for any d ≥ 1.**

Every one of the 21 Archimedean predictions that involves a loop integral (β-functions, g−2, Lamb shift, critical exponents, anomalous dimensions, S-matrix elements) inherits this π^{d/2} factor.

---

## 2. p-Adic Loop Integration — No π

In ℚ_p^d, the Haar measure replaces Lebesgue measure. The p-adic analog of the spherical volume is the Haar measure of the p-adic sphere S_n = {k: |k|_p = p^n}:

```
μ(S_n) = p^{dn} (1 − p^{−d})
```

The unit sphere measure is (1 − p^{−d}) = (p^d − 1)/p^d — **a rational function of p.**

| d | Archimedean Ω_{d-1} | p-adic unit sphere μ({|k|_p=1}) | Ratio |
|:---|:---|:---|:---|
| 2 | 2π ≈ 6.283 | (1 − p^{−2}) = (p²−1)/p² | ≈6.283/0.75 = 8.4 (p=2) |
| 3 | 4π ≈ 12.566 | (1 − p^{−3}) = (p³−1)/p³ | ≈12.566/0.875 = 14.4 (p=2) |
| 4 | 2π² ≈ 19.739 | (1 − p^{−4}) = (p⁴−1)/p⁴ | ≈19.739/0.938 = 21.0 (p=2) |
| d | 2π^{d/2}/Γ(d/2) | (p^d − 1)/p^d | O(π^{d/2}) difference |

**The p-adic spherical volume approaches 1 as p → ∞, but never reaches the Archimedean value 2π^{d/2}/Γ(d/2).** The Archimedean value is not the limit of p-adic values — it is a fundamentally different mathematical object.

---

## 3. Cascade Through All 21 Predictions

The π^{d/2} factor appears in the normalization of **every** loop diagram. Replacing it with a rational function of p changes the numerical coefficient of:

### Tier 1 (Numerically affected)
| Prediction | d (loop dimension) | π factor | p-adic replacement |
|:---|:---|:---|:---|
| Stefan-Boltzmann (A1) | 3 | π² | (1−p^{−3}) — rational |
| Casimir (A2) | 2 | π² from (2π)⁻² | (1−p^{−2}) — rational |

### Tier 2 (Structurally affected)
| Prediction | Loop order | π factor | Impact |
|:---|:---|:---|:---|
| β-functions (B2) | 1-loop (d=4−ε) | π² | Direct coefficient change |
| Critical exponents (B3) | Recursion | π² per loop | Cumulative |
| Anomalous dimensions (B4) | 1-loop | π² | Direct |
| S-matrix (B5) | All orders | π^{d/2} per loop | Exists but structurally different |
| Uncertainty (B6) | Fourier normalization | 1/(2π) | C_p = 1 vs. ħ/2 |

### Tier 3–4 (Indirectly affected)
| Prediction | Connection |
|:---|:---|
| Feynman propagator (B1) | Momentum-space normalization |
| g−2 (Tier 4) | Schwinger term = α/(2π) |
| Lamb shift (Tier 4) | Self-energy integral |
| Quantum Hall (Tier 4) | 2π periodicity of wavefunction phase |

**Total: at least 14 of 21 predictions are directly or indirectly affected by the loop volume difference.**

---

## 4. Product Formula Constraint

The d-dimensional loop integral coefficient:

```
C(d)_∞ = Ω_{d-1}/(2π)^d = 1/[2^{d-1} π^{d/2} Γ(d/2)]
```

For d = 4: C(4)_∞ = 1/[8π² Γ(2)] = 1/(8π²) ≈ 0.0127

If C(d) is an adelic quantity:
```
C(d)_∞ × ∏_p |C(d)_p|_p = 1 → ∏ |C(d)_p|_p = 8π² ≈ 78.96
```

For this to hold with p-adic integers |C(d)_p|_p ≤ 1 for most p, a finite set of primes must have |C(d)_p|_p > 1 — meaning the p-adic loop coefficient has denominator powers of those primes.

## 5. Per-Loop-Order Table

The π factor accumulates with loop order L:

```
∫ d^d k_1/(2π)^d ... d^d k_L/(2π)^d = [C(d)_∞]^L
```

**For L = 1 (one loop):** π^{-2} difference
**For L = 2 (two loops):** π^{-4} difference
**For L = L loops:** π^{-2L} difference

The p-adic analog gives [C(d)_p]^L — rational powers of p. The divergence between completions grows exponentially with loop order.

---

## 6. References

- Collins, J. C. (1984). *Renormalization*, Appendix B (d-dimensional integration).
- Vladimirov, Volovich, Zelenov (1994): *p-adic Analysis*, Ch. 6 (p-adic integration).
- Zinn-Justin, J. (2002). *Quantum Field Theory and Critical Phenomena*, Ch. 7.

### QNFO Internal
- `artifacts/p-adic-stefan-boltzmann.md` (A1) — 3D Haar measure
- `artifacts/p-adic-casimir-energy.md` (A2) — 2D Haar measure
- `artifacts/p-adic-feynman-propagator.md` (B1) — Fourier normalization
- `artifacts/uncertainty-principle-p-adic.md` (B6) — 1D Fourier normalization
- `non-cosmetic-archimedean-predictions.md` — full 21-prediction catalog

---

*Document status: EXECUTED | Key findings: (1) every d-dimensional loop integral contains π^{d/2} — Archimedean solid angle factor; (2) p-adic analog replaces Ω_{d-1} with rational (1−p^{−d}); (3) at least 14/21 predictions directly or indirectly affected; (4) π factor accumulates as π^{-2L} with loop order L — exponential divergence between completions; (5) d=4: C(4)_∞ = 1/(8π²) vs. C(4)_p rational — factor ~79 difference in product formula constraint; (6) the loop volume difference is the single mechanistic source of the largest-magnitude non-cosmetic deviations in the entire 21-prediction catalog.*
