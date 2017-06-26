\name{filehashOption}
\alias{filehashOption}

\title{Set filehash options}
\description{
  Set global filehash options
}
\usage{
filehashOption(...)
}

\arguments{
  \item{\dots}{name-value pairs for options}
}
\details{
  Currently, the only three options that can be set are:
  First, the default database
  type (\code{defaultType}) which can be "DB1", "RDS" or "DB". 
 
  Second and third for the DB1 type, db1LockMaxAttempts (default 4) and db1LockSleepDuration (default 0.5)
  can be set to define how patient the package should try to get a db lock.
}
\value{
  \code{filehashOptions} returns a list of current settings for all
  options.
}

\author{Roger D. Peng}

\keyword{database}% at least one, from doc/KEYWORDS

