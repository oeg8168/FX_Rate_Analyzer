#' Invert FX rate data
#'
#' @param input_df dataframe of FX rate data
#' @param invert_columns Column names need to be invert
#'
#' @return Inverted FX rate dataframe
#' @export
#'
#' @examples
#' fx_data <- invertCurrency(fx_data, c("EUR.USD", "GBP.USD"))
invertCurrency <- function(input_df, invert_columns) {
    for (each in invert_columns) {
        # Count reciprocal
        input_df[each] <- 1 / input_df[each]

        # Rename column
        currencies <- strsplit(each, split = ".", fixed = TRUE)[[1]]
        c_name_new <- paste(currencies[2], currencies[1], sep = ".")
        colnames(input_df)[colnames(input_df) == each] <- c_name_new
    }

    return(input_df)
}
