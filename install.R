# installation script for renkulab
install.packages(c("tidyverse", "keras", "pracma", "ggimage", "keras", "cvTools", "ggpubr", "forcats", "zip", "pals", "randomForest", "caret", "gridExtra"))
install.packages("https://cran.r-project.org/src/contrib/patchwork_1.2.0.tar.gz", source=NULL, repos = NULL)
BiocManager::install("EBImage", ask = FALSE)

reticulate::install_python()
Sys.setenv(RETICULATE_PYTHON = "/home/rstudio/.virtualenvs/r-tensorflow/bin/python")
tensorflow::install_tensorflow(method = "virtualenv", version = "2.13")

# Run before starting (after restart)
Sys.setenv(RETICULATE_PYTHON = "/home/rstudio/.virtualenvs/r-tensorflow/bin/python")
reticulate::use_virtualenv("r-tensorflow")
tensorflow::use_virtualenv("r-tensorflow")