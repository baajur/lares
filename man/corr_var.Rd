% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlations.R
\name{corr_var}
\alias{corr_var}
\title{Correlation between variable and dataframe}
\usage{
corr_var(
  df,
  var,
  ignore = NA,
  method = "pearson",
  trim = 0,
  clean = FALSE,
  plot = TRUE,
  logs = FALSE,
  dates = TRUE,
  top = NA,
  ceiling = 100,
  max_pvalue = 1,
  limit = 10,
  zeroes = FALSE,
  save = FALSE,
  subdir = NA,
  file_name = "viz_corrvar.png"
)
}
\arguments{
\item{df}{Dataframe.}

\item{var}{Variable. Name of the variable to correlate}

\item{ignore}{Character vector. Which columns do you wish to exlude?}

\item{method}{Character. Any of: c("pearson", "kendall", "spearman")}

\item{trim}{Integer. Trim words until the nth character for 
categorical values (applies for both, target and values)}

\item{clean}{Boolean. Use lares::cleanText for categorical values (applies 
for both, target and values)}

\item{plot}{Boolean. Do you wish to plot the result? If set to TRUE, the
function will return only the plot and not the result's data}

\item{logs}{Boolean. Automatically calculate log(values) for numerical
variables (not binaries)}

\item{dates}{Boolean. Do you want the function to create more features
out of the date/time columns?}

\item{top}{Integer. If you want to plot the top correlations, 
define how many}

\item{ceiling}{Numeric. Remove all correlations above... Range: (0-100]}

\item{max_pvalue}{Numeric. Filter non-significant variables. Range (0, 1]}

\item{limit}{Integer. Limit one hot encoding to the n most frequent 
values of each column. Set to \code{NA} to ignore argument.}

\item{zeroes}{Do you wish to keep zeroes in correlations too?}

\item{save}{Boolean. Save output plot into working directory}

\item{subdir}{Character. Sub directory on which you wish to 
save the plot}

\item{file_name}{Character. File name as you wish to save the plot}
}
\description{
This function correlates a whole dataframe with a single feature. It
automatically run one-hot-smart-encoding (ohse) so no need to input
only numerical values.
}
\examples{
options("lares.font" = NA) # Temporal
data(dft) # Titanic dataset

dft \%>\% corr_var(Survived, method = "spearman", plot = FALSE, top = 10)

# With plots, results are easier to compare:

# Correlate Survived with everything else and show only significant results
dft \%>\% corr_var(Survived_TRUE, max_pvalue = 0.05)

# Filter out variables with less than 50\% of correlation
dft \%>\% corr_var(Survived_TRUE, ceiling = 50)

# Show only 10 values
dft \%>\% corr_var(Survived_TRUE, top = 10)

# Also calculate log(values)
dft \%>\% corr_var(Survived_TRUE, logs = TRUE, top = 15)
}
\seealso{
Other Exploratory: 
\code{\link{corr_cross}()},
\code{\link{crosstab}()},
\code{\link{df_str}()},
\code{\link{distr}()},
\code{\link{freqs_df}()},
\code{\link{freqs_list}()},
\code{\link{freqs_plot}()},
\code{\link{freqs}()},
\code{\link{lasso_vars}()},
\code{\link{missingness}()},
\code{\link{plot_cats}()},
\code{\link{plot_df}()},
\code{\link{plot_nums}()},
\code{\link{summer}()},
\code{\link{tree_var}()},
\code{\link{trendsRelated}()}

Other Correlations: 
\code{\link{corr_cross}()},
\code{\link{corr}()}
}
\concept{Correlations}
\concept{Exploratory}
