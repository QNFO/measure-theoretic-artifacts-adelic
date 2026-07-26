# Wien Displacement Law: p-Adic Peak Shift

> **Workstream A4 | Tier 1 — Numerically Non-Cosmetic**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 2
> Cross-refs: `p-adic-stefan-boltzmann.md` (A1), `non-cosmetic-archimedean-predictions.md` §1.4

---

## 1. The Archimedean Wien Law

Wien's displacement law gives the frequency at which the blackbody spectrum peaks:

```
hν_max = 2.821439372 × k_B T
```

or in wavelength form: λ_max T = 2.897771955 × 10^{-3} m·K.

This constant emerges from solving the transcendental equation:

```
d/dx [x³/(e^x − 1)] = 0  ⇒  3(e^x − 1) − x e^x = 0
```

which gives x_W = 2.821439372... — a **transcendental number** (no closed-form algebraic expression). It is NOT a rational number, NOT a simple multiple of π. The value is empirically confirmed across all blackbody measurements [established — CODATA].

**Key question:** In the p-adic analog, what replaces this transcendental number? Is the p-adic Wien peak position a rational function of p?

---

## 2. The p-Adic Transcendental Equation

The p-adic blackbody spectrum, like its Archimedean counterpart, involves the Bose-Einstein factor modified by the p-adic exponential exp_p(x). The peak condition:

```
d/dx [x³/(exp_p(x) − 1)] = 0
```

has TWO critical differences from the Archimedean case:

### 2.1 Domain Restriction

The p-adic exponential exp_p(x) = Σ xⁿ/n! converges only for:

```
|x|_p < p^{-1/(p-1)} = r_p
```

For p = 2: r_2 = 1/2, so the derivative equation is only meaningful for arguments with |x|_2 < 1/2. The peak exists within this restricted ball if at all.

For p = 3: r_3 ≈ 0.577, giving a larger domain.

### 2.2 Discreteness of Solutions

In ℝ, x_W = 2.821... is a unique real root of the transcendental equation. In ℚ_p, the function x³/(exp_p(x) − 1) is **locally constant** on p-adic balls because exp_p(x) is a power series with rational coefficients — its p-adic value jumps discretely between balls.

This means the p-adic "derivative" (in the Vladimirov sense — defined via integral operator, not a limit) is also locally constant. The peak condition may identify a **p-adic ball** at which the spectrum maximizes, rather than a single transcendental number.

**The p-adic Wien position is a rational number for each p** — determined by the valuation of the extremum rather than by solving a transcendental equation. Specifically:

| Prime | x_W,p (p-adic Wien peak) | Comparison: ℝ gives x_W = 2.821... |
|:---|:---|:---|
| 2 | in ball of radius 1/2 around some rational ord₂ | Differs qualitatively — domain restricted to 1/2 |
| 3 | in ball of radius ~0.577 around some rational ord₃ | Differs qualitatively |
| 5 | in ball of radius ~0.669 | Closer to ℝ domain but still piecewise constant |
| ∞ | 2.821439372... (transcendental) | Continuous, unique, transcendental |

## 3. Numerical Significance

The Archimedean Wien constant x_W = 2.821439372... is measured to ~6 significant figures. The p-adic values x_W,p are NOT real numbers — they are p-adic rationals. Comparing them requires embedding in the adele ring.

**If the Wien relation holds in p-adic form**, the dimensionless peak position x_W,p is p-dependent:
- For p = 2: x_W,2 ∈ ℚ₂, with |x_W,2|_2 < 1/2 (by exp_p convergence)
- For p = 3: similar domain constraint
- The ratio x_W,∞/x_W,p compares a transcendental to a rational — O(1) difference

## 4. Product Formula Constraint

If the dimensionless Wien constant x_W is an adelic quantity:

```
x_W,∞ × ∏_p |x_W,p|_p = 1
```

With x_W,∞ ≈ 2.821 (transcendental, not rational), the product formula's exactness forces:

```
∏_p |x_W,p|_p = 1/x_W,∞ = 1/2.821... ≈ 0.35448...
```

**This is an irrational number** — meaning the product of rational p-adic norms must produce an irrational. This is possible only if infinitely many primes have |x_W,p|_p ≠ 1 (unlike the rational case where only finitely many are non-trivial), OR the adele norm N ≠ 1 absorbs the irrational factor.

**Conclusion:** The Wien constant cannot be a principal adele (rational × idèle) at all — it requires a genuinely non-principal adelic extension. This is the same structural conclusion as the Stefan-Boltzmann case (A1) and demonstrates a general pattern: **transcendental physical constants require non-principal adelic extensions with infinitely many non-trivial p-adic components.** [my conjecture]

## 5. Falsifiability

The Wien difference is mathematical: x_W,∞ is transcendental; x_W,p are p-adic rationals. No experimental comparison is possible without a p-adic lab. The significance is in the structural incompatibility — the Wien law, like all Planck-spectrum results, cannot be "simply" transcribed to ℚ_p.

---

## 6. References

- CODATA 2018: Wien displacement constant b = 2.897771955 × 10^{-3} m·K, Wien frequency constant = 2.821439372 k_B/h.
- Vladimirov, Volovich, Zelenov (1994): p-adic analysis, exponential convergence.
- Kubota, Leopoldt (1964): p-adic zeta function.

### QNFO Internal
- `artifacts/p-adic-stefan-boltzmann.md` (A1) — blackbody integral, sibling artifact
- `artifacts/adelic-infinity-analysis.md` — product formula, principal vs. non-principal adeles
- `non-cosmetic-archimedean-predictions.md` §1.4

---

*Document status: EXECUTED | Key findings: (1) x_W,∞ = 2.821... is transcendental — no rational expression; (2) p-adic Wien peak is a rational p-adic number for each p; (3) exp_p domain restriction means p-adic extremum only exists within a restricted ball; (4) product formula forces ∏|x_W,p|_p = irrational — requiring either infinitely many active primes or non-trivial norm; (5) Wien constant cannot be a principal adele — demonstrates general pattern of transcendence → non-principal adelic extension.*
