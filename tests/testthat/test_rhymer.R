library(rhymer)
context("rhymer Tests")

WORD_TO_TEST <- "test"

test_that("get_rhyme returns dataframe of words", {

  rhyme_data <- get_rhyme(WORD_TO_TEST, limit = 10)

  expect_is(rhyme_data, "data.frame")
  expect_equal(nrow(rhyme_data), 10)
  expect_true("best" %in% rhyme_data$word)
  expect_named(rhyme_data, c("word", "score", "numSyllables"))

})

test_that("get_means_like returns dataframe of words", {

  means_like_data <- get_means_like(WORD_TO_TEST, limit = 10)

  expect_is(means_like_data, "data.frame")
  expect_equal(nrow(means_like_data), 10)
  expect_true("exam" %in% means_like_data$word)
  expect_named(means_like_data, c("word", "score", "tags"))

})

test_that("get_sounds_like returns dataframe of words", {

  sounds_like_data <- get_sounds_like(WORD_TO_TEST, limit = 10)

  expect_is(sounds_like_data, "data.frame")
  expect_equal(nrow(sounds_like_data), 10)
  expect_true("tist" %in% sounds_like_data$word)
  expect_named(sounds_like_data, c("word", "score", "numSyllables"))

})

test_that("get_spelled_like returns dataframe of words", {

  spelled_like_data <- get_spelled_like(WORD_TO_TEST, limit = 10)

  expect_is(spelled_like_data, "data.frame")
  expect_equal(nrow(spelled_like_data), 1)
  expect_true("test" %in% spelled_like_data$word)
  expect_named(spelled_like_data, c("word", "score"))

})

test_that("get_other_related returns dataframe of words", {

  other_related_data <- get_other_related(WORD_TO_TEST, code = "spc", limit = 10)

  expect_is(other_related_data, "data.frame")
  expect_equal(nrow(other_related_data), 10)
  expect_true("take" %in% other_related_data$word)
  expect_named(other_related_data, c("word", "score"))
  expect_warning(get_other_related(WORD_TO_TEST, code = "not a real code :)", limit = 10))

})
