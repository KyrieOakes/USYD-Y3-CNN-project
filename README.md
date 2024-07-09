# Imaging 5
## Link
Report ：https://docs.google.com/document/d/143-QWvHKS3ejfjrExc1yq3VA4XbOtvQLcJOaIjns6yA/edit#heading=h.v1584spjd85g

CNN PPT: https://docs.google.com/presentation/d/1qBS5tr6SBqJHn0GCFVg6ux-tckvM_EO0fntgD00k7ug/edit#slide=id.g2dc7d51d19a_0_0

## Our project

Welcome to our project! 

We aim to train and evaluate the performance of a convolutional neural network in classifying cell images into gene expression clusters. Our project is framed around 3 key research questions:
1. What is the performance of a convolutional neural network classifier in classifying Biotechnology dataset cell images into cluster identities, using all clusters?
2. Does the performance of the CNN classifier increase with increasing training data size?
3. Are there any differences in the proportion of cell cluster predictions  using an CNN trained on the Biotechnology data, between random image samples from original, WT, and TgCRND8 coronal sections?

The corresponding Shiny app for our project is available at https://za3org-kayu7823-kayu7823.shinyapps.io/imaging_5_shiny_only/ \
Note: this Shiny app may initially take up to 5 minutes to load after periods of inactivity.
## Key project files
`report.qmd` is the Quarto document used to render the report based on saved results, and contains the main code in the appendix for references (which is not executed). 

`cnn_evaluation.qmd` contains the code for the project, and saves the results to .RData files. Executing the raw cross validation code is computationally intensive and will take a while without caching. The cache for this file is stored in the `cnn_evaluation_cache/` folder

`data/` folder contains the zipped processed data files and corresponding unzipped data folders. These should be automatically downloaded by `cnn_evaluation.qmd` if they are not already included.

`outputs/` folder contains zipped pre-trained models and saved .RData results for each of the main 3 research questions of our project.

`Modified Image Splitting Code/` contains the image splitting code used to split, preprocess, and obtain single cell images from the Xenium Output Bundles

`ui.R` contains the code for the Shiny app that is currently deployed

## Datasets
3 key datasets are used in our project
- `Biotechnology.zip` provided to us, which is a subset of the following dataset
- [Xenium Fresh Frozen Mouse Brain for Xenium Explorer Demo Tiny Subset](https://www.10xgenomics.com/datasets/fresh-frozen-mouse-brain-for-xenium-explorer-demo-1-standard)
- [Xenium In Situ Analysis of Alzheimer's Disease Mouse Model Brain Coronal Sections from One Hemisphere Over a Time Course](https://www.10xgenomics.com/datasets/xenium-in-situ-analysis-of-alzheimers-disease-mouse-model-brain-coronal-sections-from-one-hemisphere-over-a-time-course-1-standard)

These datasets will be automatically downloaded in the report if they are not included in the `data` folder. Datasets have been pre-processed using the modified `DATA3888_Biotechnology_generateImages_2024.Rmd` file.

## Dependencies
Using `tensorflow 2.13.*` is necessary to ensure the project will run. This can be installed by running the following command in the R console:
```r
tensorflow::install_tensorflow(method = "virtualenv", version = "2.13")
```
We recommend using R 4.4.0 with a Python 3.10 environment. Other dependencies have been listed in the relevant Quarto and R files.

## Acknowledgements
We acknowledge the DATA3888 teaching team for the invaluable assistance throughout this project, in particular our Imaging coordinators Bowin Cheong and Shila Ghazanfar. 

CNN and image processing code was adapted from Lab 4b.

Code was executed on [Renkulab](https://renkulab.io/) (2 CPUs, 8 GB memory, 8 GB storage, R-Bioconductor (3.17) template). 
`install.R` installs the relevant packages on Renkulab.

The Shiny app was deployed on [shinyapps.io](https://shinyapps.io/)
