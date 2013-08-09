\name{ttwa}
\alias{ttwa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Zoning Commuting flow
}
\description{
This function computes the commuting areas from a flow data. It is especially effective for calculating the travel to work area (TTWA). TTWA are defined to reflect areas where the bulk of the resident population also works within the same area. TTWA defines local labour market area. The ttwa function uses a greedy algorithm. Progressively, areas aggregate themselves with their link when above a threshold. The ttwa is an adaptation of the algorithm used by the INSEE zoning, Anabel. 
}
\usage{
ttwa(df, origin, destination, flow, conti = NULL, 
minimum_link = 0.00001, size_center, list_center = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
data frame that contains the flow information
}
  \item{origin}{
name of the variable that containd the identifier of the origin area 
}
  \item{destination}{
name of the variable that containd the identifier of the destination area 
}
  \item{flow}{
name of the qualitative variable that contains the flow
}
  \item{conti}{default NULL, name of the boolean variable that contains the contiguity beetween origin and destination area }
  \item{minimum_link}{minimum link aggregation allows between area}
  \item{size_center}{
size of area who can't be aggregated to an other area. enter_size determines the minimum size of commuting area.}
  \item{list_center}{list of identifiers of non-aggregatable territories to other centers but they   can attract other territories and become centers or otherwise isolated clusters.}

}
\details{
The ttwa is an adaptation of the algorithm used by the INSEE zoning, Anabel. For each iteration, we search for the strongest link between the two areas which meet the parameters of aggregation (contiguity and center size). Then, it is aggregated to the lines of the data.frame associated with the two areas. Thus, the area's name formed is the name of the destination area of the stream. It repeats the process until we can find areas with a sufficient nexus.
The link between area i to j is defined as $flow_ij/total_outflow_i$.
The constraint of contiguity provides a related zoning. It may be appropriated to add zeros to the flow variable between contiguous areas without flow to allow the construction of aggregation areas.
Quality zoning is measured by the rate of steady flow in commuting area.
}
\value{
An object of class "zoning" is a list containing at least the following components:
\item{zoning}{data frame contains the initial area and their commuting area of attachment}
\item{log}{data frame containing the log of the greedy processus}
\item{data}{data frame containing the aggregated flow between commuting area}
\item{statistic}{data frame containing the statistics area by zone (the total outflow, rate stable at origin, number of primary territories)}
}

\author{
The Anabel-Mirabel algorithm has been developped by Christophe Terrier, french statistician.
The implementation of the algorithm by Francois Semecurbe and Joachim Timoteo.
<francoissemecurbe@gmail.com> and <joachim.timoteo@gmail.com>
}
\references{
Christophe Terrier web site is a reference to the method Anabel-Mirabel: www.christophe-terrier.com
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[ttwa]{reunion_ttw}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ttwa }

