pokemon_legendary<-function(pokemon_data, pokemon_name){
  pokemon<-pokemon_data
  if (pokemon$is_legendary[pokemon$name==pokemon_name]==0){
    print(paste0(pokemon_name, " is not a legendary pokemon"))
  } else
  {
    print(paste0(pokemon_name, " is a legendary pokemon"))
  }
}
