#grp.data is the frame we are munging on, these are the column names at this juncture:
# "campaign" "market"   "vendor"   "Media"    "comm"     "grp"      
# "date"     "time"     "length"   "day"       

grp.data.v1 <- grp.data[!(is.na(grp.data$market)),]

hist.log.vector <- vector(mode = "integer", length = nrow(grp.data.v1))
#grp.data.v1$market <- gsub("ppm", "", grp.data.v1$market)

# Logical vector for hispanic or not
temp.vector <- ifelse(grepl("(hisp)",grp.data.v1$market),1,0)
hist.log.vector <- (hist.log.vector + temp.vector)
hist.log.vector <- ifelse(hist.log.vector >= 1, 1, 0)
grp.data.v1$hisp <- hist.log.vector

# Clean the files of "(hisp)" & "ppm" designations
grp.data.v1$market <- gsub(" (hisp)", "", grp.data.v1$market, fixed = TRUE)
grp.data.v1$market <- gsub(" ppm", "", grp.data.v1$market, fixed = TRUE)

#remap these DMA's to what I found in neustar sets 
market <- revalue( grp.data.v1$market, 
                             c("albuquerque-santa fe" = "ALBUQ-SANTA FE (790)" ,
                               "austin" = "AUSTIN (635)",
                               "corpus christi" = "CORPUS CHRISTI (600)" ,
                               "dallas-ft. worth" = "DALLAS-FT.WORTH (623)",
                               "dallas" = "DALLAS-FT.WORTH (623)",
                               "harlingen-wslco-brnsvl-mc" = "HRLG-WSL-BRN-MA (636)",
                               "oklahoma city" = "OKLAHOMA CITY (650)",
                               "san antonio" = "SAN ANTONIO (641)",
                               "tucson (sierra vista)" = "TUCSON (S VSTA) (789)",
                               "el paso (las cruces)" = "EL PASO (765)" ,
                               "baton rouge" =  "BATON ROUGE (716)",
                               "beaumont-port arthur" =  "BEAUMNT-PRT ART (692)",
                               "houston" = "HOUSTON (618)",
                               "lafayette, la" = "LAFAYETTE  LA (642)",
                               "lake charles" = "LAKE CHARLES (643)",
                               "lufkin-nacogdoches" = "TYLER-LONGVIEW (709)",
                               "waco-temple-bryan" = "WACO-TEMPL-BRYN (625)",
                               "mc allen-brownsville" = "HRLG-WSL-BRN-MA (636)",
                               "tyler-longview(lfkn&ncgd)" = "TYLER-LONGVIEW (709)"))

grp.data.v1$market <- market

