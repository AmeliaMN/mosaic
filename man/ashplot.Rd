% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ashplot.R
\docType{data}
\name{ashplot}
\alias{StatAsh}
\alias{ash_points}
\alias{ashplot}
\alias{geom_ash}
\alias{panel.ashplot}
\alias{prepanel.default.ashplot}
\alias{stat_ash}
\title{Average Shifted Histograms}
\format{An object of class \code{StatAsh} (inherits from \code{Stat}, \code{ggproto}) of length 3.}
\usage{
ashplot(x, ..., width = NULL, adjust = NULL, panel = panel.ashplot,
  prepanel = prepanel.default.ashplot)

prepanel.default.ashplot(x, darg, groups = NULL, subscripts = TRUE, ...)

panel.ashplot(x, darg = list(), plot.points = FALSE, ref = FALSE,
  groups = NULL, jitter.amount = 0.01 * diff(current.panel.limits()$ylim),
  type = "p", ..., identifier = "ash")

ash_points(x, binwidth = NULL, adjust = 1)

StatAsh

stat_ash(mapping = NULL, data = NULL, geom = "line",
  position = "identity", na.rm = FALSE, show.legend = NA,
  inherit.aes = TRUE, binwidth = NULL, adjust = 1, ...)

geom_ash(mapping = NULL, data = NULL, stat = "ash",
  position = "identity", na.rm = FALSE, show.legend = NA,
  inherit.aes = TRUE, binwidth = NULL, adjust = 1, ...)
}
\arguments{
\item{x}{a formula or numeric vector}

\item{...}{additional arguments passed to panel and prepanel functions or \code{data}, a 
data frame in which to find the variales used for the plot.}

\item{width}{the historam bin width.}

\item{adjust}{a numeric adjustment to \code{width}.  Primarily useful when \code{width} is 
not specified.  Increasing \code{adjust} makes the plot smoother.}

\item{panel}{a panel funtion}

\item{prepanel}{a prepanel function}

\item{darg}{a list of arguments for the function computing the ASH.}

\item{groups}{as in other lattice plots}

\item{subscripts}{as in other lattice prepanel functions}

\item{plot.points}{One of \code{TRUE}, \code{FALSE}, \code{"jitter"}, or \code{"rug"}}

\item{ref}{a logical indicating whether a reference line should be displayed}

\item{jitter.amount}{when \code{plot.points="jitter"}, the value to use as the amount 
argument to \code{\link{jitter}}.}

\item{type}{type argument used to plot points, if requested. 
This is not expected to be useful, it is available mostly to protect a \code{type} argument, 
if specified, from affecting the display of the ASH.}

\item{identifier}{A character string that is prepended to the names of i
grobs that are created by this panel function.}

\item{binwidth}{the width of the histogram bins.  If \code{NULL} (the default) the 
binwidth will be chosen so that approximately 10 bins cover the data.  \code{adjust}
can be used to to increase or decrease \code{binwidth}.}

\item{mapping}{set of aesthetic mappings created by \code{\link{aes}()} 
or \code{\link{aes_}()}.}

\item{data}{a data frame}

\item{geom}{a geom to use for this layer, as a string.}

\item{position}{position adjustment, either as a string or the result of a call to
a position adjustment function.}

\item{na.rm}{If FALSE (the default), removes missing values with a warning. 
If TRUE silently removes missing values.}

\item{show.legend}{logical. Should this layer be included in the legends? 
\code{NA}, the default, includes if any aesthetics are mapped. 
\code{FALSE} never includes, and \code{TRUE} always includes.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics, 
rather than combining with them. This is most useful for helper functions that 
define both data and aesthetics and shouldn't inherit behaviour from the default plot 
specification, e.g. \code{\link{borders}}.}

\item{stat}{a statistical transformation to use on the data for this layer, as a string.}
}
\value{
a data frame containing x and y coordinates of the resulting ASH plot.
}
\description{
An ASH plot is the average over all histograms of a fixed bin width.

Mainly a utility for the \pkg{lattice} and \pkg{ggplot2} plotting 
functions, \code{ash_points()} returns the points to be plotted.
}
\examples{
ashplot( ~age | substance, groups = sex, data = HELPrct)
ggplot(faithful, aes(x = eruptions)) +
  geom_histogram(aes(y = ..density..), 
    fill = "lightskyblue", colour = "gray50", alpha = 0.2) +
  geom_ash(colour = "red") + 
  geom_ash(colour = "forestgreen", adjust = 2) + 
  geom_ash(colour = "navy", adjust = 1/2) + 
  theme_minimal()
}
\keyword{datasets}

