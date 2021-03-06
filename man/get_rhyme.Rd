% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rhymer.R
\name{get_rhyme}
\alias{get_rhyme}
\title{Get data for rhyming words.}
\usage{
get_rhyme(word, return_type = "df", limit = 10, num_syl = NULL)
}
\arguments{
\item{word}{to rhyme with.}

\item{return_type}{type to return. Options are:
\itemize{
\item 'df' for data.frame.
\item 'word' for a single word.
\item 'random_word' or 'random word' or 'rand' for a random word.
\item 'vector' for a vector of words.
}}

\item{limit}{max number of words to return.}

\item{num_syl}{number of syllables in rhymes to return.}
}
\value{
data with rhyming words.
}
\description{
Get data for rhyming words.
}
\examples{
get_rhyme("test")

get_rhyme("test", limit = 10)
}
