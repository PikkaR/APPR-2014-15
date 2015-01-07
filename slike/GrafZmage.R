m <- apply(WinnersByNationality, 1, function(x) as.numeric(x[3:4]))
pdf("slike/Zmage_po_drzavah.pdf")
barplot(m, beside=TRUE, main ='Zmage po državah', sub
        ='Države', ylab = 'Število zmag', col = c('maroon1','magenta4'),
        legend =c('Število zmag','Število dirkačev'),
        names.arg=WinnersByNationality$Country, las=2, cex.names=0.5)
dev.off()