% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBResult.R
\name{dbGetStatement}
\alias{dbGetStatement}
\title{Get the statement associated with a result set}
\usage{
dbGetStatement(res, ...)
}
\arguments{
\item{res}{An object inheriting from \linkS4class{DBIResult}.}

\item{...}{Other arguments passed on to methods.}
}
\value{
\code{dbGetStatement()} returns a string, the query used in
either \code{\link[=dbSendQuery]{dbSendQuery()}}
or \code{\link[=dbSendStatement]{dbSendStatement()}}.
Attempting to query the statement for a result set cleared with
\code{\link[=dbClearResult]{dbClearResult()}} gives an error.
}
\description{
Returns the statement that was passed to \code{\link[=dbSendQuery]{dbSendQuery()}}
or \code{\link[=dbSendStatement]{dbSendStatement()}}.
}
\examples{
con <- dbConnect(RSQLite::SQLite(), ":memory:")

dbWriteTable(con, "mtcars", mtcars)
rs <- dbSendQuery(con, "SELECT * FROM mtcars")
dbGetStatement(rs)

dbClearResult(rs)
dbDisconnect(con)
}
\seealso{
Other DBIResult generics: \code{\link{DBIResult-class}},
  \code{\link{dbBind}}, \code{\link{dbClearResult}},
  \code{\link{dbColumnInfo}}, \code{\link{dbFetch}},
  \code{\link{dbGetInfo}}, \code{\link{dbGetRowCount}},
  \code{\link{dbGetRowsAffected}},
  \code{\link{dbHasCompleted}}, \code{\link{dbIsValid}},
  \code{\link{dbQuoteIdentifier}},
  \code{\link{dbQuoteLiteral}}, \code{\link{dbQuoteString}}
}
