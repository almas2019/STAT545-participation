ibrary("tidyverse")
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

## Read Excel file 
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
# read_csv can directly import files, but read_excel requires you to first download it
library(here)
library(tidyverse)

download.file(url=data_url,
              destfile = here::here("Week9_10","greatestGivers.xls"))

file_name <- basename(data_url)                            
#Recommendation use basename 

library(readxl)
philanthropists <- read_excel(here::here("Week9_10",file_name),trim_ws=TRUE)
View(philanthropists)

head(philanthropists)

download.file(url="https://github.com/STAT545-UBC-hw-2019-20/Announcements/files/3703782/Firas-MRI.xlsx",
              destfile = here::here("Week9_10","Firas_MRI.xlsx"))
mri_file=here("Week9_10","Firas_MRI.xlsx")
mri <- read_xlsx(mri_file,range="A1:L12")
View(mri)
mri <- mri[,-10]

mri <- mri %>%
  pivot_longer(cols='Slice 1':'Slice 8',
               names_to='slice_no',
               values_to='value'))
View(mri)