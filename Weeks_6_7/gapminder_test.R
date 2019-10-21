library("tidyverse")
library("gapminder")

gapminder 
write_csv(gapminder,'/.gapminder.csv')
view(gapminder)

#Calculate mean life Exp per continent
gapminder_sumn <- gapminder %>% 
  group_by(continent) %>%
  summarise(ave_lifeExp=mean(lifeExp))

View(gapminder_sumn)
write_csv(gapminder_sumn, './gapminder_sum.csv')
#on windows: .\gapminder_sum.csv

gapminder_sumn %>% 
  ggplot(aes(x=continent , y=ave_lifeExp))+
  geom_point()+
  theme_bw()
library("here")
ls()
# another way using here 
#platform agnostic , dir-structure agnostic, allows you to set wd 
# write_csv(here::("test", "tes","te","t","gapminder_sum.csv"))
