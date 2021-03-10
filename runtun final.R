library(forecast)
library(ggplot2)
library(tseries)
library(summarytools)
library(readxl)
library(data.table)
library(dplyr)
library(TSA)


fuelts<-ts(fuelprice)
eacf(fuelts)
eacf(diff(fuelts,differences=1))

plot(diff(fuelts,differences=1))
tsdisplay(diff(fuelts,differences=1))

forecast(diff(fuelts,differences=1))
adf.test()

auto.arima(fuelts)

model1<-Arima(fuelts,order=c(1,1,2))
checkresiduals(model1)

plot(forecast(Arima(fuelts,order=c(1,1,1)),h=5))
