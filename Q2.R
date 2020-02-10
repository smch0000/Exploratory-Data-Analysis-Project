NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

baltimore_data <-subset(NEI,NEI$fips=="24510")

baltimore_year_sum <- aggregate(baltimore_data$Emissions,by=list(baltimore_data$year),FUN= sum)


png(filename = "plot2.png")

plot(baltimore_year_sum$Group.1,baltimore_year_sum$x, typ="lines",
     main = "Total Emissions of PM2.5 in Baltimore City", xlab = "year", 
     ylab = "Total Emissions (tons)")
dev.off()