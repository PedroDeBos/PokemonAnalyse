#' Determine the type of a pokemon
#'
#' @param ... Individual names of pokemon, starting with a Capital letter
#'
#' @return Multiple strings of text stating what types the inserted pokemon are
#' @export
#'
#' @examples
#' pokemon_data(data, "Chimchar", "Drapion")
pokemon_type<-function(...){
  arguments<-list(...) #Storing all arguments as a list
  for (x in arguments) #Making a command which repeats for all arguments in the list
  { if (is.na(pokemon$type2[pokemon$name==x])) #Determening whether the pokemon has 1 or 2 types, giving the appropriate message based on this
    print(paste0(pokemon$name[pokemon$name==x], " is a ", pokemon$type1[pokemon$name==x], " type"))
    else {
      print(paste0(pokemon$name[pokemon$name==x], " is a ", pokemon$type1[pokemon$name==x], " and a ", pokemon$type2[pokemon$name==x], " type"))
    }
  }
}
