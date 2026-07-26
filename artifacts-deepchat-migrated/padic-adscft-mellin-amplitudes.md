# C1-RT.2 — p-Adic AdS/CFT Mellin Amplitudes: Computation Protocol for p=2,3,5

> **Phase 3 — Causal Structure Development | Bruhat-Tits / p-adic AdS/CFT Pipeline**
> Part of: *Completion Failures Under Ostrowski's Theorem*, Phase 3
> Cross-refs: `causality-redteam-full-analysis.md` (C1-RT), `s-matrix-structural-failure.md` (B5), `p-adic-feynman-propagator.md` (B1)

---

## 1. The Red-Team Verdict

The causality red-team (C1-RT) evaluated 4 frameworks for p-adic causal structure. The Bruhat-Tits / p-adic AdS/CFT framework received the highest score (4/5). This document specifies the Phase 3 computation pipeline that the red-team identified as the most promising constructive resolution.

**Why Mellin amplitudes?** In the standard AdS/CFT correspondence, the Mellin amplitude M(s,t) encodes the CFT correlator's analytic structure. The p-adic analog replaces the continuous AdS space (hyperbolic space Hⁿ) with the Bruhat-Tits tree T_p — the p-adic analog of hyperbolic space. The Mellin amplitude on T_p is the p-adic S-matrix element.

---

## 2. The Bruhat-Tits Tree — Quick Review

The Bruhat-Tits tree T_p for PGL(2, ℚ_p) is an infinite (p+1)-regular tree:
- Vertices correspond to homothety classes of ℤ_p-lattices in ℚ_p²
- Geodesics replace continuous paths
- The boundary ∂T_p = ℙ¹(ℚ_p) is the p-adic projective line — the "conformal boundary"
- PGL(2, ℚ_p) acts by tree automorphisms, the p-adic analog of AdS isometries

**Key difference from AdS:** The tree is discrete, not continuous. "Bulk" points are tree vertices; "boundary" points are ends of the tree.

---

## 3. The Mellin Amplitude A_p(s,t) — Definition

For a scalar field on the Bruhat-Tits tree with conformal dimension Δ, the boundary-to-bulk propagator at boundary point ξ ∈ ℙ¹(ℚ_p) and bulk vertex v ∈ T_p:

```
G(v, ξ; Δ) = p^{-Δ · d(v, [ξ])}
```

where d(v, [ξ]) is the tree distance from v to the geodesic from a reference vertex to ξ.

The 4-point Mellin amplitude A_p(s,t) on T_p is the tree-level Witten diagram:

```
A_p(s,t) = ∑_{v∈T_p} ∏_{i=1}^4 G(v, ξ_i; Δ_i)
```

where the Mellin variables (s,t) encode the scaling dimensions of the exchanged operators.

**Critical structural difference:** The sum is over discrete tree vertices — not a continuous integral over AdS. The amplitude is a **rational function of p** (not of continuous Mandelstam variables).

---

## 4. Computational Protocol for p = 2, 3, 5

### Step 1 — Tree Structure
For p = 2: T_2 is a 3-regular tree (each vertex has 3 neighbors)
For p = 3: T_3 is a 4-regular tree
For p = 5: T_5 is a 6-regular tree

### Step 2 — Boundary-to-Bulk Propagator
For external operators with dimensions Δ_1,...,Δ_4:
```
G(v, ξ_i; Δ_i) = p^{-Δ_i · d(v, [ξ_i])}
```
The tree distance d(v, [ξ_i]) is an integer — the number of edges. This makes the propagator piecewise constant on tree shells.

### Step 3 — Vertex Sum
The sum over tree vertices v ∈ T_p is a discrete analog of the AdS bulk integral. For the contact diagram (4-point Witten diagram without exchanged particle):

```
A_p^{(contact)}(s,t) = ∑_{v∈T_p} ∏_{i=1}^4 p^{-Δ_i · d(v, [ξ_i])}
```

This sum converges (geometric series in p^{-ΣΔ_i}) when ΣΔ_i > 0 — which holds for all unitary CFT operators (Δ > 0).

### Step 4 — Pole Structure Extraction
The p-adic Mellin amplitude has poles at:
```
s = ΣΔ_i - 2n    [n = 0, 1, 2, ...]
```
for the n-th exchanged operator in the s-channel OPE. These are **integer-spaced** poles — a direct consequence of the discrete tree structure.

**Compare:** Archimedean AdS/CFT has continuous poles at s = ΣΔ_i - 2n + γ(g) where γ(g) is the anomalous dimension (continuous, running with coupling). The p-adic tree gives integer-spaced poles with NO anomalous dimension contribution — the tree structure prevents continuous RG running.

### Step 5 — p-Dependence
For p = 2, 3, 5:

| p | Tree degree | Propagator base | Pole spacing | Notes |
|:---|:---|:---|:---|:---|
| 2 | 3-regular | 2^{-Δ·d} | Δs = 2 | Smallest p, strongest discreteness |
| 3 | 4-regular | 3^{-Δ·d} | Δs = 2 | Intermediate |
| 5 | 6-regular | 5^{-Δ·d} | Δs = 2 | Larger p, tree approaches continuum |

**The p → ∞ limit does NOT recover the Archimedean AdS/CFT.** The tree is fundamentally discrete for every p; there is no continuous limit. The Archimedean and p-adic structures are different mathematical objects, not limits of each other.

---

## 5. Product Formula Constraint on Amplitudes

If the Mellin amplitude is an adelic object:

```
A(s,t) = (A_∞(s,t), A_2(s,t), A_3(s,t), A_5(s,t), ...) ∈ A_ℚ
```

For rational s,t values (the only case where the product formula is well-defined):

```
|A_∞(s,t)|_∞ × ∏_p |A_p(s,t)|_p = 1
```

**Physical implication:** The Archimedean S-matrix pole positions (continuous, anomalous-dimension-shifted) and the p-adic pole positions (integer-spaced, no anomalous dimension) must satisfy the product formula for physically realized external momenta. This creates a **falsifiable cross-place constraint** — if the p-adic poles don't match the Archimedean ones via the product formula, the adelic S-matrix hypothesis is falsified.

---

## 6. Implementation Requirements

### Computational
- Tree traversal for T_p: vertices indexed by distance from reference vertex
- Propagator evaluation: integer distance computation, p-adic exponential decay
- Vertex sum convergence: geometric series cutoff at ∑_{d=0}^{D_max} for error ε
- Output: Meromorphic function A_p(s,t) with explicit pole structure

### Mathematical
- Verify the Mellin amplitude has OPE factorization on T_p
- Extract the operator spectrum (pole positions × residues)
- Compare integer-spaced tree spectrum to continuous AdS spectrum

### Deliverable Format
- Numerical values: A_p(s,t) at sample (s,t) for p = 2,3,5
- Analytic structure: pole positions, residues, Regge behavior
- Cross-p comparison: how A_p differs between p=2,3,5

---

## 7. Status

**Priority 3A** per C1-RT verdict. This is the most mathematically intensive computation in the entire programme. Implementation requires:
- Python: tree traversal, vertex sums, convergence control (write as _adelic_mellin.py)
- Expected output: A_2(s,t), A_3(s,t), A_5(s,t) numerical tables + analytic pole structure

---

## 8. References
- Gubser, Klebanov, Polyakov (1998): "Gauge theory correlators from non-critical string theory" — AdS/CFT original.
- Penedones (2011): "Writing CFT correlation functions as AdS scattering amplitudes" — Mellin amplitude formulation.
- Serre (1980): *Trees* — Bruhat-Tits tree, standard mathematical reference.
- Zabrodin (1989): "Non-Archimedean strings and Bruhat-Tits trees."
- Chekhov, Mironov, Zabrodin (1990): p-adic string amplitudes.

### QNFO Internal
- `artifacts/causality-redteam-full-analysis.md` (C1-RT)
- `artifacts/s-matrix-structural-failure.md` (B5)
- `artifacts/p-adic-feynman-propagator.md` (B1)

---

*Document status: SPECIFIED — Computation Protocol | Next: Python implementation of tree traversal + Mellin amplitude computation for p=2,3,5*
