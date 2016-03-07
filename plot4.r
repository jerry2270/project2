ID_Coal <- grep("Coal", SRC$EI.Sector, value=T)
CoalData <- subset(SRC, SRC$EI.Sector %in% ID_Coal)
CoalDataNEI <- subset(NEI, NEI$SCC %in% CoalData$SCC)
PlotData <- aggregate(CoalDataNEI["Emissions"], list(year=CoalDataNEI$year), sum)
ggplot(PlotData, aes(year, Emissions)) +
stat_summary(geom="line", fun.y="sum", color="green") + 
xlab("Year") + ylab("Total PM25 Emissions") +
ggtitle("Total PM25 Emissions from Coal Combustion, USA, 1999-2008") +
theme(plot.title=element_text(color="blue")) +
theme(axis.title=element_text(color="darkgreen"))
