PlotBaltimore <- NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD",]
PlotBaltimore$city <- "Baltimore City"
ggplot(PlotBaltimore, aes(year, Emissions)) +
stat_summary(geom="line", fun.y="sum", color="green") + 
xlab("Year") + ylab("Total PM25 Emissions") +
ggtitle("Total PM25 Emissions from Motor Vehicles, Baltimore, 1999-2008") +
theme(plot.title=element_text(color="blue")) +
theme(axis.title=element_text(color="darkgreen"))
