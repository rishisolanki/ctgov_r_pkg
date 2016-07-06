
#' Read Raw Clinical Trial Info
#'
#' Returns a data frame consisting of 211437 values and  42 variables:
#'
#' @param None
#'
#' @export
#'
read_raw_clinical_data <- function(){
   return(raw_clinical_study_table)
}


#' Read Processed Clinical Trial Info
#'
#' Returns a data frame consisting of 211437 values and  12 variables:
#'
#' @param None
#'
#' @export
#'
read_processed_clinical_data <- function(){
  return(processed_clinical_study_table)
}



#' Read Clinical Trial Location Info
#'
#' Return a data frame consisting of 1633395 value and 8 variables:
#'
#' @param None
#'
#' @export
#'
read_location_data <- function(){
  return(facilities_table)
}


#' Read Clinical Trial Condition Info
#'
#' Returns a data frame consisting of 340351 value and 3 variables.
#'
#' @param None
#'
#' @export
#'
read_condition_data <- function(){
  return(condition_table)
}


#' Read Clinical Trial Sponsor Info
#'
#' Returns a data frame consisting of 328709 value and 5 variables:.
#'
#' @param None
#'
#' @export
#'
read_sponsor_data <- function(){
  return(sponsor_table)
}
