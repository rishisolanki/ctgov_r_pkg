#' Get clinical trial location data by matching specific NCT_ID for the specific kterm
#' @param kterm A string representing a disease name or primary condition
#' @return A dataframe containig location of facilities where trials are conducted
#' @export

search_locations <- function(kterm){
  # get nct_id for the specific disease
  match_nct_id <- data.frame(get_matching_kterm_nct_id(kterm))
  colnames(match_nct_id) <- "NCT_ID"

  location_data <- read_location_data()

  # get specific clinical trial data
  output <- merge(match_nct_id,
                  location_data,
                  by.x = "NCT_ID",
                  by.y = "NCT_ID")

  return(output)
}
