# Uvoz s spletne strani

library(XML)

# Vrne vektor nizov z odstranjenimi začetnimi in končnimi "prazninami" (whitespace)
# iz vozlišč, ki ustrezajo podani poti.
stripByPath <- function(x, path) {
  unlist(xpathApply(x, path,
                    function(y) gsub("^\\s*(.*?)\\s*$", "\\1", xmlValue(y))))
}

uvozi.motogp <- function() {
  url.motogp <- "http://en.wikipedia.org/wiki/List_of_Grand_Prix_motorcycle_racing_World_champions"
  doc.motogp <- htmlTreeParse(url.motogp, useInternalNodes=TRUE)
  
  # Poiščemo vse tabele v dokumentu
  tabele <- getNodeSet(doc.motogp, "//table")
  
  # Iz druge tabele dobimo seznam vrstic (<tr>) neposredno pod
  # trenutnim vozliščem
  vrstice <- getNodeSet(tabele[[1]], "./tr")
  
  # Seznam vrstic pretvorimo v seznam (znakovnih) vektorjev
  # s porezanimi vsebinami celic (<td>) neposredno pod trenutnim vozliščem
  seznam <- lapply(vrstice[2:length(vrstice)], stripByPath, "./td")
  imena <- unlist(lapply(vrstice[2:length(vrstice)], stripByPath, "./td/span[@class='sortkey']"))
  
  # Iz seznama vrstic naredimo matriko
  matrika <- matrix(unlist(seznam), nrow=length(seznam), byrow=TRUE)
  
  # Imena stolpcev matrike dobimo iz celic (<th>) glave (prve vrstice) prve tabele
  stolpci <- gsub("\n", " ", stripByPath(vrstice[[1]], ".//th"))
  colnames(matrika) <- stolpci[-1]
  
  zmage <- strsplit(matrika[,"Winning span"], substr(matrika[1,"Winning span"], 5, 5), fixed = TRUE)
  prva.zmaga <- sapply(zmage, function(x) x[[1]])
  zadnja.zmaga <- sapply(zmage, function(x) x[[length(x)]])
  
  
  # Podatke iz matrike spravimo v razpredelnico
  return(data.frame(Country = matrika[,"Country"], First.win = prva.zmaga, Last.win = zadnja.zmaga,
                    apply(matrika[,4:9], 2, as.numeric), row.names=imena))
}