% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/buildReferenceFromHarmonyObj.R
\name{buildReferenceFromHarmonyObj}
\alias{buildReferenceFromHarmonyObj}
\title{Function for building a Symphony reference from a Harmony object. Useful if you would like your
code to be more modular. Note that you must have saved vargenes_means_sds and PCA loadings.}
\usage{
buildReferenceFromHarmonyObj(
  harmony_obj,
  metadata,
  vargenes_means_sds,
  pca_loadings,
  verbose = TRUE,
  do_umap = TRUE,
  save_uwot_path = NULL,
  seed = 111,
  ...
)
}
\arguments{
\item{harmony_obj}{Harmony object (output from HarmonyMatrix())}

\item{metadata}{Reference cell metadata (cells by attributes)}

\item{vargenes_means_sds}{Variable genes in dataframe with columns named ('symbol', 'mean', 'stddev')}

\item{pca_loadings}{Gene loadings from PCA (e.g. irlba(ref_exp_scaled, nv = 20)$u)}

\item{verbose}{Verbose output}

\item{do_umap}{Perform UMAP visualization on harmonized reference embedding}

\item{save_uwot_path}{Absolute path to save the uwot model (if do_umap is TRUE)}

\item{seed}{Random seed}

\item{...}{UMAP parameters (see uwot::umap documentation for details)}
}
\value{
Symphony reference object. Integrated embedding is stored in the $Z_corr slot. Other slots include
cell-level metadata ($meta_data), variable genes means and standard deviations ($vargenes),
loadings from PCA or other dimensional reduction such as CCA ($loadings), original PCA embedding ($Z_orig),
reference compression terms ($cache), betas from Harmony integration ($betas), cosine-normalized soft cluster centroids ($centroids),
centroids in PC space ($centroids_pc), and optional umap coordinates ($umap$embedding).
}
\description{
Function for building a Symphony reference from a Harmony object. Useful if you would like your
code to be more modular. Note that you must have saved vargenes_means_sds and PCA loadings.
}
