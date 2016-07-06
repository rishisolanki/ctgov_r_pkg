#' Get matching nct_id for a given disease or primary condition
#' @param kterm A string representing a disease name or primary condition
#' @return A list of matching NCT_ID
#' @export
#'

get_matching_kterm_nct_id <- function(kterm){

  condition_data <- read_condition_data()
  match_nct_id <- as.vector(unique(condition_data$NCT_ID[which(grepl(tolower(kterm), tolower(condition_data$CONDITION)))]))

  return (match_nct_id)
}
