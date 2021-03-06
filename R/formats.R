#' An rmarkdown format based on \code{html_vignette} with custom CSS.
#' This creates an output file much smaller than \code{html_document}.
#' @inheritParams html_vignette
#' @param ... Additional arguments passed to \code{\link{html_vignette}}
#' @return R Markdown output format to pass to \code{\link{render}}

#' @export
small_format <- function(css=NULL, ...) {

  # get the location of our custom CSS
  css_all <- system.file('rmarkdown', 'templates', 'small_format', 'resources',
                         'small_format.css',
                         package = "kjutil")

  # Add any user-provided CSS
  if (!is.null(css))
    css_all = c(css_all, css)

  # call the base html_vignette function
  rmarkdown::html_vignette(css = css_all, ...)
}
