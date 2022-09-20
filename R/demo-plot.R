demo_plot <- function(seed = 1234, rate = 5){
  set.seed(1)
  fixed <- rpois(n = 100, lambda = 12)
  set.seed(seed)
  changing <- rpois(n = 50, lambda = rate)

  dat <- tibble::tibble(
    cases = c(fixed, changing),
    date = seq.Date(from = as.Date("2022-04-25"),
                    to = as.Date("2022-09-21"),
                    by = 1)
  )

  ggplot2::ggplot(
    data = dat,
    ggplot2::aes(
    x = date,
    y = cases
  )) +
    ggplot2::geom_line() +
    ggplot2::geom_point()
}
