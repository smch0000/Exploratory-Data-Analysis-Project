NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Subsetting the Baltimore-City Data & aggregating by years & emission-types  
twocity_onroad_data <-subset(NEI,(NEI$fips=="24510"|NEI$fips=="06037") & NEI$type=="ON-ROAD")

twocity_yearsum <- aggregate(twocity_onroad_data$Emissions, 
                             by=list(twocity_onroad_data$fips, twocity_onroad_data$year),
                             FUN=sum)

city_name <-c(24510:"B",06037:"LA")

colnames(twocity_yearsum) <- c("City","Year","Emissions")


library(ggplot2)

g<-ggplot(data=twocity_yearsum,aes(Year,Emissions, color=City))
g<-g+geom_point(size=2)+geom_line()+scale_color_hue(labels = c("LA County", "Baltimore City"))
g<-g+ggtitle("Emissions of PM2.5 in Baltimore City and LA County") + 
  ylab("Total Emissions from motor vehicles (tons)") + 
  xlab("Year") 
ggsave("plot6.png", width=12,height = 6)
