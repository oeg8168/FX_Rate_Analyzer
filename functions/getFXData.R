#' Read FX rate data from .csv files
#'
#' @return dataframe of FX rate data
#' @export
#'
#' @examples
#' fx_data <- getFXData()
getFXData <- function() {
    filenames = list.files("./FX_Rate_Data/", full.names = TRUE)

    datalist = lapply(filenames,
                      function(x) {
                          read.csv(
                              file = x,
                              header = TRUE,
                              na.strings = c("-", "0"),
                              stringsAsFactors = FALSE
                          )
                      })

    Reduce(function(x, y) {
        merge(x, y, all = TRUE)
    }, datalist)
}
