% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colour_palettes.R
\name{lares_pal}
\alias{lares_pal}
\title{Personal Colours Palette}
\usage{
lares_pal()
}
\description{
This function plots a list of colours on a specific palette
}
\examples{
# Raw colours and counter-colours
nice_palette <- names(lares_pal()$palette)
nice_palette_ctr <- as.vector(lares_pal()$palette)
lapply(list(nice_palette, nice_palette_ctr), head)

# Personal colours by name
df <- lares_pal()$labels
df[sample(nrow(df), 5), ]
}
\seealso{
Other Auxiliary: 
\code{\link{gg_colour_customs}()},
\code{\link{gg_fill_customs}()},
\code{\link{gg_text_customs}()},
\code{\link{plot_palette}()}
}
\concept{Auxiliary}
