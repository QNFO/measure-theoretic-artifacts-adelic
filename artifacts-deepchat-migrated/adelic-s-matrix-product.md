# C1-RT.4 — Adelic S-Matrix Product: ⊗'_p S_p Construction

> **Phase 3 — Causal Structure Development | Bruhat-Tits / p-adic AdS/CFT Pipeline**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 3
> Cross-refs: `padic-adscft-mellin-amplitudes.md` (C1-RT.2), `tree-to-building-generalization.md` (C1-RT.3), `s-matrix-structural-failure.md` (B5)

---

## 1. The Adelic S-Matrix — Concept

If each Ostrowski place v produces its own S-matrix element S_v (encoding the scattering amplitude at that completion), the adelic S-matrix is the restricted tensor product:

```
S_A = ⊗'_v S_v
```

where the restricted direct product condition ensures that for all but finitely many places, S_v is trivial (the identity operator). This is the same structure as the adele ring itself — local finiteness enforced by algebraic constraints, not convergence limits.

---

## 2. Construction Protocol

### Step 1 — Local S-Matrices

For each place v:
- **v = ∞ (Archimedean):** Standard QFT S-matrix S_∞ = 1 + iT, with T computed from Feynman diagrams, LSZ reduction, iε prescription.
- **v = p (p-adic):** S_p constructed from p-adic Mellin amplitudes A_p(s,t) on Bruhat-Tits buildings (C1-RT.2, C1-RT.3). The p-adic S-matrix has integer-spaced poles (no anomalous dimensions).

### Step 2 — Restricted Product Condition

An adelic S-matrix element is a tuple:

```
S_A = (S_∞, S_2, S_3, S_5, ...)
```

subject to: for all but finitely many primes p, S_p = 1 (the trivial identity operator). This means only a finite set S of "active primes" have non-trivial S_p.

**Physical interpretation:** For asymptotically free theories, coupling constants run to zero (g_p → 0 as energy → ∞). The p-adic S-matrix approaches the identity for most primes — the active primes S are the same primes that appear in the product formula constraints (D2). [speculative — consistency with the adelic framework requires this, but it has not been computed]

### Step 3 — Product Formula Factorization

For the adelic S-matrix norm-1 idèle condition:

```
|S_∞|_∞ × ∏_p |S_p|_p = 1
```

For individual (helicity, momentum, particle species)-labeled S-matrix elements at rational Mandelstam variables s,t ∈ ℚ:

```
|M_∞(s,t)|_∞ × ∏_p |M_p(s,t)|_p = 1
```

---

## 3. The Active Prime Set S

From the constraint engine (D2) and product formula analysis, the most likely active primes are {2, 3, 5} — the smallest primes, with the strongest deviations from unity:

| Prime | Physical Role | Evidence |
|:---|:---|:---|
| 2 | Strongest p-adic effects (r_2 = 1/2 — smallest exp_p domain) | All Tier 1-3 artifacts |
| 3 | Intermediate — p-adic QCD? | Missarov φ⁴ exponents differ most at p=2,3 |
| 5 | Largest "small prime" — near-Archemedean behavior | r_5 ≈ 0.669 — largest exp_p domain among small primes |

**Conjecture:** S = {2, 3, 5} are the only primes with non-trivial p-adic S-matrix elements. The product formula constraint then reduces to checking:

```
|M_∞|_∞ × |M_2|_2 × |M_3|_3 × |M_5|_5 = 1
```

for all physically allowed (s,t) values. [my conjecture — the active prime set is the single most falsifiable claim about the adelic S-matrix]

---

## 4. Convergence of the Adelic Product

For principal adeles (rational S-matrix elements), the product formula is locally finite — |M_p|_p = 1 for all p ∉ S. The adelic product:

```
∏_p S_p
```

converges in the restricted direct product topology: for each element, only finitely many components deviate from identity. This is not an analytic convergence (no ε–N argument) — it's a structural finiteness enforced by rationality.

**If S-matrix elements are genuine principal adeles** (rational-valued at rational momenta), the adelic product is finite. **If they are non-principal** (transcendental-valued), the convergence question is open — the same gap identified in the product formula constraint engine (§2.5). [programme gap — unresolved]

---

## 5. Falsifiability — The Strongest Phase 3 Test

If S = {2, 3, 5} are the only active primes, then for a specific physical process P at rational Mandelstam variables (s,t) ∈ ℚ:

```
M_∞(s,t) — computed from standard QFT
M_2(s,t) — computed from C1-RT.2 tree Mellin amplitude (rational)
M_3(s,t) — same, p=3
M_5(s,t) — same, p=5
```

The adelic S-matrix hypothesis predicts:
```
M_∞(s,t) × M_2(s,t) × M_3(s,t) × M_5(s,t) = 1    [up to idèle norm N]
```

**Failure to satisfy this for ANY process P falsifies either:**
1. The S = {2,3,5} active prime conjecture
2. The principal (or norm-N) adele hypothesis for the S-matrix
3. The p-adic AdS/CFT computation (C1-RT.2)

---

## 6. Comparison to Standard S-Matrix Theory

| Property | Archimedean S-Matrix | Adelic S-Matrix |
|:---|:---|:---|
| Unitarity | S^†S = 1 on Hilbert space | Tree-unitarity on p-adic building — different notion |
| Analyticity | Meromorphic in s,t (real/complex) | Meromorphic in p-adic sense (Krasner-analytic on ℂ_p) |
| Crossing symmetry | s ↔ t ↔ u crossing relations | p-adic crossing — may differ (no continuous rotation of external legs) |
| Factorization | OPE → pole factorization in s-channel | Building OPE → chamber factorization |
| LSZ reduction | Essential | Does not exist p-adically (B5) — adelic S-matrix must be constructed from Mellin amplitudes directly |
| Optical theorem | Im M(s,0) ∝ σ_tot | No p-adic optical theorem known |

---

## 7. Status

**Priority 3A** — final assembly step of Phase 3 pipeline. Depends on C1-RT.2 (individual A_p) and C1-RT.3 (building generalization for n > 2). The restricted product is mathematically well-defined; the computational challenge is computing the individual A_p(s,t) with sufficient precision to test the adelic product.

---

## 8. References
- Gelbart (1984): "An elementary introduction to the Langlands program" — adelic representation theory.
- Tate (1950): "Fourier analysis in number fields and Hecke's zeta-functions" — adele ring, restricted direct product.
- Weil (1967): *Basic Number Theory* — adeles and idèles.
- Penedones (2011): Mellin amplitudes for AdS/CFT.

### QNFO Internal
- `artifacts/s-matrix-structural-failure.md` (B5) — which S-matrix features survive p-adically
- `artifacts/padic-adscft-mellin-amplitudes.md` (C1-RT.2)
- `artifacts/tree-to-building-generalization.md` (C1-RT.3)
- `artifacts/product-formula-constraint-engine.md` (D2) — cross-place constraint

---

*Document status: SPECIFIED — Construction Protocol | Next: Assemble from C1-RT.2 (tree Mellin) + C1-RT.3 (building) into adelic product ⊗'_p S_p*
