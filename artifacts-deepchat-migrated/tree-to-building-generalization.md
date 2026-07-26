# C1-RT.3 — Tree-to-Building Generalization: From PGL(2) to PGL(n)

> **Phase 3 — Causal Structure Development | Bruhat-Tits / p-adic AdS/CFT Pipeline**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 3
> Cross-refs: `padic-adscft-mellin-amplitudes.md` (C1-RT.2), `causality-redteam-full-analysis.md` (C1-RT)

---

## 1. Why PGL(2) Is Not Enough

The Bruhat-Tits tree T_p = PGL(2, ℚ_p)/PGL(2, ℤ_p) is the p-adic analog of 2-dimensional hyperbolic space H². This gives:
- One "spatial" dimension (tree geodesic direction)
- Plus the boundary ℙ¹(ℚ_p) — a p-adic 1-sphere

For physics in 3+1 dimensions, we need higher-dimensional p-adic geometries. The generalization from trees (PGL(2)) to buildings (PGL(n)) provides the analog of higher-dimensional AdS spaces.

---

## 2. Euclidean Buildings for PGL(n, ℚ_p)

A Euclidean building Δ_n for PGL(n, ℚ_p) is a simplicial complex of dimension n−1 with:
- Apartments: (n−1)-dimensional Euclidean spaces (tiled by simplices)
- Chambers: maximal simplices
- Weyl group action: S_n (symmetric group) acting on apartments
- PGL(n, ℚ_p) acts transitively on chambers

**For n = 3:** Δ_3 is a 2-dimensional building — the p-adic analog of 3D hyperbolic space H³. Chambers are triangles; apartments are Euclidean planes tiled by triangles. PGL(3, ℚ_p) acts by building automorphisms.

**For n = 4:** Δ_4 is a 3-dimensional building — the p-adic analog of 4D hyperbolic space H⁴. Relevant for AdS₄/CFT₃ correspondence.

---

## 3. What Generalizes

| Concept | PGL(2) (Tree) | PGL(n) (Building) | n = 4 |
|:---|:---|:---|:---|
| Geometry | T_p = (p+1)-regular tree | Δ_n = simplicial complex, dim n−1 | 3D building |
| "Bulk" points | Tree vertices v | Chamber vertices (maximal simplices) | 3D simplicial vertices |
| "Boundary" | ∂T_p = ℙ¹(ℚ_p) | Flag variety PGL(n)/B | All partial flags |
| Isometries | PGL(2, ℚ_p) — tree automorphisms | PGL(n, ℚ_p) — building automorphisms | PGL(4, ℚ_p) |
| Distance | d(v,w) = # edges | Gallery distance through chambers | Minimal chamber path |
| Propagator | p^{-Δ·d(v,[ξ])} | p^{-Δ·d(v, flag)} | Multi-parameter scaling |
| Mellin variables | (s,t) — 2 variables | (s_1,...,s_{n−1}) — n−1 variables | 3 s-variables |
| Operator spectrum | Integer-spaced Δs = 2 | Integer-spaced in each s_i | Builds operator multiplets |

---

## 4. The Partial Order — Replacing "Time"

A critical structural fact: buildings possess a **partial order** from the Bruhat decomposition. For two flags F₁, F₂:
```
F₁ ≤ F₂  iff  their relative position is in the closure of a Bruhat cell
```

This partial order is:
- NOT a total order (still).
- Reflexive, antisymmetric, transitive.
- Encodes the "causal" relation on the building boundary — two boundary points are "causally related" if they lie in a partial-order chain.

**This is the structural replacement for time ordering.** In the tree (PGL(2)), the partial order reduces to the geodesic betweenness relation. In buildings (n ≥ 3), it encodes a richer, multi-dimensional causal structure.

---

## 5. Computational Targets for n = 3, 4

### n = 3 (PGL(3, ℚ_p), 2D building)
- Chamber-walk Green's function: propagator from boundary flag to bulk chamber
- 4-point Mellin amplitude A_p^{(3)}(s₁,s₂) with 2 Mellin variables
- Pole structure: DOUBLY integer-spaced — Δs₁, Δs₂ ∈ 2ℤ

### n = 4 (PGL(4, ℚ_p), 3D building)
- Relevant for the physical spacetime analog (AdS₄-like)
- 4-point amplitude A_p^{(4)}(s₁,s₂,s₃) — three Mellin variables
- Operator multiplet spectrum from building representation theory

---

## 6. Relationship to the Product Formula

As the dimension n increases, the number of Mellin variables grows. For the full adelic S-matrix (C1-RT.4), the pole structure at each place must be compatible with the product formula:

```
A_∞^{(n)}(s) × ∏_p A_p^{(n)}(s) = 1    [adelic constraint at rational s]
```

The building dimension n controls how many free variables (s_i) must satisfy this constraint simultaneously.

---

## 7. Implementation Notes

| Task | Complexity | Deliverable |
|:---|:---|:---|
| Chamber-walk distance algorithm | Medium | Python: p-adic building distances |
| Minkowski functionals for PGL(3) | High | Analytic formula for propagator on Δ_3 |
| Partial-order chains | Medium | Causal structure extraction |
| Integration/summation over chambers | High | Analog of ∫d^dx in AdS |

---

## 8. Status

**Priority 3A** — continuation of C1-RT.2 pipeline. The PGL(2)→PGL(3)→PGL(4) generalization is the mathematical engine of the adelic S-matrix programme. This is the deepest purely mathematical work in the programme — it requires facility with Bruhat-Tits theory, representation theory of p-adic groups, and simplicial complex combinatorics far beyond the tree case.

---

## 9. References
- Garrett (1997): *Buildings and Classical Groups* — accessible introduction to p-adic buildings.
- Brown (1989): *Buildings* — standard reference.
- Tits (1974): "On buildings and their applications" — original construction.
- Cartier (1993): "Fonctions sphériques sur les immeubles" — spherical functions on buildings.

### QNFO Internal
- `artifacts/padic-adscft-mellin-amplitudes.md` (C1-RT.2) — PGL(2) tree computation
- `artifacts/causality-redteam-full-analysis.md` (C1-RT) — red-team verdict

---

*Document status: SPECIFIED — Generalization Protocol | Next: PGL(3) building implementation — chamber-walk Green's function*
