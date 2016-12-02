library(convertemp)
library(assertthat)

context("converttemp")

test_that("temp only takes numerical", {
  class(try(fahr_to_celsius("1"))) == "try-error"
  class(try(kelvin_to_celsius("1"))) == "try-error"
  class(try(kelvin_to_fahr("1"))) == "try-error"
  class(try(fahr_to_kelvin("1"))) == "try-error"
  class(try(celsius_to_fahr("1"))) == "try-error"
  class(try(celsius_to_kelvin("1"))) == "try-error"
})

test_that("absolute 0", {
  assert_that(kelvin_to_celsius(0) == -273.15)
})



