% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lasso.R
\name{lasso_vars}
\alias{lasso_vars}
\title{Most Relevant Features Using Lasso Regression}
\usage{
lasso_vars(
  df,
  variable,
  ignore = NA,
  nlambdas = 100,
  nfolds = 10,
  seed = 123,
  ...
)
}
\arguments{
\item{df}{Dataframe. Any dataframe is valid as `ohse` will be applied to
process categorical values, and values will be standardize automatically.}

\item{variable}{Variable.}

\item{ignore}{Character vector. Variables to exclude from study.}

\item{nlambdas}{Integer. Number of lambdas to be used in a search.}

\item{nfolds}{Integer. Number of folds for K-fold cross-validation (>= 2).}

\item{seed}{Numeric.}

\item{...}{ohse parameters.}
}
\description{
Use Lasso regression to identify the most relevant variables that 
can predict/identify another variable. You might want to compare 
with corr_var() results to compliment the analysis No need to
standardize, center or scale your data. Tidyverse friendly.
}
\examples{
options("lares.font" = NA) # Temporal
data(dft) # Titanic dataset

m <- lasso_vars(dft, Survived, ignore = c("Cabin"))
print(m$coef)
print(m$metrics)
m$plot
}
\seealso{
Other Machine Learning: 
\code{\link{ROC}()},
\code{\link{clusterKmeans}()},
\code{\link{conf_mat}()},
\code{\link{export_results}()},
\code{\link{gain_lift}()},
\code{\link{h2o_automl}()},
\code{\link{h2o_predict_API}()},
\code{\link{h2o_predict_MOJO}()},
\code{\link{h2o_predict_binary}()},
\code{\link{h2o_predict_model}()},
\code{\link{h2o_results}()},
\code{\link{h2o_selectmodel}()},
\code{\link{impute}()},
\code{\link{iter_seeds}()},
\code{\link{model_metrics}()},
\code{\link{msplit}()}

Other Exploratory: 
\code{\link{corr_cross}()},
\code{\link{corr_var}()},
\code{\link{crosstab}()},
\code{\link{df_str}()},
\code{\link{distr}()},
\code{\link{freqs_df}()},
\code{\link{freqs_list}()},
\code{\link{freqs_plot}()},
\code{\link{freqs}()},
\code{\link{missingness}()},
\code{\link{plot_cats}()},
\code{\link{plot_df}()},
\code{\link{plot_nums}()},
\code{\link{summer}()},
\code{\link{tree_var}()},
\code{\link{trendsRelated}()}
}
\concept{Exploratory}
\concept{Machine Learning}
