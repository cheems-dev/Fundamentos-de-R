# Form to read archive, in this case csv file
# De manera local
orangeec = read.csv('orangeec.csv', header = TRUE,  sep = ',',  stringsAsFactors = FALSE)
# Mediante url's
orangeec = read.csv('https://raw.githubusercontent.com/sap0408/Orange-Economy/master/orangeec.csv', header = TRUE,  sep = ',',  stringsAsFactors = FALSE)

orangeec