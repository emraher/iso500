#' Get Data from iso500.org.tr
#'
#' @param year Year
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
get_iso500 <- function(year) {

  if (year %in% 2009:2021) {

    headers = c(
      'sec-ch-ua' = '"Google Chrome";v="111", "Not(A:Brand";v="8", "Chromium";v="111"',
      'DNT' = '1',
      'sec-ch-ua-mobile' = '?0',
      'User-Agent' = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36',
      'Content-Type' = 'application/x-www-form-urlencoded; charset=UTF-8',
      'Accept' = 'application/json, text/javascript, */*; q=0.01',
      'X-Requested-With' = 'XMLHttpRequest',
      'sec-ch-ua-platform' = '"macOS"',
      'host' = 'www.iso500.org.tr'
    )

    body = list(
      'columns[0][data]' = 'UretimdenSatislarGSNo',
      'columns[0][name]' = '',
      'columns[0][orderable]' = 'true',
      'columns[0][search][regex]' = 'false',
      'columns[0][search][value]' = '',
      'columns[0][searchable]' = 'true',
      'columns[10][data]' = 'Ozkaynak',
      'columns[10][name]' = '',
      'columns[10][orderable]' = 'false',
      'columns[10][search][regex]' = 'false',
      'columns[10][search][value]' = '',
      'columns[10][searchable]' = 'true',
      'columns[11][data]' = 'AktifToplamiGSNo',
      'columns[11][name]' = '',
      'columns[11][orderable]' = 'false',
      'columns[11][search][regex]' = 'false',
      'columns[11][search][value]' = '',
      'columns[11][searchable]' = 'true',
      'columns[12][data]' = 'AktifToplami',
      'columns[12][name]' = '',
      'columns[12][orderable]' = 'false',
      'columns[12][search][regex]' = 'false',
      'columns[12][search][value]' = '',
      'columns[12][searchable]' = 'true',
      'columns[13][data]' = 'VergiOncesiDonemKarZararGSNo',
      'columns[13][name]' = '',
      'columns[13][orderable]' = 'false',
      'columns[13][search][regex]' = 'false',
      'columns[13][search][value]' = '',
      'columns[13][searchable]' = 'true',
      'columns[14][data]' = 'VergiOncesiDonemKarZarar',
      'columns[14][name]' = '',
      'columns[14][orderable]' = 'false',
      'columns[14][search][regex]' = 'false',
      'columns[14][search][value]' = '',
      'columns[14][searchable]' = 'true',
      'columns[15][data]' = 'FAVAK_EBITDAKarZararGenelSiraNo',
      'columns[15][name]' = '',
      'columns[15][orderable]' = 'false',
      'columns[15][search][regex]' = 'false',
      'columns[15][search][value]' = '',
      'columns[15][searchable]' = 'true',
      'columns[16][data]' = 'FAVAK_EBITDAKarZarar',
      'columns[16][name]' = '',
      'columns[16][orderable]' = 'false',
      'columns[16][search][regex]' = 'false',
      'columns[16][search][value]' = '',
      'columns[16][searchable]' = 'true',
      'columns[17][data]' = 'IhracatGSNo',
      'columns[17][name]' = '',
      'columns[17][orderable]' = 'false',
      'columns[17][search][regex]' = 'false',
      'columns[17][search][value]' = '',
      'columns[17][searchable]' = 'true',
      'columns[18][data]' = 'IhracatBinDolar',
      'columns[18][name]' = '',
      'columns[18][orderable]' = 'false',
      'columns[18][search][regex]' = 'false',
      'columns[18][search][value]' = '',
      'columns[18][searchable]' = 'true',
      'columns[19][data]' = 'UcretlCalisanlarOralamasiGSNo',
      'columns[19][name]' = '',
      'columns[19][orderable]' = 'false',
      'columns[19][search][regex]' = 'false',
      'columns[19][search][value]' = '',
      'columns[19][searchable]' = 'true',
      'columns[1][data]' = 'Unvan',
      'columns[1][name]' = '',
      'columns[1][orderable]' = 'false',
      'columns[1][search][regex]' = 'false',
      'columns[1][search][value]' = '',
      'columns[1][searchable]' = 'true',
      'columns[20][data]' = 'UcretliCalisanlarOrtalamasiKisi',
      'columns[20][name]' = '',
      'columns[20][orderable]' = 'false',
      'columns[20][search][regex]' = 'false',
      'columns[20][search][value]' = '',
      'columns[20][searchable]' = 'true',
      'columns[21][data]' = 'Id',
      'columns[21][name]' = '',
      'columns[21][orderable]' = 'false',
      'columns[21][search][regex]' = 'false',
      'columns[21][search][value]' = '',
      'columns[21][searchable]' = 'true',
      'columns[2][data]' = 'Id',
      'columns[2][name]' = '',
      'columns[2][orderable]' = 'false',
      'columns[2][search][regex]' = 'false',
      'columns[2][search][value]' = '',
      'columns[2][searchable]' = 'true',
      'columns[3][data]' = 'UretimdenSatislarGSNo',
      'columns[3][name]' = '',
      'columns[3][orderable]' = 'false',
      'columns[3][search][regex]' = 'false',
      'columns[3][search][value]' = '',
      'columns[3][searchable]' = 'true',
      'columns[4][data]' = 'UretimdenSatislar',
      'columns[4][name]' = '',
      'columns[4][orderable]' = 'false',
      'columns[4][search][regex]' = 'false',
      'columns[4][search][value]' = '',
      'columns[4][searchable]' = 'true',
      'columns[5][data]' = 'NetSatislarGSNo',
      'columns[5][name]' = '',
      'columns[5][orderable]' = 'false',
      'columns[5][search][regex]' = 'false',
      'columns[5][search][value]' = '',
      'columns[5][searchable]' = 'true',
      'columns[6][data]' = 'NetSatislar',
      'columns[6][name]' = '',
      'columns[6][orderable]' = 'false',
      'columns[6][search][regex]' = 'false',
      'columns[6][search][value]' = '',
      'columns[6][searchable]' = 'true',
      'columns[7][data]' = 'BurutKatmaDegerGSNo',
      'columns[7][name]' = '',
      'columns[7][orderable]' = 'false',
      'columns[7][search][regex]' = 'false',
      'columns[7][search][value]' = '',
      'columns[7][searchable]' = 'true',
      'columns[8][data]' = 'BurutKatmaDeger',
      'columns[8][name]' = '',
      'columns[8][orderable]' = 'false',
      'columns[8][search][regex]' = 'false',
      'columns[8][search][value]' = '',
      'columns[8][searchable]' = 'true',
      'columns[9][data]' = 'OzkaynakGSNo',
      'columns[9][name]' = '',
      'columns[9][orderable]' = 'false',
      'columns[9][search][regex]' = 'false',
      'columns[9][search][value]' = '',
      'columns[9][searchable]' = 'true',
      'draw' = '5',
      'dtJson' = paste0('{"yil":"', year, '","nace":[],"bagliOlduguSanayiOdasi":"","calisanAraligiMin":"0","calisanAraligiMax":"0","sermayeYapisi":"","kurulusAdi":"","birinciIkinci500":1}'),
      'length' = '500',
      'order[0][column]' = '0',
      'order[0][dir]' = 'asc',
      'search[regex]' = 'false',
      'search[value]' = '',
      'start' = '0'
    )

    res <- httr::VERB("POST", url = "https://www.iso500.org.tr/Default/GetList", body = body, httr::add_headers(headers), encode = 'form')


    results <- httr::content(res, "parse")
    results <- results$data
    results <- dplyr::bind_rows(results)
    return(results)

  } else {
    cat(crayon::yellow(paste0("Year must be between 2009 and 2021.\n")))
  }
}
