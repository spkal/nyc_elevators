# All elevators:
with(elevators, plot(LONGITUDE, LATITUDE, pch=16, cex=.2))
# Elevators in Manhattan:
with(elevators[elevators$Borough == "Manhattan",],
	 plot(LONGITUDE, LATITUDE, pch=16, cex=.2))
