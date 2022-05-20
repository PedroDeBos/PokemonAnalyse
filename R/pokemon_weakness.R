#' Visualising a pokemon's weakness' and resistances
#'
#' @param pokemon_name Name of the target pokemon
#'
#' @return A graph containing 18 pokemon types and their effectiveness on the input pokemon
#' @export
#'
#' @examples pokemon_weakness("Drapion")
pokemon_weakness<-function(pokemon_name){
  selected_pokemon<-dplyr::select(pokemon[pokemon$name==pokemon_name,], against_bug:against_water)

  types<-substring(colnames(selected_pokemon), 9)

  colnames(selected_pokemon)<-types

  final_pokemon<-tidyr::pivot_longer(selected_pokemon, bug:water)

  ggplot2::ggplot(final_pokemon, ggplot2::aes(x=name, y=value, fill=name))+
    ggplot2::geom_col(color="black")+
    ggplot2::theme_bw()+
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle=45, hjust = 1), legend.position = "none")+
    ggplot2::scale_fill_manual(values = c("#82d132", "#2d282e", "#062b7a", "#cff71b", "#f731e4", "#a31738", "#e34009", "#95f0e2", "#43186e", "#18d945", "#ebce4d", "#a4f5ef", "#e8e8e8", "#7e18b5", "#e026af", "#d6cd85", "#8a8987", "#52abe3"))+
    ggplot2::labs(
      title = paste("Weakness' of", pokemon_name),
      x = "Type",
      y = "Damage multiplier"
    )
}
