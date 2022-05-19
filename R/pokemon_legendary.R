#' Determine whether a pokemon is legendary or not
#'
#' @param pokemon_name The name of the pokemon you're looking for, starting with a Capital letter.
#'
#' @return A string of text stating whether the pokemon is or is not a legendary
#' @export
#'
#' @examples pokemon_legendary("Turtwig")
#' pokemon_legendary("Arceus")
pokemon_legendary<-function(pokemon_name){
  if (pokemon$is_legendary[pokemon$name==pokemon_name]==0){
    print(paste0(pokemon_name, " is not a legendary pokemon"))
  } else
  {
    print(paste0(pokemon_name, " is a legendary pokemon"))
  }
}
