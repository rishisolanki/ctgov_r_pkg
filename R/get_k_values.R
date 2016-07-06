#' Get K piecewise function based on kterm and location
#' @param location Facility city
#' @param kterm Disease or primary condition under observation. Default is blank
#' @param start_date e.g. Jan 2012
#' @param end_date e.g. March 2013
#' @phase 0 for Phase 0, Phase 1, Phase 1/Phase 2, Phase 2 and 1 for Phase 3, Phase 4 and Phase 2/Phase 3. Default is blank
#' @return A list containing count of trials in operation per month between start and end date
#' @export

get_k_value <- function(location, kterm="", start_date, end_date, phase=""){

    if(kterm == ""){
    d1 = read_processed_clinical_data()
    l1 = read_location_data()
    }else{
      d1 <- search_clinical_trial(kterm)
      l1 <- search_locations(kterm)
    }

  if(phase == 0){
    d1 <- d1[which(d1$PHASE == "Phase 0" | d1$PHASE == "Phase 1" | d1$PHASE == "Phase 1/Phase 2" | d1$PHASE == "Phase 2"),]
  }else if(phase == 1){
    d1 <- d1[which(d1$PHASE == "Phase 3" | d1$PHASE == "Phase 4" | d1$PHASE == "Phase 2/Phase 3"),]
  }


  # Removing missing values from d1
  d2 <- d1[which(!is.na(d1$START_DATE)),]
  d2 <- d2[which(!is.na(d2$COMPLETION_DATE)),]
  d2 <- d2[which(is.na(d2$WHY_STOPPED)),]
  d2 <- d2[which(!is.na(d2$ENROLLMENT)), ]

  l2 <- l1[which(l1$CITY == location),] # get only data set from same city

  l3 <- merge(l2, d2[,c("NCT_ID", "START_DATE", "COMPLETION_DATE", "ENROLLMENT")], by.x = "NCT_ID", by.y = "NCT_ID") # merge location & srt_date, end_date & enrollment info

  l4 <- l3[which((as.yearmon(start_date) <= as.yearmon(l3$COMPLETION_DATE)) & (as.yearmon(end_date) >= as.yearmon(l3$START_DATE))),] # only keep those dates which overlap

  if(dim(l4)[1] == 0 )
  {
    stop("No overlap for the given dates")
  }
  base_st_time <- round(12*(as.yearmon(start_date) - as.yearmon("JAN 1900")))
  base_end_time <- round(12*(as.yearmon(end_date)-as.yearmon("JAN 1900")))

  l4$st_diff <- round(12*(as.yearmon(l4$START_DATE)-as.yearmon("JAN 1900")))
  l4$end_diff <- round(12*(as.yearmon(l4$COMPLETION_DATE)-as.yearmon("JAN 1900")))


  l6<-rep(0, base_end_time - base_st_time + 1)
  for(i in 1:length(l6))
  {
    l6[i]<-sum(base_st_time+i-1 >= l4$st_diff & base_st_time+i-1 <= l4$end_diff)


  }

  return (l6)
}


