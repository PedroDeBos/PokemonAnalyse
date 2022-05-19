#' Determine whether a pokemon is legendary or not
#'
#' @param pokemon_data The pokemon database written by Rounak Banik
#' @param pokemon_name The name of the pokemon you're looking for, starting with a Capital letter.
#'
#' @return A string of text stating whether the pokemon is or is not a legendary
#' @export
#'
#' @examples
#' data<-read.csv(./pokemon.csv)
#' x<-"Arceus"
#' pokemon_legendary(data, x)
#' "Arceus is a legendary pokemon"
pokemon_legendary<-function(pokemon_data, pokemon_name){
  pokemon<-pokemon_data
  if (pokemon$is_legendary[pokemon$name==pokemon_name]==0){
    print(paste0(pokemon_name, " is not a legendary pokemon"))
  } else
  {
    print(paste0(pokemon_name, " is a legendary pokemon"))
  }
}
