# A demonstration function for the lab.

#' Takes some fake data and modifies it. Demo purposes only.
#'
#' @description A demonstration function that takes a data frame (input) and modifies it to produce an (output).
#'
#' @param input Some data
#'
#' @importFrom dplyr row_number
#' @importFrom dplyr mutate
#' @importFrom magrittr %>%
#'
#' @export
#'
plot_something <- function(input){
  input <- input %>%
    mutate(index = row_number())
  library(ggplot2)
  p <- ggplot() + 
    geom_point(data = input, aes(x = index, y = age)) +
    geom_errorbar(data = input, aes(x = index, y = age, ymin = age - error, ymax = age + error)) +
    labs(x = 'Sample', y = 'Age') +
    theme_bw()
  p
}