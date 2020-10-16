### Jordyn - Short wave
##as.vector(netR$doy)
setwd("~/Desktop/code/resource_map_doi_10_18739_A2S46H57S/data")
netR <- read.csv("netR.csv")
as.vector(netR$doy)

##SUBSETTING
#ss1 = SRUp, high density, 100
#ss2 = SRUp, high density, 800
#ss3 = SRUp, low density, 100
#ss4 = SRUp, low density, 800
ss1 <-subset(netR,sensorZ==100&year==2017&site=="hd")
ss2 <-subset(netR,sensorZ==800&year==2017&site=="hd")
ss3 <-subset(netR,sensorZ==100&year==2017&site=="ld")
ss4 <-subset(netR,sensorZ==800&year==2017&site=="ld")

ss1
ss2
ss3
ss4

##AGGREGATING
#shortwave first and then day
agg1<-aggregate(SRUp~doy,ss1,mean)
agg2<-aggregate(SRUp~doy,ss2,mean)
agg3<-aggregate(SRUp~doy,ss3,mean)
agg4<-aggregate(SRUp~doy,ss4,mean)

agg1
agg2
agg3
agg4