sPerformanceMaths=read.table("student-mat.csv",sep=";",header=TRUE)
sPerformancePor=read.table("student-por.csv",sep=";",header=TRUE)

sPerformanceMerged=merge(sPerformanceMaths,sPerformancePor,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(sPerformanceMerged)) # 382 students
View(sPerformanceMerged)

summary(sPerformanceMerged)

summary(sPerformanceMerged$G1.x)
summary(sPerformanceMerged$G1.y)
summary(sPerformanceMerged$G2.x)
summary(sPerformanceMerged$G2.y)
summary(sPerformanceMerged$G3.x)
summary(sPerformanceMerged$G3.y)
