test_that("gini correctly calculates 0", {
  expect_equal(gini(c(1,1,1,1,1)), 0)
})

test_that("gini calculation works well", {
  expect_equal(gini(c(1,1,1,1,0)), 0.2)
})
