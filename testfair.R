fair = read.table("M:/R/ter/fair.txt",header=T,sep="\t",dec=".")


hist(fair$age,prob=TRUE)
x=seq(min(fair$age),max(fair$age),length=1000)
lines(x,dnorm(x,mean(fair$age),sd(fair$age)),col="red")

plot(ecdf(fair$age))
lines(x,pnorm(x,mean(fair$age),sd(fair$age)))

qqnorm(fair$age)
qqline(fair$age)

