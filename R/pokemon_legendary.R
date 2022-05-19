pokemon_legendary<-function(x){
  if (pokemon$is_legendary[pokemon$name==x]==0){
    print(paste0(x, " is not a legendary pokemon"))
  } else
  {
    print(paste0(x, " is a legendary pokemon"))
  }
}
