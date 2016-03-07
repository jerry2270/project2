Emissions.total <- aggregate(NEI$Emissions, list(year = NEI$year), sum)
names(Emissions.total) <- c('year', 'Emissions')
barplot(Emissions.total$Emissions/1000, names.arg =  Emissions.total$year, xlab = 'Year', ylab = 'Emission(kilotons)', main =  'Total emissions from 1999 to 2008', col = 'steelblue')
