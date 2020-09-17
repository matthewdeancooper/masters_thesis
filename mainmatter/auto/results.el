(TeX-add-style-hook
 "results"
 (lambda ()
   (TeX-run-style-hooks
    "tables/loss_prostate"
    "tables/loss_vet"
    "tables/metrics")
   (LaTeX-add-labels
    "ch:results"
    "fig:prostate_metrics"
    "fig:prostate_patient"
    "fig:prostate_bladder"
    "fig:prostate_BCE_bladder"
    "fig:prostate_rectum"
    "fig:vet_metrics"
    "fig:vet_vacbag"))
 :latex)

