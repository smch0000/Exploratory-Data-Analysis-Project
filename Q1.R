NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

year_sum <- aggregate(NEI$Emissions, by= list(NEI$year), FUN=sum)

png(filename = "plot1.png")
plot(year_sum$Group.1,year_sum$x, type="l",
     main="Total Emission Variation(1999-2008)",
     xlab="Years",
     ylab="Total Estimation of PM2.5 (tones)")
dev.off()