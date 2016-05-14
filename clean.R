# Remove location outlier:
indx <- with(elevators, which(LONGITUDE < -75 & LATITUDE < 40.4))
if(length(indx) > 0) {
    elevators <- elevators[-indx, ]
}
