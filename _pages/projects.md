---
title: "Research Projects"
layout: archive
permalink: /projects/
author_profile: true

---

## Current work

### Selective inference

Inference on PCA does not account for selection of the embedding dimension on the basis of the eigenvalues (e.g. the elbow method), which leads to inflated false positive rates. We develop a selective inference approach to provide valid inference in such settings.

## Prior work

### Causal discovery from multi-environment data

Causal graphs are typically identifiable only up to an equivalence class under i.i.d. data. We prove non-parameteric identifiability from heterogeneous data with natural (unknown) distribution shifts if causal mechanism shfits are sparse.

- [[Paper](https://arxiv.org/abs/2206.02013), [code](https://github.com/rflperry/sparse_shift)] Ronan Perry, Julius von Kügelgen, and Bernhard Schölkopf. “Causal Discovery in Heterogeneous Environments under the Sparse Mechanism Shift Hypothesis”. In: Conference and Workshop on Neural Information Processing Systems (NeurIPS) (2022)

### Random forests

<!-- **Calibration: an empirical study and downstream applications** -->
Posterior probabilities from machine learning classifies are typically overconfidant. We study multiple calibration approaches to the random forest classifier across OpenML-CC18 datasets, in particular honest random forests for which we provide multiclass consistency guarantees and applications to high-dimensional hypothesis testing via mutual information estimation.

- [[Paper](https://arxiv.org/abs/1907.00325), [code](https://github.com/rflperry/ProgLearn/tree/UF/benchmarks/uf_experiments)] **Ronan Perry**, Ronak Mehta, Richard Guo, Eva Yezerets, Jesús Arroyo, Mike Powell, Hayden Helm, Cencheng Shen, and Joshua T Vogelstein. “Random Forests for Adaptive Nearest Neighbor Estimation of Information-Theoretic Quantities”. In: arXiv preprint arXiv:1907.00325 (2021).

- [[Package](https://github.com/neurodata/honest-forests)] A scikit-learn compliant Python package for honest random forests.

Although random forest classifiers are extremely successful for tabular data, they are not state of the art for structured data. We develop a random forest algorithm better-suited for such data as images and time series by using structured projections of features which take into account the data geometry.

 
<!--  **Extensions for structured data such as images and time series** -->
 
- [[Paper](https://arxiv.org/abs/1909.11799), [code](https://github.com/neurodata/SPORF/tree/structured)] Adam Li, **Ronan Perry**, Chester Huynh, Tyler M. Tomita, Ronak Mehta, Jesus Arroyo, Jesse Patsolic, Benjamin Falk, and Joshua T. Vogelstein. “Manifold Oblique Random Forests: Towards Closing the Gap on Convolutional Deep Networks”. In: SIAM Journal on Mathematics of Data Science (SIMODS) (2022).


### fMRI data analyses

Neuroscience collaborators wished to determine if there existed any differences between novice and expert meditators across meditation tasks and resting state. We provided (i) computationally efficient dimensionality reduction approaches via generalized CCA to reduce the spatial time series to interpretable spatial gradients (ii) high dimensional distance correlation hypothesis tests with novel permutation strategies to account for multilevel implicit dependencies between scans of the same subject.

<!-- **Dimensionality reduction and hypothesis testing** -->

- [[Poster](https://github.com/rflperry/rflperry.github.io/blob/master/files/ohbm2020_poster_rperry.pdf), [code](https://github.com/neurodata/meditation)] Organization for Human Brain Mapping (OHBM), 2020
- [[Talk](https://docs.google.com/presentation/d/1O5iyIBnDY2iTBMzJS9h0jSCjyFKd9wBkdYjLXCxhMHU/edit#slide=id.p)] Neuromatch 3.0, 2020
- [[Methods paper](https://arxiv.org/abs/1910.08883), [Github](https://github.com/neurodata/hyppo)] Sambit Panda, Cencheng Shen, **Ronan Perry**, Jelle Zorn, Antoine Lutz, Carey E Priebe, and Joshua T Vogelstein. “Nonpar MANOVA via Independence Testing”. In: arXiv preprint arXiv:1910.08883 (2021).

As part of this project, we realized there was no existing reliable code for the multiview methods we needed to use. So, we developed an open-source Python package for multiview machine learning methods, featuring a unified API and easy integration with scikit-learn.

<!-- **Open source software** -->

- [[Paper](https://www.jmlr.org/papers/v22/20-1370.html), [Webpage](https://mvlearn.github.io/index.html), [Github](https://github.com/NeuroDataDesign/multiview)] **Ronan Perry**, Gavin Mischler, Richard Guo, Theodore Lee, Alexander Chang, Arman Koul, Cameron Franz, Hugo Richard, Iain Carmichael, Pierre Ablin, et al. “mvlearn: Multiview Machine Learning in Python”. In: Journal of Machine Learning Research 22.109 (2021), pp. 1–7.

### University projects

Also, check out some of the [interesting projects](https://rflperry.github.io/projects/university/) completed as part of my university classes.


