library(DAAG)
#Simple linear Regression
plot(weight~volume, data=allbacks, pch=c(16,1)[unclass(cover)])
with(allbacks, text(weight~volume,labels=paste(1:15),pos=c(2,4)[unclass(cover)]))
summary(allbacks.lm<-lm(weight~volume+area,data = allbacks))
anova(allbacks.lm)
model.matrix(allbacks.lm)

#leaving out the intercept
allbacks.lm0 <- lm(weight~ -1+volume+area,data = allbacks)
summary(allbacks.lm0)
summary(allbacks.lm,correlation = TRUE)

#diagnostic plots
par(mfrow=c(2,2))
plot(allbacks.lm0)
par(mfrow=c(1,1))