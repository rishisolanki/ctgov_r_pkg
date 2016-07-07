
#' Plot k values as a step function w.r.t time
#' @param get_k_value_op Output from get_k_value()
#' @param start_date e.g. Jan 2012
#' @param end_date e.g. March 2013
#' @param kterm Disease / Primary condition (Optional)
#' @param location Optional
#' @return Plot a step function
#' @export
#'
plot_k_values <- function(get_k_value_op, start_date, end_date, kterm = "", location = ""){
  require(zoo)

  if(get_k_value_op == ""){
    stop("Please enter a correct input parameters")
  }

  if(start_date == "" | end_date == ""){
    stop("Please check start and end date")
  }

  if(is.na(as.yearmon(start_date)) | is.na(as.yearmon(end_date))){
    stop ("Please enter dates in MM YYYY format i.e Jan 2012")
  }

  p1 <- get_k_value_op
  p <- append(0,p1) # append zero because step function reduces length by 1
  sfunP <- stepfun(1:(length(p)-1),p,f=0)
  labelP = as.yearmon(as.yearmon(start_date) + seq(0, as.yearmon(end_date)-as.yearmon(start_date)+1/12,1/12))
  titleP <- paste("K function from", as.yearmon(start_date), "-", as.yearmon(end_date), "for", kterm , "in", location,  collapse = " " )
  plot(sfunP, xaxt = "n", main = titleP, ylab = "trial count", xlab = "MM YYYY")
  axis(1,1:length(p),as.yearmon(labelP))
}
