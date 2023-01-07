# read data
data = read.csv("data.csv")

#select single column and save to variable
col3 = data$Data_value #Data_value is the csv column name
col3 = na.omit(col3) # ignore empty values

#outputs the mean of the Data_value column, ignoring empty values
print(mean(data$Data_value, na.rm = TRUE)) 

#new variable which equals the csv file where the Data_value column
#is greater than 100,000
filter = data[data$Data_value > 100000,]
#overwrite variable with itself but with empty values removed
filter = filter[!is.na(filter$Data_value),]
