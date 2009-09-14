\name{panic}
\alias{panic}
\docType{data}
\title{Panic disorder study I}
\description{
Measurements of the degree of illness on a CGI scale for a group of patients suffering from panic disorder and agoraphobia.
}
\usage{data(panic)}
\format{
Longitudinal data of 16 patients with CGI scores taken on 5 occasions.
}
\details{
A group of 16 patients from panic disorder and agoraphobia were treated with anti-depressant imipramin over a period of eight weeks. Measurements on a discrete scale of scores between 2 and 8 were taken (2=not ill through 8=extremely ill) on 5 occasions (0=baseline, 2=after two weeks, 4=after four weeks,...).
}
\references{
Brunner, E., Domhof, S., and Langer, F. (2002). \emph{Nonparametric Analysis of Longitudinal Data in Factorial Experiments},
Wiley, New York.\cr

Brunner, E. and Langer, F. (1999). \emph{Nichtparametrische Analyse longitudinaler Daten}, 
R. Oldenbourg Verlag, Munchen Wien.
}

\examples{
## Analysis using LD-F1 design ##
data(panic)
var<-c(panic[,"W0"],panic[,"W2"],panic[,"W4"],panic[,"W6"],panic[,"W8"])
time<-c(rep(0,16),rep(2,16),rep(4,16),rep(6,16),rep(8,16))
subject<-rep(panic[,"Patient"],5)
pat<-c(5,4,3,2,5)
ex.f1<-ld.f1(var,time,subject,w.pat=pat,time.name="week",description=FALSE)

## Wald-type statistic 
ex.f1$Wald.test

#     Statistic df p-value
#Week  126.6946  4       0

## ANOVA-type statistic
ex.f1$ANOVA.test

#     Statistic       df p-value
#Week  36.93664 2.234135       0
}
\keyword{datasets}
