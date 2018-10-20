#' Convert currency names to ISO 4217 codes
#'
#' @param c_names Currency names
#'
#' @return Converted currency codes
#' @export
#'
#' @examples
#' colnames(fx_data) <- convertCurrencyNames(colnames(fx_data))
convertCurrencyNames <- function(c_names) {
    c_names <- gsub("美元", "USD", c_names)
    c_names <- gsub("人民幣", "CNY", c_names)
    c_names <- gsub("新台幣", "TWD", c_names)
    c_names <- gsub("歐元", "EUR", c_names)
    c_names <- gsub("日幣", "JPY", c_names)
    c_names <- gsub("澳幣", "AUD", c_names)
    c_names <- gsub("港幣", "HKD", c_names)
    c_names <- gsub("南非幣", "ZAR", c_names)
    c_names <- gsub("紐幣", "NZD", c_names)
    c_names <- gsub("英鎊", "GBP", c_names)

    return(c_names)
}
