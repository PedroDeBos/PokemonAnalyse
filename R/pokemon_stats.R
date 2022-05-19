#' Determine the stats of an input pokemon
#'
#' @param pokemon_name The name of the pokemon who's stats need to be analysed, starting with a Capital letter
#'
#' @return a plot containing the HP, atk, def, sp.atk, sp.def and speed of the input pokemon
#' @export
#'
#' @examples
#' pokemon_stats("Hippowdon")
pokemon_stats<-function(pokemon_name){
  graph_data<-tidyr::pivot_longer(
    dplyr::select(
      pokemon[pokemon$name==pokemon_name,],
      hp, attack, defense, sp_attack, sp_defense, speed),
    cols=hp:speed, names_to = "stat", values_to = "value")

  graph_data$stat<-factor(graph_data$stat, levels = c("hp", "attack", "defense", "sp_attack", "sp_defense", "speed")) #Putting the stats in the proper porder

  ggplot2::ggplot(graph_data, ggplot2::aes(x=stat, y=value, fill=stat))+ #Visualising the separated stats
    ggplot2::geom_col(colour="black")+
    ggplot2::labs(title = paste0(pokemon_name,"'s stat breakdown"),
         x="",
         y="Stat value",
         fill="Stat")+
    ggplot2::theme_bw()
}
