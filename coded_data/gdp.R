# loading gdp data 
library(readxl)
gdp <- read_excel("~/Downloads/final_proj/raw_data/gdp.xlsx")
View(gdp)

# renaming columns in gdp data 
colnames(gdp)
gdp <- gdp %>% 
  rename(country_name = `Country Name`, 
         country_code = `Country Code`, 
         indicator_name = `Indicator Name`, 
         indicator_code = `Indicator Code`)
colnames(gdp)

# finding out if there is any missing data from the 2017 set 
sum(is.na(gdp$`2017`))