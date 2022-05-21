test_that("Pokemon type gives proper types for both single and dual type pokemon", {
  expect_equal(pokemon_type("Drapion"), list(Drapion="Drapion is a poison and a dark type"))
  expect_equal(pokemon_type("Chimchar"), list(Chimchar="Chimchar is a fire type"))
  expect_equal(pokemon_type("Arceus", "Steelix"), list(Arceus="Arceus is a normal type",
                                                       Steelix="Steelix is a steel and a ground type"))
})
