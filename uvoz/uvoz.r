# 2. faza: Uvoz podatkov

# Funkcija, ki uvozi podatke iz datoteke druzine.csv
uvoziWinnersByNationality <- function() {
  return(read.table("podatki/WinnersByNationality.csv", sep = ",", as.is = TRUE,
                      
                      
                      header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam podatke o zmagovalcih po narodih...\n")
WinnersByNationality <- uvoziWinnersByNationality()

# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.

uvoziWorldChampByCountry <- function() {
  return(read.table("podatki/WorldChampByCountry.csv", sep = ",", as.is = TRUE,
                    row.names = 1,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam podatke o svetovnih prvakih po državah...\n")
WorldChampByCountry <- uvoziWorldChampByCountry()


uvoziDirkalisca <- function() {
  return(read.table("podatki/Dirkalisca.csv", sep = ",", as.is = TRUE,
                    
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam podatke o svetovnih prvakih po državah...\n")
Dirkalisca <- uvoziDirkalisca()

