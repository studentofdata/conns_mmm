# GRP data to munge down from Media Stewards
# Data is meant to be munged down completely 
dataset <- NA
grp.data <- NA
ds.path <- "C:/Users/Bobby Row/Documents/Google Drive/Grammin/Conns/R/data/"
paths <- list.files(path = ds.path)


# initial grab of all files in dataset processing folder
for(i in 1:length(paths))
{
  
  path = paths[i]
  print(path)
  dataset[i] <- path
}


grp_cleanup <- function(x) 
{
  grp <- x
  names(grp)[names(grp) == "Market"] <- "market"
  names(grp)[names(grp) == "Advertiser"] <- "advertiser"
  names(grp)[names(grp) == "Approved.GRPs.000s"] <- "grp"
  names(grp)[names(grp) == "Campaign"] <- "campaign"
  names(grp)[names(grp) == "Vendor"] <- "vendor"
  names(grp)[names(grp) == "Commercial.Code"] <- "comm"
  names(grp)[names(grp) == "Date.Aired"] <- "date"
  names(grp)[names(grp) == "Time.Aired"] <- "time"
  names(grp)[names(grp) == "Length.Aired"] <- "length"
  names(grp)[names(grp) == "Day.Aired"] <- "day"
  
  grp.v1 <- grp
  date <- strptime(grp.v1$date, "%m/%d/%Y")
  grp.v1$date <- date
  grp.v1$X <- NULL
  
  grp.v1$market <- tolower(grp.v1$market)
  grp.v1$day <- tolower(grp.v1$day)
  
  grp.v1$advertiser <- NULL
  return(grp.v1)
  
}


for(i in 1:length(dataset))
{
  filepath <- as.character(paste0(ds.path,dataset[i]))
  current.data <- as.data.frame(read.csv(file = filepath))
  print(filepath)
  print(names(current.data))
  temp <- grp_cleanup(current.data)
  grp.data <- rbind(grp.data, temp)  
}














