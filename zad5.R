# Zad 5-1
library(readr)
movies <- read_csv("GitHub/tipn/datasets/movies.csv")
View (movies)
 
library(tidyverse)


# Zad 5-2
#Pokaż wszystkie komedie nakręcone w 2005 roku.
filter (movies, year == 2005, Comedy == 1)


# Zad 5-3
#Pokaż tibble z tytułami, rokiem produkcji i budżetem filmów uszeregowaną od najwyższego do najniższego budżetu.
select (movies, title, year, budget) %>% arrange(desc(budget))


# Zad 5-4
#Jaki były najlepsze filmy animowane lat 90-tych?
filter (movies, year >= 1990 & year < 2000, Animation == 1, rating > 8.91)
#To niby jest Top10 ale tak naprawdę najlepsze animację lat 90 to: Toy Story, Toy Story2, Król Lew, Król Lew2, PIękna i Bestia, Herkules i Legenda Camelotu


# Zad 5-5
#Jakie są najdłuższe dramaty wszechczasów?
filter (movies, Drama == 1) %>% arrange(desc(length))
#Jestem pełna podziwu że film który trwa 647 min ma ocenę 8.40


# Zad 5-6
#Dla każdego z kategorii MPAA policz średnią i odchylenie standardowe ocen filmów mających daną kategorię.
group_by(movies, mpaa) %>%
  summarise(srednia = mean(rating), odchylenie = mad(rating))
  

