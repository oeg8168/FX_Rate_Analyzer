require(ggplot2)
require(reshape2)

#' Return ggplot2 line plot object
#'
#' @param input_df (Require "Date" attribute)
#'
#' @return ggplot2 line plot object
#' @export
#'
#' @examples
#' p <- getLinePlot(fx_data)
#' p <- getLinePlot(fx_data[, c("Date", "USD.TWD")])
getLinePlot <- function(input_df) {
    d <- melt(input_df, id.vars = "Date", na.rm = TRUE)

    result_plot <-
        ggplot(d, aes(x = Date, y = value, color = variable)) + geom_line()

    return(result_plot)
}
