# Using local elevators.csv file:
p <- pipe("sed -e 1d -e 's/DV_FLOOR_TO,,LATITUDE/DV_FLOOR_TO,XJUNK,LATITUDE/' elevators.csv")
elevators <- read.csv(p, stringsAsFactors = FALSE)
elevators$XJUNK <- NULL

# Reading data from github:
DATAURL <- "https://github.com/datanews/elevators/raw/master/elevators.csv"
elevators <- read.csv(DATAURL, stringsAsFactors = FALSE, skip = 1)
elevators$X <- NULL
# Set dates
elevators$DV_LASTPER_INSP_DATE <-
    as.Date(as.character(elevators$DV_LASTPER_INSP_DATE), format="%Y%m%d")
elevators$DV_STATUS_DATE <-
    as.Date(as.character(elevators$DV_STATUS_DATE), format="%Y%m%d")
