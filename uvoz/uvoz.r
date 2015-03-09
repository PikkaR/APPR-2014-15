# 2. faza: Uvoz podatkov

source("lib/xml.r")

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

cat("Uvažam podatke o svetovnih prvakih...\n")
WorldChamps <- uvozi.motogp()



uvoziStatistika2014 <- function() {
  return(read.table("podatki/Statistika2014.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2014...\n")
Statistika2014 <- uvoziStatistika2014()


uvoziStatistika2013 <- function() {
  return(read.table("podatki/Statistika2013.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2013...\n")
Statistika2013 <- uvoziStatistika2013()




uvoziStatistika2012 <- function() {
  return(read.table("podatki/Statistika2012.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2012...\n")
Statistika2012 <- uvoziStatistika2012()


uvoziStatistika2011 <- function() {
  return(read.table("podatki/Statistika2011.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2011...\n")
Statistika2011 <- uvoziStatistika2011()


uvoziStatistika2010 <- function() {
  return(read.table("podatki/Statistika2010.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2010...\n")
Statistika2010 <- uvoziStatistika2010()



