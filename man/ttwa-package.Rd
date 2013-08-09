\name{ttwa-package}
\alias{ttwa-package}
\alias{ttwa-package}
\docType{package}
\title{
Travel To Work Area.
}
\description{
This package makes Travel To Work Area from a commuting flow data frame.
}
\details{
\tabular{ll}{
Package: \tab ttwa\cr
Type: \tab Package\cr
Version: \tab 0.8.5\cr
Date: \tab 2013-08-09\cr
License: \tab GPL (>=2.0)\cr
}

}
\author{
Francois Semecurbe and Joachim Timoteo.
<francoissemecurbe@gmail.com> and <joachim.timoteo@gmail.com>

}
\references{
Christophe Terrier web site is a reference to the method Anabel-Mirabel: www.christophe-terrier.com
}
\keyword{ package }
\seealso{

\code{\link[ttwa]{ttwa}},\code{\link[ttwa]{reunion_ttw}}
}
\examples{
data(reunion_ttw) #commuting flow in Reunion island
zone_emploi<-ttwa(df=reunion_ttw,origin="HOME",destination="WORK",
  flow="FLOW",conti="CONTI",0.0001,50000)
#Zoning quality 
zone_emploi$statistic
}
