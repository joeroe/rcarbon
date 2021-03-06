% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot.CalGrid}
\alias{plot.CalGrid}
\title{Plot a summed probability distribution (from a CalGrid object)}
\usage{
\method{plot}{CalGrid}(x, runm = NA, calendar = "BP", fill.p = "grey50",
  border.p = NA, xlim = NA, ylim = NA, cex.lab = 0.75,
  cex.axis = cex.lab, mar = c(4, 4, 1, 3), add = FALSE, ...)
}
\arguments{
\item{x}{A "CalGrid" class object of summed probabilities per calendar year BP.}

\item{runm}{A number indicating the window size of the moving average to smooth the SPD. If set to \code{NA} no moving average is applied. Default is NA}

\item{calendar}{Either \code{'BP'} or \code{'BCAD'}. Indicate whether the calibrated date should be displayed in BP or BC/AD. Default is  \code{'BP'}.}

\item{fill.p}{Fill colour of the polygon depicting the summed probability distribution.}

\item{border.p}{Border colour of the polygon depicting the summed probability distribution.}

\item{xlim}{Adjust x axis limits.}

\item{ylim}{Adjust y axis limits (otherwise sensible default).}

\item{cex.lab}{Size of label text.}

\item{cex.axis}{Size of axis text.}

\item{mar}{Adjust margins around plot.}

\item{add}{Whether or not the new graphic should be added to an existing plot.}

\item{...}{Additional arguments affecting the plot}
}
\description{
Plot a summed radiocarbon probability distribution. This is a basic function for plotting SPDs that have been constructed manually or by calibrating a summed or otherwise irregular CRA grid. In most instances, it is sensible to use \code{plot.CalSPD} instead.
}
\examples{
data(euroevol)
mycaldates <- calibrate(euroevol[1:10,"C14Age"], euroevol[1:10,"C14SD"], normalised=FALSE)
myspd <- spd(mycaldates, timeRange=c(8000,2000))
plot(myspd) #ordinary plot using \\code{plot.CalSPD}
plot(myspd$grid) #working plot using the internal CalGrid object
}
\seealso{
\code{\link{spd}}; \code{\link{plot.CalSPD}}
}
