Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

sPerformanceMaths=read.table("student-mat.csv",sep=";",header=TRUE)
sPerformancePor=read.table("student-por.csv",sep=";",header=TRUE)

sPerformanceMerged=merge(sPerformanceMaths,sPerformancePor,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))

mean(sPerformanceMerged$age)
sd(sPerformanceMerged$age)

Mode(sPerformanceMerged$famrel.x)

