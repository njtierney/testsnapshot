# demo_plot <- demo_plot()
demo_plot <- demo_plot(seed = 123)

test_that("demo_plot works",{
  skip_on_ci()
  vdiffr::expect_doppelganger("demo_plot",
                              demo_plot)
})
