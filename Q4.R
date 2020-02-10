NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#using grepl to extract the coal source SSC Codes from SSC dataset 
#and susetting the emssion based on coal from NEI dataset

coal_class_code <-SCC[grepl("Coal",SCC$Short.Name),]
coal_emission_data <- NEI[NEI$SCC %in% coal_class_code$SCC,]

#Aggregating the Emission(coal) by Years 
coal_emmision_sum_byyear <- aggregate(coal_emission_data$Emissions,by=list(coal_emission_data$year),FUN=sum)
colnames(coal_emmision_sum_byyear) <-c("Year","Emissions")

library(ggplot2)

g<-ggplot(data=coal_emmision_sum_byyear ,aes(Year,Emissions))
g<-g+geom_point(aes(color='red',size=4),show.legend = FALSE)+geom_smooth(color='red')
g<-g+xlab("Years")+ylab("Total Emissions (tons)")+ggtitle("Coal Related Emissions of PM2.5 in US from 1999-2008")
ggsave("plot4.png", width=12,height = 6)
