# Anomalous Dimensions in p-Adic OPE: Structural Comparison

> **Workstream B4 | Tier 2 — Structurally Non-Cosmetic**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 2
> Cross-refs: `non-cosmetic-archimedean-predictions.md` §2.3, `p-adic-feynman-propagator.md` (B1), `critical-exponents-p-adic-phi4.md` (B3)

---

## 1. What Anomalous Dimensions Are

In QFT, field operators acquire **anomalous dimensions** γ_φ = γ(g) through renormalization. The two-point function's scaling behavior:

```
⟨φ(x)φ(0)⟩ ∼ |x|^{-2Δ_φ},   Δ_φ = d/2 − 1 + γ_φ
```

where Δ_φ is the full scaling dimension (classical dimension + anomalous correction). In φ⁴ theory at one loop in d = 4 − ε:

```
γ_φ = (g²)/(12·(4π)⁴) = (g²)/(3072π⁴)    [Archimedean, MS scheme]
```

**π appears to the fourth power** — four separate factors: one from the angular integration (solid angle in 4D), two from Fourier normalizations (2π)⁻⁴, and one from the Euclidean measure.

Anomalous dimensions are measured indirectly via critical exponents (η = 2γ_φ at the Wilson-Fisher fixed point) and directly via the operator product expansion coefficients in lattice simulations.

---

## 2. The p-Adic OPE Structural Difference

### 2.1 The OPE in ℝ vs. ℚ_p

The Archimedean OPE expands a product of operators as a sum over local operators weighted by coefficient functions C(x):

```
φ(x)φ(0) = ∑_O C_O(x) O(0)
```

where C_O(x) ∼ |x|^{Δ_O − 2Δ_φ} in the short-distance limit. The exponent involves scaling dimensions, which include anomalous contributions.

In ℚ_p, the short-distance limit is fundamentally different:
- "Short distance" means |x|_p is small in the p-adic norm — i.e., x is highly divisible by p (many powers of p in numerator)
- The scaling is discrete: |x|_p = p^{-ord_p(x)} takes discrete values p, p², p³, ...
- The coefficient functions C_O(x) are **locally constant** on the p-adic balls (radius p^{-n}), not continuous

### 2.2 The One-Loop Integral

The Archimedean calculation involves the dimensionally regularized Euclidean integral:

```
γ_φ = (g²/2) × ∫ d⁴k/(2π)⁴ · 1/[(k² + m²)((p−k)² + m²)]
```

After Feynman parameterization and momentum integration:

```
γ_φ ∝ g² × ∫₀¹ dx ∫ d⁴k_E/(2π)⁴ · 1/[k²_E + Δ]²
```

The 4D Euclidean volume element gives **π²** (from Ω₄ = 2π² for the 4-sphere):
```
∫ d⁴k_E = 2π² ∫₀^∞ k³ dk
```

The remaining integral ∫₀^∞ k³/(k²+Δ)² dk → log divergence → 1/ε in dimensional regularization.

**In ℚ_p:** The momentum integration uses Haar measure on ℚ_p⁴ with no π. The "4-sphere" is a clopen set with rational measure:

```
μ({|k|_p = p^n}) = p^{4n} (1 − p^{−4})
```

The unit sphere measure is (1 − p^{−4}) = (p⁴−1)/p⁴ — a rational function of p, not 2π².

### 2.3 The π⁴ Cascade

| Source | Archimedean | p-adic |
|:---|:---|:---|
| Fourier normalization | (2π)^{−4} → π^{−4} | Haar measure → 1 (no π) |
| 4D solid angle | Ω₄ = 2π² | (1−p^{−4}) — rational |
| Euclidean measure | 2π² ∫ k³ dk | ∑ p^{4n}(1−p^{−4}) |
| **Total π factor** | π^{−4} × 2π² = 2/π² | No π — rational function of p |

The Archimedean result γ_φ ∝ g²/π² after all factors combine. The p-adic computation produces a p-dependent rational coefficient:

```
γ_φ,p = g_p² × f(p)    where f(p) is a rational function of p
```

## 3. Product Formula Constraint

If γ_φ is an adelic quantity (γ_φ,∞, γ_φ,2, γ_φ,3, ...), then:

```
|γ_φ,∞|_∞ × ∏_p |γ_φ,p|_p = 1
```

For small couplings where γ_φ,∞ ≪ 1 (γ_φ ∼ 10^{−4} in perturbative φ⁴), the product formula requires some |γ_φ,p|_p > 1 — these p-adic anomalous dimensions must be p-adically large (have denominator powers of p). The primes where this happens are the "active primes" for anomalous scaling.

## 4. Falsifiability

Anomalous dimensions are indirectly measurable via critical exponents from lattice simulations (η = 2γ_φ at WF fixed point). If p-adic lattice simulations (hierarchical models on Bruhat-Tits trees) produce η_p, then:

- η_p = η_∞ = 0.0363 → completion-independent → γ_φ is cosmetic
- η_p ≠ η_∞ → completion-dependent → non-cosmetic

Missarov (1989) computed exponents for the p-adic φ⁴ hierarchical model — they differ O(1) from 3D Ising exponents (see B3 artifact). The anomalous dimensions follow the same pattern.

---

## 5. References

- Missarov, M. D. (1989). p-adic φ⁴ theory. *Theor. Math. Phys.* 79, 601-608.
- Vladimirov, Volovich, Zelenov (1994): *p-adic Analysis and Mathematical Physics*, Ch. 7.
- Collins, J. C. (1984). *Renormalization*, Ch. 3 (OPE formulation).
- Zinn-Justin, J. (2002). *Quantum Field Theory and Critical Phenomena*.

### QNFO Internal
- `artifacts/critical-exponents-p-adic-phi4.md` (B3) — sibling artifact
- `artifacts/p-adic-feynman-propagator.md` (B1) — propagator analysis
- `artifacts/adelic-infinity-analysis.md` — product formula, asymptote

---

*Document status: EXECUTED | Key findings: (1) γ_φ,∞ ∝ g²/π²; γ_φ,p ∝ g_p² × f(p) where f(p) is a rational function; (2) 4 independent π sources in the Archimedean computation — all replaced by rational p-adic factors; (3) for small γ_φ,∞, product formula forces |γ_φ,p|_p > 1 at some primes; (4) η_p ≠ η_∞ if Missarov (B3) exponents differ; (5) indirectly testable via lattice/p-adic φ⁴ fixed-point dimensions.*
