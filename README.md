# Exploratory Data Analysis Project (Coursera)


### Project Description
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human 
health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality 
standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the 
EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can 
read more information about the NEI at the (linkhttp://www.epa.gov/ttn/chief/eiinformation.html)

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the 
course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

The data for this assignment are available from the course web site as a single zip file:

Data for Peer Assessment [29Mb](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip)


### Questions

Q1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot 
showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

![Plot 1](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot1.png)

Q2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips=="24510") 
from 1999 to 2008? Use the base plotting system to make a plot answering this question.

![Plot 2](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot2.png)


Q3. Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which 
of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in 
emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.


![Plot 3](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot3.png)



Q4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

![Plot 4](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot4.png)

Q5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

![Plot 5](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot5.png)

Q6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles 
County, California(fips == "06037"). Which city has seen greater changes over time in motor 
vehicle emissions?

![Plot 6](https://github.com/smch0000/Exploratory-Data-Analysis-Project/blob/master/plot6.png)
