#2-2
#Studia kończą się 30 czerwca
#Studia można skończyć planowo, albo z poślizgiem (rocznym, dwuletnim…) Utwórz zmienną, która pozwoli łatwo tym manipulować.
#Dzisiejszą datę i godzinę można wpisać “na sztywno”- 21:00 08.03
#Rok zawsze trwa 365 dni a miesiąc zawsze 30

#drugi rok
"drugi_rok" <- 3 + 22*24 + 9*30*24
#trzeci i czwarty rok
"kazdy_nastepny_rok" <- 12*30*24
#ostatni rok
"ostatni_rok" <- 9*30*24
#Za ile godzin skończę studia?
"do_konca_pozostalo" <- drugi_rok + 2 * kazdy_nastepny_rok + ostatni_rok
paste("do", "końca", "pozostało", do_konca_pozostalo, "godzin")