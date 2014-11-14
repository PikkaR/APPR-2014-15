# Analiza podatkov s programom R, 2014/15

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2014/15.

## Tematika

Za temo projekta pri ANNP sem si izbrala dirkanje z motorji. To je šport, pri katerem dirkači tekmujejo v treh različnih kategorijah. To so Moto3, Moto2 ter najprestižnejši izmed njih, MotoGP. V svoji nalogi nameravam analizirati znamke motorjev, ki jih vozijo, zmage, ki so jih osvojili skozi leta, rezultate iz svetovnih pervenstev, rekorde, ki so jih osvojili (najhitreje prevožen krog, kolikokrat so se uvrstili na stopničke,...) ter tudi seveda države, iz katerih najboljši dirkači sveta prihajajo. 

Podatki: http://en.wikipedia.org/wiki/Grand_Prix_motorcycle_racing
         http://www.motogp.com/

## Program

Glavni program se nahaja v datoteki `projekt.r`. Ko ga poženemo, se izvedejo
programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Slike, ki jih program naredi, se shranijo v mapo
`slike/`. Zemljevidi v obliki SHP, ki jih program pobere, se shranijo v mapo
`zemljevid/`.

## Poročilo

Poročilo se nahaja v mapi `porocilo/`. Za izdelavo poročila v obliki PDF je
potrebno datoteko `porocilo/porocilo.tex` prevesti z LaTeXom. Pred tem je
potrebno pognati program, saj so v poročilu vključene slike iz mape `slike/`.
