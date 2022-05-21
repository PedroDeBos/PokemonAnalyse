test_that("pokemon_legendary properly gives a legendary", {
  expect_equal(pokemon_legendary("Arceus"), "Arceus is a legendary pokemon")
  expect_equal(pokemon_legendary("Bidoof"), "Bidoof is not a legendary pokemon")
})
