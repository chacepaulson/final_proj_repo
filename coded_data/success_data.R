# merge all of the small_econ and small_poli data into one data frame 
small_data <- merge(small_econ, small_poli, all.x = TRUE, all.y = TRUE)

# check if there are countrys not in our sovereign_nation data in 
# the small_data
setdiff(sovereign_nations$country_name, small_data$country_name)
setdiff(small_data$country_name, sovereign_nations$country_name)

# eliminate all countrys not in our sovereign_nation data 
success_data <- merge(sovereign_nations, small_data, all.x = TRUE)

# check that only the countrys from the soverign_nation data remain
nrow(success_data)
nrow(sovereign_nations)
setdiff(sovereign_nations$country_name, success_data$country_name)
setdiff(success_data$country_name, sovereign_nations$country_name)

# merge in the gdp data 
success_data <- merge(success_data, small_gdp, all.x = TRUE)

# merge in the unemployment data 
success_data <- merge(success_data, small_unemployment, all.x = TRUE)
