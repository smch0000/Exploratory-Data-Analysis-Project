NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Subsetting the Baltimore-City Data & aggregating by years & emission-types  
baltimore_data <-subset(NEI,NEI$fips=="24510")
baltimore_type_sum <- aggregate(baltimore_data$Emissions,by=list(baltimore_data$year,baltimore_data$type),FUN= sum)


library(ggplot2)

g<-ggplot(data=baltimore_type_sum ,aes(baltimore_type_sum$Group.1,baltimore_type_sum$x))
g<-g+geom_point(aes(color=baltimore_type_sum$Group.2, alpha=0.5, size=4), show.legend = FALSE)
g<-g+facet_grid(.~baltimore_type_sum$Group.2)+geom_smooth()
g<-g+xlab("Years")+ylab("Total Emissions (tons)")+ggtitle("Total Emissions of PM2.5 in Baltimore City By pollutant type (1999-2008)")
ggsave("plot3.png", width=12,height = 6)