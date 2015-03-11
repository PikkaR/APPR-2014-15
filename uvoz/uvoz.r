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





uvoziAnaliza2014 <- function() {
  return(read.table("podatki/Analiza2014.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2014...\n")
Analiza2014 <- uvoziAnaliza2014()

uvoziAnaliza2013 <- function() {
  return(read.table("podatki/Analiza2013.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2013...\n")
Analiza2013 <- uvoziAnaliza2013()

uvoziAnaliza2012 <- function() {
  return(read.table("podatki/Analiza2012.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2012...\n")
Analiza2012 <- uvoziAnaliza2012()

uvoziAnaliza2011 <- function() {
  return(read.table("podatki/Analiza2011.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2011...\n")
Analiza2011 <- uvoziAnaliza2011()

uvoziAnaliza2010 <- function() {
  return(read.table("podatki/Analiza2010.csv", sep = ",", as.is = TRUE,
                    
                    header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam statistične podatke za leto 2010...\n")
Analiza2010 <- uvoziAnaliza2010()




