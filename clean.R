# Remove location outlier:
indx <- with(elevators, which(LONGITUDE < -75 & LATITUDE < 40.4))
if(length(indx) > 0) {
    elevators <- elevators[-indx, ]
}
countNA <- sapply(elevators, function(x) sum(is.na(x)))
# Drop TEST, DUMMY observations:
indxTESTDUMMY <- with(elevators,
    which(HOUSE_NUMBER == "TEST" | STREET_NAME == "DUMMY RECORD"))
elevators <- elevators[-indxTESTDUMMY, ]
# Trim white space
indxChar <- which(sapply(elevators, is.character))
for(i in indxChar) {
	elevators[, i] <- trimws(elevators[, i])
}
