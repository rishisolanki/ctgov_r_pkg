#' Clinical Trial Data
#'
#' Contains data from ClinicaTials.GOV (per NCT_ID)
#'
#' @format A data frame consisting of 211437 values and  42 variables:
#'    \code{NCT_ID},
#'    \code{DOWNLOAD_DATE},
#'    \code{DOWNLOAD_DATE_DT},
#'    \code{ORG_STUDY_ID},
#'    \code{BRIEF_TITLE},
#'    \code{OFFICIAL_TITLE},
#'    \code{ACRONYM},
#'    \code{SOURCE},
#'    \code{HAS_DMC},
#'    \code{OVERALL_STATUS},
#'    \code{START_DATE},
#'    \code{COMPLETION_DATE},
#'    \code{COMPLETION_DATE_TYPE},
#'    \code{PRIMARY_COMPLETION_DATE},
#'    \code{PRIMARY_COMPLETION_DATE_TYPE},
#'    \code{PHASE},
#'    \code{STUDY_TYPE},
#'    \code{STUDY_DESIGN},
#'    \code{NUMBER_OF_ARMS},
#'    \code{NUMBER_OF_GROUPS},
#'    \code{ENROLLMENT_TYPE},
#'    \code{ENROLLMENT},
#'    \code{BIOSPEC_RETENTION},
#'    \code{BIOSPEC_DESCR},
#'    \code{GENDER},
#'    \code{MINIMUM_AGE},
#'    \code{MAXIMUM_AGE},
#'    \code{HEALTHY_VOLUNTEERS},
#'    \code{SAMPLING_METHOD},
#'    \code{STUDY_POP},
#'    \code{VERIFICATION_DATE},
#'    \code{LASTCHANGED_DATE},
#'    \code{FIRSTRECEIVED_DATE},
#'    \code{IS_SECTION_801},
#'    \code{IS_FDA_REGULATED},
#'    \code{WHY_STOPPED},
#'    \code{HAS_EXPANDED_ACCESS},
#'    \code{FIRSTRECEIVED_RESULTS_DATE},
#'    \code{URL},
#'    \code{TARGET_DURATION},
#'    \code{STUDY_RANK},
#'    \code{LIMITATIONS_AND_CAVEATS}
#'
"clinical_study_table"

#' Condition Data
#'
#' Contains data about trial primary condition / disease (per NCT_ID)
#'
#' @format A data frame consisting of 340351 value and 3 variables:
#'  \code{CONDITION_ID}, \code{NCT_ID}, \code{CONDITION}
"condition_table"

#' Location Data
#'
#' Contains data about trial location (per NCT_ID)
#'
#' @format A data frame consisting of 1633395 value and 8 variables:
#'  \code{FACILITY_ID}, \code{NCT_ID}, \code{STATUS}, \code{FACILITY_NAME},
#'  \code{CITY}, \code{STATE}, \code{ZIP}, \code{COUNTRY}
#'
"facilities_table"

#' Sponsor Data
#'
#' Contains data about sponsors (per NCT_ID)
#'
#' @format A data frame consisting of 328709 value and 5 variables:
#'  \code{SPONSOR_ID}, \code{NCT_ID}, \code{SPONSOR_TYPE}, \code{AGENCY},
#'  \code{AGENCY_CLASS}
#'
"sponsor_table"
