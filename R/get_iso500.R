#' Get Data from iso500.org.tr
#'
#' @param year Year
#'
#' @param all Download all data, default is FALSE
#'
#' @return A data tibble
#'
#' @examples
#' \dontrun{
#' get_iso500(2019)
#' }
#'
#' @importFrom utils download.file
#'
#' @export
get_iso500 <- function(year, all = FALSE) {
  if (isTRUE(all)) year <- 2019

  if (year %in% 2006:2020) {
    url <- paste0("https://www.iso500.org.tr/500-buyuk-sanayi-kurulusu/", year)
    page <- rvest::read_html(url)
    xlsx_link <- page %>%
      rvest::html_element(xpath = "/html/body/div/div[3]/div[2]/div[1]/a[2]") %>%
      rvest::html_attr("href") %>%
      stringr::str_replace("langId=1", "langId=2")
    temp <- tempfile()
    download.file(xlsx_link, temp, quiet = TRUE)
    dt <- readxl::read_xlsx(temp, na = "-") %>%
      dplyr::mutate(dplyr::across(c(1:3, 6:38), ~ stringr::str_remove_all(.x, "\\."))) %>%
      dplyr::mutate(dplyr::across(c(1:3, 6:38), ~ stringr::str_replace_all(.x, "\\,", "\\."))) %>%
      dplyr::mutate(dplyr::across(c(1:3, 6:38), as.numeric)) %>%
      dplyr::rename(CurrentYear_Ranking = 2, PreviousYear_Ranking = 3)

    if (!isTRUE(all)) {
      dt <- dt %>%
        dplyr::filter(.data$Year == year)
      return(dt)
    } else {
      return(dt)
    }
  } else {
    cat(crayon::yellow(paste0("Year must be between 2006 and 2020.\n")))
  }
}
