demo.data <- neustar.pull.v2
names(demo.data)[names(demo.data) == "Area.Name"] <- "market"

x <- sapply(demo.data, function(x) 
  {
    gsub(",","",x)
  })





