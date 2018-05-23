# Zad 4-1

# 1.Ile jest zmiennych w zbiorze?
#11

# 2.Ile jest obserwacji w zbiorze?
#234

# 3.Co oznacza parametr engine displacement? Co oznacza miles per gallon?
#Objętość, pojemność skokowa cylindra to różnica pomiędzy maksymalną a minimalną objętością cylindra.Inaczej mówiąc jest to objętość utworzona w cylindrze pomiędzy górnym martwym położeniem tłoka (zewnętrznym górnym skrajnym położeniem) a jego dolnym martwym położeniem (wewnętrznym dolnym skrajnym położeniem).
#Miles per gallon to amerykańska wersja kilometrów na godzinę, MPG to miara tego jak dużo paliwa spala samochód. Odwrotnie niż w Europie mierzy się ile mil przejedzie pojazd na galonie paliwa, im więcej mil przejedzie tym lepiej.

# 4.Co oznaczają poszczególne zmienne?
#model- model name (Nazwa modelu)
#displ- engine displacement, in litres (Pojemność silnika w litrach)
#year- year of manufacture (Rok produkcji)
#cyl- number of cylinders (Liczba cylindrów)
#trans- type of transmission (Rodzaj transmisji)
#drv- f = front-wheel drive, r = rear wheel drive, 4 = 4wd (f = napęd na przednie koła, r = napęd na tylne koła, 4 = 4wd)
#cty- city miles per gallon (Spalanie w mieście w milach na galon)
#hwy- highway miles per gallon (Spalanie na autostradzie w milach na galon)
#fl- fuel type (Typ paliwa)
#class-"type" of car (Rodzaj samochodu)


# Zad 4-2
# Narysuj wykres punktowy pokazujący zależność pojemności silnika od spalania w mieście.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty))


# Zad 4-3
#Narysuj wykres słupkowy pokazujący ilość samochodów w poszczególnych klasach w zbiorze.
ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "Ilość samochodów w poszczególnych klasach", x = "Klasy", y = "Ilość") + 
  theme_light()


# Zad 4-4
#Narysuj histogram, pokazujący rozkład pojemności silnika samochodów w zbiorze.
ggplot(data = mpg) + 
  geom_histogram(mapping = aes(displ), bins = 12) +
  labs(title = "Rozkład pojemności silnika samochodów w zbiorze", x = "Pojemność", y = "Ilość") + 
  theme_minimal()


# Zad 4-5
#Narysuj wykres ramka-wąsy pokazujący zależność pojemności silnika od klasy samochodu.
ggplot(data = mpg, aes(x = class, y = displ, fill = class)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Zależność pojemności silnika od klasy samochodu", x = "Klasa", y = "Pojemność") + 
  theme_gray()