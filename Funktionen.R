Sys.setlocale("LC_ALL", "english")

######################################################
####### Datumsformat prüfen
######################################################
datumsformattest <- function(datum){
  
  testergebnis <- TRUE
  
  ziffern <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "0")
  
  if(nchar(datum) != 10){
    testergebnis <- FALSE
  }else if(substr(datum, 3,3) != "." & substr(datum, 6,6) != "."){
    testergebnis <- FALSE
  }
  
  if(nchar(datum) == 10){
    for(i in c(1,2,4,5,7,8,9,10)){
      if(!(substr(datum, i,i) %in% ziffern)){
        testergebnis <- FALSE
      }
    }
  }
  
  return(testergebnis)
  
}