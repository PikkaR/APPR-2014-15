# 3. faza: Izdelava zemljevida

# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.
cat("Uvažam zemljevid...\n")
svet <- uvozi.zemljevid("http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip", 
                          "svet", "ne_110m_admin_0_countries.shp", mapa = "zemljevid", 
                          encoding = "Windows-1250") 
                          

t <- table(Dirkalisca$Country)
names(t)[names(t) == "GREAT BRITAIN"] <- "UNITED KINGDOM"
names(t)[names(t) == "YUGOSLAVIA"] <- "CROATIA"
m <- match(toupper(svet$name_long), names(t))


# Izračunamo povprečno velikost družine.
min.dirke <- min(t)
max.dirke <- max(t)

# Narišimo zemljevid v PDF.
cat("Rišem zemljevid...\n")
pdf("slike/dirkaliscasvet.pdf")

n = max(t)
barve = topo.colors(n)[1+(n-1)*(t-min.dirke)/(max.dirke-min.dirke)]
plot(svet, col = barve[m])
u <- unique(t)
u <- u[order(u)]
legend("left", legend = u, fill = topo.colors(n)[u], bg="white")

dev.off()