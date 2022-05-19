#' Determine the stats of an input pokemon
#'
#' @param pokemon_data The pokemon database written by Rounak Banik
#' @param pokemon_name The name of the pokemon who's stats need to be analysed, starting with a Capital letter
#'
#' @return a plot containing the HP, atk, def, sp.atk, sp.def and speed of the input pokemon
#' @export
#'
#' @examples
#' data<-read_csv("./pokemon.csv")
#' pokemon_stats(data, "Hippowdon")
pokemon_stats<-function(pokemon_data, pokemon_name){
  pokemon<-pokemon_data
  graph_data<-pivot_longer(
    select(
      pokemon[pokemon$name==pokemon_name,],
      hp, attack, defense, sp_attack, sp_defense, speed),
    cols=hp:speed, names_to = "stat", values_to = "value")

  graph_data$stat<-factor(graph_data$stat, levels = c("hp", "attack", "defense", "sp_attack", "sp_defense", "speed")) #Putting the stats in the proper porder

  ggplot(graph_data, aes(x=stat, y=value, fill=stat))+ #Visualising the separated stats
    geom_col(colour="black")+
    labs(title = paste0(pokemon_name,"'s stat breakdown"),
         x="",
         y="Stat value",
         fill="Stat")+
    theme_bw()
}
