sleep_hours <- c(7,4,8,9,5,11)
sleep_hours

for(number in sleep_hours){
  cat(number, "\n")
}

TsptoTbsp <- function(TsTb){
  (TsTb / 3)
}

Tsp <- c(1, 5, 2, 11, 12)

for(number in Tsp){
  Tbsp <- TsptoTbsp(number)
  cat(number, "Tsp is", Tbsp, "Tbsp", "\n")
}
