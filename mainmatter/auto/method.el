(TeX-add-style-hook
 "method"
 (lambda ()
   (TeX-run-style-hooks
    "./tables/data_prostate"
    "./tables/data_vet")
   (LaTeX-add-labels
    "ch:method"
    "ch:method-dataset"
    "fig:augment"
    "ch:method-architecture"
    "fig:model"
    "fig:pdd"))
 :latex)

