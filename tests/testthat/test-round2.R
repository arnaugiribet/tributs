test_that("rounding away from zero works both in positives and negatives", {
  expect_equal(round2(rep(c(-2:2),each=3)+seq(.4,.6,.1)),
               c(-2,-2,-1,-1,-1,0,0,1,1,1,2,2,2,3,3))
})
