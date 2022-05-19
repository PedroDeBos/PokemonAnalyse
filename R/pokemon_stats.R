pokemon_stats<-function(x){
  graph_data<-pokemon[pokemon$name==x,] %>% #Separating the stats from the database
    select(hp, attack, defense, sp_attack, sp_defense, speed) %>%
    pivot_longer(cols=hp:speed, names_to = "stat", values_to = "value")

  graph_data$stat<-factor(graph_data$stat, levels = c("hp", "attack", "defense", "sp_attack", "sp_defense", "speed")) #Putting the stats in the proper porder

  graph_data %>% ggplot(aes(x=stat, y=value, fill=stat))+ #Visualising the separated stats
    geom_col(colour="black")+
    labs(title = paste0(x,"'s stat breakdown"),
         x="",
         y="Stat value",
         fill="Stat")+
    theme_bw()
}
