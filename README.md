# SMA Tanaka-Style Stress–Strain Model  
Smooth Transformation Curves for Forward (A→M) and Reverse (M→A) Loading  
Author: **Shiva Mohajerani, Ph.D.**

---

## 📘 Overview
This repository provides a clean and modular MATLAB implementation of a **Tanaka-style shape memory alloy (SMA) constitutive model**, using smooth hyperbolic-tangent transitions to approximate transformation behavior.  
It supports:

- Forward transformation (Austenite → Martensite)
- Reverse transformation (Martensite → Austenite)
- Temperature-dependent Clausius–Clapeyron stress shifts
- Elastic contribution outside transformation region  
- Full stress–strain cycle plots

---

✅ REFERENCE 1 — Tanaka (1986)

Tanaka, K. (1986).
A Thermomechanical Sketch of Shape Memory Effect: One-Dimensional Tensile Behavior.
Res Mechanica, 18(3), 251–263.
https://sid.ir/paper/586962/en

Extended Explanation for README or docs/

Tanaka’s 1986 work provides the foundational formulation for smooth phase-transformation modeling in shape memory alloys. His model introduces the use of a hyperbolic tangent (tanh) function to describe the smooth transition between austenite and martensite during loading and unloading.

This reference directly supports:

The use of tanh-based transformation laws

Smooth forward (A→M) and reverse (M→A) curves

Temperature-dependent center stress (σ₀)

One-dimensional constitutive modeling

Your implementation of:

𝜖
=
𝑒
𝑡
𝑟
𝑎
𝑛
𝑠
2
tanh
⁡
(
𝛼
(
𝜎
−
𝜎
0
)
)
+
𝜎
𝐸
+
𝑒
𝑡
𝑟
𝑎
𝑛
𝑠
2
ϵ=
2
e
trans
	​

	​

tanh(α(σ−σ
0
	​

))+
E
σ
	​

+
2
e
trans
	​

	​


is exactly aligned with the Tanaka approach.
This citation justifies the mathematical form of your model.

✅ REFERENCE 2 — Ben Hatira & Saidane (2012)

Ben Hatira, F., & Saidane, K. (2012).
A Thermo-Mechanical Behavior Simulation of a NiTi Staple Used for the Correction of Idiopathic Scoliosis.
Journal of Biomaterials and Nanobiotechnology, 3, 61–69.
doi:10.4236/jbnb.2012.31008

Extended Explanation for README or docs/

This study models the thermo-mechanical behavior of NiTi shape memory staples used in scoliosis correction, using constitutive laws based on transformation temperatures, elastic moduli, and typical SMA behavior.

This reference supports:

The ranges of transformation temperatures (Ms, Mf, As, Af) for biomedical-grade NiTi

Typical values of elastic modulus (~70 GPa)

Transformation strain values (≈ 3–6%)

Use of temperature-dependent phase transformation modelling for NiTi in structural applications

The relevance of modeling SMA behavior in biomechanics and spinal correction systems

This paper is particularly appropriate for your GitHub repo if your goal is to show:

Real clinical applications of SMA modeling

Parameter validation for your temperature-dependent constitutive equations

The mechanical relevance of smooth forward/reverse transformation curves

✅ REFERENCE 3 — Costanza, Tata, Danaee (2025)

Costanza, G., Tata, M. E., & Danaee Barforooshi, S. (2025).
Phenomenological Modeling of Shape Memory Alloys: A Review of Macroscopic Approaches.
Micromachines, 16(11), 1300.
https://doi.org/10.3390/mi16111300

Extended Explanation (for README or docs)

This review provides a comprehensive summary of phenomenological SMA constitutive models, including:

Tanaka-type smooth-transition models

Brinson models

Liang-Rogers formulations

Boyd-Lagoudas thermodynamic models

Macroscopic hysteresis modeling strategies

It helps justify your modeling approach by showing that:

The tanh-based transformation functions used in your MATLAB model
are part of a well-established family of phenomenological SMA models.

The smooth hyperbolic-tangent structure is commonly used to obtain
computationally stable and differentiable forward/reverse transformations.

Your chosen parameters (E, e_trans, Clausius–Clapeyron slopes, transformation temperatures)
fall within typical ranges summarized across multiple studies.

This reference strengthens your project by connecting your implementation to
the broader state-of-the-art in SMA macroscopic modeling, especially for engineering and simulation applications.
