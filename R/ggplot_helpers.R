#' A ggplot2 theme that I like.
#'
#' Lighter than the standard gray theme.
#' @export
#' @import ggplot2
#' @examples
#' ggplot2::qplot(mtcars$mpg) + theme_reports()
theme_reports = function()
  theme_update(
  panel.background = element_rect(fill = "grey95", colour = NA),
  panel.grid.minor = element_line(colour = "grey99", size = 0.25),
  strip.background = element_rect(fill = "grey90", color="grey50"))

#' Put the legend inside a plot
#'
#' These functions will put the legend in a corner of the main plot and remove the decorations
#' which set the legend off from the background. They help to reduce the overall size of a plot.
#'
#' @name legend_location
NULL
#> NULL

#' \code{legendTR()}: Legend at top-right
#'
#' @export
#' @import ggplot2
#' @rdname legend_location
#' @examples
#' ggplot2::qplot(disp, mpg, data=mtcars, color=factor(cyl)) + legendTR()
legendTR = function() theme(legend.justification=c(1,1), legend.position=c(1, 0.95),
      legend.background = element_blank(),
      legend.key = element_blank(), legend.box.just = "left")

#' \code{legendBR()}: Legend at bottom-right
#'
#' @export
#' @import ggplot2
#' @rdname legend_location
#' @examples
#' ggplot2::qplot(disp, mpg, data=mtcars, color=factor(cyl)) + legendBR()
legendBR = function() theme(legend.justification=c(1,0), legend.position=c(1, 0.05),
      legend.background = element_blank(),
      legend.key = element_blank(), legend.box.just = "left")

#' \code{legendBL()}: Legend at bottom-left
#'
#' @export
#' @import ggplot2
#' @rdname legend_location
#' @examples
#' ggplot2::qplot(disp, mpg, data=mtcars, color=factor(cyl)) + legendBL()
legendBL = function() theme(legend.justification=c(0,0), legend.position=c(0, 0.05),
      legend.background = element_blank(),
      legend.key = element_blank(), legend.box.just = "left")

#' \code{legendTL)}: Legend at top-left
#'
#' @export
#' @import ggplot2
#' @rdname legend_location
#' @examples
#' ggplot2::qplot(disp, mpg, data=mtcars, color=factor(cyl)) + legendTL()
legendTL = function() theme(legend.justification=c(0,1), legend.position=c(0, 0.95),
      legend.background = element_blank(),
      legend.key = element_blank(), legend.box.just = "left")
