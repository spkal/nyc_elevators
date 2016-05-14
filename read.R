p <- pipe("sed -e 1d -e 's/DV_FLOOR_TO,,LATITUDE/DV_FLOOR_TO,XJUNK,LATITUDE/' elevators.csv")
elevators <- read.csv(p, stringsAsFactors = FALSE)
elevators$XJUNK <- NULL
