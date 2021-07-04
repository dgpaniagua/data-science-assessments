library(tidyverse)

####Q3a
str(esoph)

####Q3b
all_cases <- sum(esoph$ncases)

####Q3c
all_controls <- sum(esoph$ncontrols)

####Q4a
sum(esoph$ncases[esoph$alcgp=="120+"]) / sum(esoph$ncontrols[esoph$alcgp=="120+"])

####Q4b
sum(esoph$ncases[esoph$alcgp=="0-39g/day"]) / sum(esoph$ncontrols[esoph$alcgp=="0-39g/day"])

####Q4c
(all_cases - sum(esoph$ncases[esoph$tobgp=="0-9g/day"])) / all_cases

####Q4d
(all_controls - sum(esoph$ncontrols[esoph$tobgp=="0-9g/day"])) / all_controls

####Q5a
sum(esoph$ncases[esoph$alcgp=="120+"]) / all_cases

####Q5b
sum(esoph$ncases[esoph$tobgp=="30+"]) / all_cases

####Q5c
sum(esoph$ncases[esoph$tobgp=="30+" & esoph$alcgp=="120+"]) / all_cases

####Q5d
sum(esoph$ncases[esoph$tobgp=="30+" | esoph$alcgp=="120+"]) / all_cases

####Q6a
sum(esoph$ncontrols[esoph$alcgp=="120+"]) / all_controls

####Q6b
(sum(esoph$ncases[esoph$alcgp=="120+"]) / all_cases) / (sum(esoph$ncontrols[esoph$alcgp=="120+"]) / all_controls)

####Q6c
sum(esoph$ncontrols[esoph$tobgp=="30+"]) / all_controls

####Q6d
sum(esoph$ncontrols[esoph$tobgp=="30+" & esoph$alcgp=="120+"]) / all_controls

####Q6e
sum(esoph$ncontrols[esoph$tobgp=="30+" | esoph$alcgp=="120+"]) / all_controls

####Q6f
(sum(esoph$ncases[esoph$tobgp=="30+" | esoph$alcgp=="120+"]) / all_cases) / (sum(esoph$ncontrols[esoph$tobgp=="30+" | esoph$alcgp=="120+"]) / all_controls)
