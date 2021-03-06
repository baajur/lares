% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_lares2.R
\name{theme_lares2}
\alias{theme_lares2}
\title{lares Theme for ggplot2}
\usage{
theme_lares2(
  font = getOption("lares.font"),
  size = 12,
  main_colour = "darkorange3",
  hard_colour = "black",
  soft_colour = "grey30",
  bg_colour = "white",
  panel_colour = "transparent",
  legend = NA,
  grid = TRUE,
  mg = 9,
  pal = 0,
  which = "fct"
)
}
\arguments{
\item{font, size}{Character and numeric. Base font family and base size for texts.
Arial Narrow is set by default; you may change it with options("lares.font"="Other")
or by using this parameter manually}

\item{main_colour, hard_colour, soft_colour, bg_colour, panel_colour}{Character. Main colours for your theme}

\item{legend}{Character. Legend position: top, right, bottom, left}

\item{grid}{Character (\code{TRUE}, \code{FALSE}, or a combination of \code{X}, \code{x}, \code{Y}, \code{y})}

\item{mg}{Numeric. External margins}

\item{pal}{Integer. 1 for fill and colour palette, 2 for only colour palette,
3 for only fill palette, 4 for personal labels-colour palette. 0 or else for nothing.}

\item{which}{Character. When pal = 3, select which colours should be
added with the custom colours palette: fill, colour, text (fct) - first letters}
}
\description{
Based on hrbrthemes' theme_ipsum and customized for lares' use.
}
\section{Why Arial Narrow?}{

First and foremost, Arial Narrow is generally installed by default or readily
available on any modern system, so it's "free"-ish; plus, it is a condensed font
with solid default kerning pairs and geometric numbers.
}

\seealso{
Other Visualization: 
\code{\link{distr}()},
\code{\link{freqs_df}()},
\code{\link{freqs_list}()},
\code{\link{freqs_plot}()},
\code{\link{freqs}()},
\code{\link{gg_bars}()},
\code{\link{gg_pie}()},
\code{\link{noPlot}()},
\code{\link{plot_chord}()},
\code{\link{plot_survey}()},
\code{\link{plot_timeline}()},
\code{\link{summer}()},
\code{\link{theme_lares}()},
\code{\link{tree_var}()}
}
\concept{Visualization}
