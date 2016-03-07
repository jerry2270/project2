Bal <- NEI[NEI$fips == '24510',]
Bal.type <- aggregate(Bal$Emissions, list(type = Bal$type, year = Bal$year), sum)
names(Bal.type) <- c('Type', 'Year', 'Emissions')
ggplot(data = Bal.type, aes(x = Year, y = Emissions, fill = Type)) + geom_histogram(stat = 'identity')+ facet_grid(.~Type) 
