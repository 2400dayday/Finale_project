finished_games <- chess %>% 
  filter(victory_status != "resign")
players<-finished_games[,c("winner",
                    "black_rating",
                    "white_rating",
                    "turns",
                    "opening_ply")]
players
finished_games %>% 
  filter(victory_status !=  "resign")
finished_games<- finished_games %>% filter(victory_status!= "draw")
head(players)


players<- players %>% filter(winner != "draw")

ggplot(players,aes(x=winner))+
  geom_density()


 players %>% ggplot(,aes(x=winner)+
   geom_density(stat=density))



Create a new data frame in which each row is a player 
and there
are five columns: the color of the plater, their rating, 
number 
of turns, the opening ply, and whether they lost of won 
(won = 1 and lost = 0).
Call this new data frame `players`. 



olddata_wide, condition, measurement, control:cond2, factor_key=TRUE)
data_long




players$rating<- paste(players$black_rating,"-",players$white_rating)

plot3<-ggplot(players,aes(x=winner,y=turns))+
  geom_point()+geom_smooth(method = "lm")


plot1<-ggplot(data=players,aes(x=turns,
                            y=white_rating))+  
  geom_point()+geom_smooth(method = "lm")

plot2<-ggplot(data=players,aes(x=turns,
                        y=black_rating))+  
  geom_point()+geom_smooth(method = "lm")

grid.arrange(plot1,plot2,ncol=2)






set.s(34) 
soda_ounces <- rnorm(100, mean = 12, sd = 0.04)
head(soda_ounces)

Use the variable indicating whether the player wins or 
not as the dependent variables (Y) and rating, color of 
the players piece, and the opening ply. 
Make sure to use the color as factor.
hhe <- lm(winner ~  rating , data = players)


