m <- apply(WinnersByNationality, 1, function(x) as.numeric(x[3:4]))
pdf("slike/Zmage_po_drzavah.pdf")
barplot(m, beside=TRUE, main ='Zmage po državah', sub
        ='Države', ylab = 'Število zmag', col = c('maroon1','magenta4'),
        legend =c('Število zmag','Število dirkačev'),
        names.arg=WinnersByNationality$Country, las=2, cex.names=0.5)
dev.off()




Analiza2010 <- Analiza2010[order(Analiza2010$Circuit), ]
Analiza2011 <- Analiza2011[order(Analiza2011$Circuit), ]
Analiza2012 <- Analiza2012[order(Analiza2012$Circuit), ]
Analiza2013 <- Analiza2013[order(Analiza2013$Circuit), ]
Analiza2014 <- Analiza2014[order(Analiza2014$Circuit), ]
Dolzina <- data.frame(A2010=Analiza2010$Length.km., A2011=Analiza2011$Length.km.,A2012=Analiza2012$Length.km., A2013=Analiza2013$Length.km., A2014=Analiza2014$Length.km.)
row.names(Dolzina) <- Analiza2010$Circuit


m <- apply(Dolzina, 1, function(x) as.numeric(x[1:5]))
pdf("slike/Dolzina.pdf")
barplot(m, beside=TRUE, main ='Dolžine dirkališč', sub
        ='Dirkališča', ylab = 'Dolžina dirkališč', col = c('maroon1','magenta4',rgb(0,0,1,0.5), rgb(1,0,0,0.5), rgb(0,1,0,0.3)),
        legend =c('Leto 2010','Leto 2011','Leto 2012','Leto 2013','Leto 2014'),
        names.arg=row.names(Dolzina), las=2, cex.names=0.5)
dev.off()

Hitrost <- data.frame(A2010=Analiza2010$Speed.km.h., A2011=Analiza2011$Speed.km.h.,A2012=Analiza2012$Speed.km.h., A2013=Analiza2013$Speed.km.h., A2014=Analiza2014$Speed.km.h.)
row.names(Hitrost) <- Analiza2010$Circuit


m <- apply(Hitrost, 1, function(x) as.numeric(x[1:5]))
pdf("slike/Hitrost.pdf")
barplot(m, beside=TRUE, main ='Najvišja dosežena hitrost', sub
        ='Dirkališča', ylab = 'Najvišja dosežena hitrost', col = c('maroon1','magenta4',rgb(0,0,1,0.5), rgb(1,0,0,0.5), rgb(0,1,0,0.5)),
        legend =c('Leto 2010','Leto 2011','Leto 2012','Leto 2013','Leto 2014'),
        names.arg=row.names(Hitrost), las=2, cex.names=0.5)
dev.off()


Cas <- data.frame(A2010=Analiza2010$Time, A2011=Analiza2011$Time,A2012=Analiza2012$Time, A2013=Analiza2013$Time, A2014=Analiza2014$Time)
row.names(Cas) <- Analiza2010$Circuit


m <- apply(Cas, 1, function(x) as.numeric(x[1:5]))
pdf("slike/Cas.pdf")
barplot(m, beside=TRUE, main ='Najhitrejši dosežen čas', sub
        ='Dirkališča', ylab = 'Najhitrejši dosežen čas', col = c('maroon1','magenta4',rgb(0,0,1,0.5), rgb(1,0,0,0.5), rgb(0,1,0,0.5)),
        legend =c('Leto 2010','Leto 2011','Leto 2012','Leto 2013','Leto 2014'),
        names.arg=row.names(Cas), las=2, cex.names=0.5)
dev.off()
