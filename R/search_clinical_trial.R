#' Get clinical trial data by matching specific NCT_ID for the specific kterm
#' @param kterm A string representing a disease name or primary condition
#' @return Clinical trial processed table only specific to the kterm
#' @export

search_clinical_trial <- function(kterm){
  # get nct_id for the specific disease
  match_nct_id <- data.frame(get_matching_kterm_nct_id(kterm))

  data0 <- read_processed_clinical_data()
  colnames(match_nct_id) <- "NCT_ID"

  # get specific clinical trial data
  output <- merge(match_nct_id,
                  data0,
                  by.x = "NCT_ID",
                  by.y = "NCT_ID")

  return(output)
}
