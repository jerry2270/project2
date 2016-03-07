Bal <- NEI[NEI$fips == '24510',]
Bal.total <- aggregate(Bal$Emissions, list(year = Bal$year), sum)
names(Bal.total) <- c('year', 'Emissions')
barplot(Bal.total$Emissions/1000, names.arg =  Bal.total$year, xlab = 'Year', ylab = 'Emission(kilotons)', main =  'Total emissions in Baltimore City from 1999 to 2008', col = 'steelblue')
