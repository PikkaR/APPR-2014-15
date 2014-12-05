drzave <- unique(Dirkalisca$Country)
dirke <- sapply(drzave, function(x) sum(Dirkalisca[Dirkalisca["Country"] == x,"Times"]))
meja <- 27
ostale <- dirke < meja
dirke <- c(dirke[!ostale], "Ostale" = sum(dirke[ostale]))

pdf("slike/Dirkalisca.pdf") #naslov pdfja 
pie(dirke, cex = 0.5, main = "Dirkališča") 
dev.off() 

total <- apply(WorldChampByCountry, 1, function(x) x["Total"])
meja <- 5
ostale <- total < meja
total <- c(total[!ostale], "Ostale" = sum(total[ostale]))
pdf("slike/WorldChampByCountry.pdf") #naslov pdfja 
pie(total,
    main = "Število svetovnih prvakov po državah", cex.main = 1.5) 
#text(0,1,"Število svetovnih prvakov po državah", cex =2) 
dev.off() 
  
