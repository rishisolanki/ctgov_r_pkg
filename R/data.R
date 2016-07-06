#' Raw Clinical Trial Data
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
"raw_clinical_study_table"


#' Processed Clinical Trial Data
#'
#' Contains data from ClinicaTials.GOV (per NCT_ID)
#'
#' @format A data frame consisting of 211437 values and  42 variables:
#'   \describe{
#'   \item{\code{NCT_ID}}{Unique id for every trial}
#'   \item{\code{BRIEF_TITLE}}{Brief trial title}
#'   \item{\code{OFFICIAL_TITLE}}{Actual trial title}
#'   \item{\code{SOURCE}}{Similar to Lead sponsor, but may indicate who the data
#'                         was submitted on behalf of, or a subsidiary of the sponsor.
#'                         }
#'   \item{\code{OVERALL_STATUS}}{Active, not recruiting,
#'                              Approved for marketing,
#'                              Available,
#'                              Completed,
#'                              Enrolling by invitation,
#'                              No longer available,
#'                              Not yet recruiting,
#'                              Recruiting,
#'                              Suspended,
#'                              Temporarily not available,
#'                              Terminated,
#'                              Withdrawn,
#'                              Withheld
#'                              }
#'   \item{\code{START_DATE}}{Date in MM YYYY format eg. Jan 2012}
#'   \item{\code{COMPLETION_DAYE}}{Date in MM YYYY format eg. Jan 2012}
#'   \item{\code{PHASE}}{Phase 0,
#'                     Phase 1,
#'                     Phase 2,
#'                     Phase 1/Phase 2,
#'                     Phase 3,
#'                     Phase 2/Phase 3,
#'                     Phase 4
#'                     N/A
#'                    }
#'   \item{\code{ENROLLMENT}}{number of participants in the study in integer format}
#'   \item{\code{WHY_STOPPED}}{if trial suspended then the reason for suspension}
#'   \item{\code{AGENCY}}{Lead sponsor}
#'   \item{\code{CONDITION}}{Primary disease or condition being studied or focus of the study}
#'    }
#'
"processed_clinical_study_table"

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
