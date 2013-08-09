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
Version: \tab 0.8.5.1\cr
Date: \tab 2013-08-12\cr
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
zone_emploi<-ttwa(df=reunion_ttw,origin="HOME",
  destination="WORK", flow="FLOW",
  conti="CONTI",size_center=50000)
zone_emploi$statistic #Zoning quality 
# 4 centers : Saint-Denis, Saint-Paul, Saint-Pierre and Saint-Benoit
center_emploi<-ttwa(df=reunion_ttw,origin="HOME",
  destination="WORK",flow="FLOW",
  conti="CONTI",size_center=500000,
  list_center=c("97411","97415","97416","97410"))
center_emploi$statistic
}
