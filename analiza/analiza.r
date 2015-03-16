# 4. faza: Analiza podatkov

# Uvozimo funkcijo za uvoz spletne strani.
#source("lib/xml.r")

# Preberemo spletno stran v razpredelnico.
#cat("Uvažam spletno stran...\n")
#tabela <- preuredi(uvozi.obcine(), obcine)

# Narišemo graf v datoteko PDF.
#cat("Rišem graf...\n")
#pdf("slike/naselja.pdf", width=6, height=4)
#plot(tabela[[1]], tabela[[4]],
#     main = "Število naselij glede na površino občine",
#     xlab = "Površina (km^2)",
#     ylab = "Št. naselij")
#dev.off()

pdf("slike/Analiza_hitrosti.pdf")

m <- apply(Hitrost, 1, function(x) as.numeric(x[1]))
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost leta 2010', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('maroon1'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)

m <- apply(Hitrost, 1, function(x) as.numeric(x[2]))
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost leta 2011', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('darkgoldenrod1'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)

m <- apply(Hitrost, 1, function(x) as.numeric(x[3]))
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost leta 2012', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('magenta4'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)

m <- apply(Hitrost, 1, function(x) as.numeric(x[4]))
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost leta 2013', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('bisque'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)

m <- apply(Hitrost, 1, function(x) as.numeric(x[5]))
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost leta 2014', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('cadetblue1'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)
dev.off()


pdf("slike/Analiza_casa.pdf")

m <- apply(Cas, 1, function(x) as.numeric(x[1]))
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas leta 2010', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('maroon1'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)

m <- apply(Cas, 1, function(x) as.numeric(x[2]))
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas leta 2011', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('cyan4'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)

m <- apply(Cas, 1, function(x) as.numeric(x[3]))
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas leta 2012', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('beige'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)

m <- apply(Cas, 1, function(x) as.numeric(x[4]))
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas leta 2013', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('brown2'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)

m <- apply(Cas, 1, function(x) as.numeric(x[5]))
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas leta 2014', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('aquamarine'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)
dev.off()


