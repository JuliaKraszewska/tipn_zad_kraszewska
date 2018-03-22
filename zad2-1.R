#2-1.1
"kwartal_1" <- c("styczeń", "luty", "marzec") 
"kwartal_2" <- c("kwiecień", "maj", "czerwiec")
"kwartal_3" <- c("lipiec", "sierpień", "wrzesień")
"kwartal_4" <- c("październik", "listopad", "grudzień")
#2-1.2
"rok" <- c(kwartal_1, kwartal_2, kwartal_3, kwartal_4)
#2-1.3
rok[1:2]
#2-1.4
rok[8:12]
#2-1.5
rok[seq(1,12,2)]
#2-1.6
nchar(rok)
#2-1.7
mean(nchar(rok))
sd(nchar(rok))
"miesiace_zimowe" <- c("grudzień", "styczeń", "luty", "marzec")
mean(nchar(miesiace_zimowe))
sd(nchar(miesiace_zimowe))
#2-1.8
subset(rok, endsWith(rok, "ec"))

