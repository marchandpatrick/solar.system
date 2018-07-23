context('functions')

test_that('We have 9 planets', {
  expect_equal(solar.system::planetnumbers(), 9)
})

test_that('We have all the planet names in order', {
  outdat <- solar.system::planetnames()
  dat <- planets <- c("Mercury","Venus", "Earth", "Mars", "Jupiter","Saturn", "Uranus", "Neptune", "Pluto")
  expect_identical(dat, outdat)
})
