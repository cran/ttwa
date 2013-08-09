\name{reunion_ttw}
\alias{reunion_ttw}
\docType{data}
\title{
Census data on travel to work flow between Reunion Island municipalities.
}
\description{
A flow data frame travel to work between Reunion island municipalities from census (2010).
}
\usage{data(reunion_ttw)}
\format{
  A data frame with 5732 observations on the following 4 variables.
  \describe{
    \item{\code{HOME}}{a character vector, INSEE Ids of the municipalities of the resident population}
    \item{\code{WORK}}{a character vector, INSEE Ids of the municipalities of work}
    \item{\code{FLOW}}{a numeric vector, working flow between the municipality of residence and the municipality of work}
    \item{\code{CONTI}}{a numeric vector, indicator function of the contiguity between the municipality of residence and the municipality of work}
  }
}

\source{
Mobilites professionnelles (deplacements domicile - lieu de travail) - 2010 (Bases flux de mobilite)

Decoupage geographique au 01/01/2012 - Mise a jour : juin 2013

Insee, Recensements de la population

Original data can be retreived here :
http://www.insee.fr/fr/bases-de-donnees/default.asp?page=recensement/resultats/doc/presentation-flux-mobilite-prof.htm

}

\seealso{

\code{\link[ttwa]{ttwa}}
}


\examples{
data(reunion_ttw) #commuting flow in Reunion island
zone_emploi<-ttwa(df=reunion_ttw,origin="HOME",destination="WORK",
  flow="FLOW",conti="CONTI",0.0001,50000)
#Zoning quality 
zone_emploi$statistic
}
\keyword{datasets}
