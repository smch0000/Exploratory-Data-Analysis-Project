NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Subsetting the Baltimore-City Data & aggregating by years & emission-types  
baltimore_onroad_data <-subset(NEI,NEI$fips=="24510" & NEI$type=="ON-ROAD")

baltimore_onroad_yearsum <- aggregate(baltimore_onroad_data$Emissions,by=list(baltimore_onroad_data$year),FUN= sum)
colnames(baltimore_onroad_yearsum) <- c("Year","Emissions")

library(ggplot2)

g<-ggplot(data=baltimore_onroad_yearsum,aes(Year,Emissions))
g<-g+geom_point(aes(color=2,size=3),show.legend = FALSE)+geom_smooth()
g<-g+xlab("Years")+ylab("Total Emissions (tons)")+ggtitle("Total Emissions of PM2.5 related to Motor Vehicles (1999-2008)")
ggsave("plot5.png", width=12,height = 6)

