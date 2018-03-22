#2-3
# Latami przestępnymi są te, których numeracja:
#jest podzielna przez 4 i niepodzielna przez 100, 
#lub jest podzielna przez 400.
wszystkie_lata <- c(1800:2018)
for(i in wszystkie_lata) {
  if(i %% 4 == 0) {
    if(i %% 100 != 0){
      print(i)
    }
  }
  else if (i %% 400 == 0){
    print(i)
  }
}