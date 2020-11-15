# Clinical application of deep learning: <br> Automatic contouring via U-Net architecture

A compiled pdf is available: `masters_thesis/main.pdf`

A video overview of the clinical implementation is available:
[docs.pymedphys/com/background/autocontouring](https://docs.pymedphys.com/background/autocontouring.html)

This thesis is a living document; therefore, grammatical errors and mistakes
have become more likely than when originally submitted. Please feel free to
raise an issue if you observe anything that requires attention.

## Abstract

**Introduction:** Accurate contouring is a critical aspect of safe and effective
treatment delivery in radiotherapy (RT). Current limitations in clinical
practice include large intra and inter-observer variances (IOV), as well as time
delays in both contour generation and correction. Additionally, the AAPM TG275
risk assessment recommendations highlight multiple human-factor failure modes in
RT. An automated contour quality assurance (QA) review has the potential to
manage some prominent hazards identified by the task group. This study designed
and evaluated a 2D U-Net architecture with two primary aims: 1) Develop a pelvic
imaging quality QA tool for use in RT, comparing model predictions with expert
contours to identify macro contouring errors. 2) Automate vacuum bag
segmentation for canine RT.

**Methods:** This study presents two independently trained models and assesses the
performance of common semantic segmentation loss functions in each case. The
original U-Net architecture developed by Ronneberger et al. was expanded by
integrating recent network modifications that indicated improved performance in
the literature. In addition to reporting dice similarity coefficients (DSC),
organ-specific tolerances (representative of expert IOV) are utilised for
bladder and rectum contouring to quantify Nikolov et al.'s surface dice
similarity coefficient (sDSC) - reported to have a stronger correlation with
contour correction time than traditional metrics. The pelvic
imaging dataset consisted of 15 patients undergoing RT for prostate cancer, and
was split into training, validation, and testing subsets of 12, 2, and 1,
respectively. The canine imaging dataset included 26 patients selected from
varied RT treatment groups, split into subsets of 21, 3, and 2, respectively.

**Results:**<sup>1</sup> Three contours were produced from pelvic CT: Patient contours were
measured with DSC 0.998(0.001), bladder contours with DSC 0.9(0.2) and sDSC
0.9(0.2), and rectum contours with DSC 0.7(0.1) and sDSC 0.9(0.1). Vacuum bag
contours from canine CT were measured with DSC 0.952(0.001). Weighted DSC was
the only loss function that optimised for all organs considered in pelvic
imaging - due to a significant pixel-wise class imbalance between structures.

**Conclusion:** Patient contours did not deviate outside of tolerances and are
viable for use within the QA tool in their current form. Bladder and rectum
segmentation may improve with a broader dataset. Additionally, a 3D model may
provide axial context to improve segmentation on rectal regions containing gas.
In its current implementation, the surface dice similarity coefficient accepts
only binary input data; hence, gradients are not defined when used as a cost
function. Developing a soft surrogate may allow for the direct optimisation of
this metric. The canine imaging model was successfully deployed to clinic under
a prototype warning that requested manual verification before use. Preliminary
acceptance testing has shown a performance improvement of approximately 30
minutes per patient. It is currently being utilised on all new canine patients
undergoing RT.

---
1. Notation: x̄(σ) corresponds to a measurement with mean value x̄ and standard deviation σ.

## BibTex entry
    @mastersthesis{Cooper2020,
      author  = "Matthew Cooper",
      title   = "Clinical application of deep learning: Automatic contouring via U-Net architecture",
      school  = "Institute of Medical Physics, The University of Sydney",
      year    = 2020,
      address = "Camperdown, NSW",
      month   = Jul
    }
