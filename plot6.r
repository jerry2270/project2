PlotBaltimore <- NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD",]
PlotBaltimore$city <- "Baltimore City"
PlotLA <- NEI[NEI$fips=="06037" & NEI$type=="ON-ROAD",]
PlotLA$city <- "Los Angeles County"
PlotData <- rbind(PlotBaltimore, PlotLA)
ggplot(PlotData, aes(year, Emissions, color=city)) +
stat_summary(geom="line", fun.y="sum") + 
xlab("Year") + ylab("Total PM25 Emissions") +
ggtitle("Total PM25 Emissions, Baltimore & LA Vehicles, 1999-2008") +
theme(plot.title=element_text(color="blue")) +
theme(axis.title=element_text(color="darkgreen"))
