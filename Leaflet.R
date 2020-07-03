library(leaflet)
library(htmltools)
setwd("c:/users/Swathi/Documents/datasets/")
#Accessing the data from .csv text file
datamap <- read.csv(file = "TheWorlds50BestRestaurants2018.csv", header = TRUE, sep = ",")
mimapa <- data.frame(Ranking = datamap$Ranking,
                     Name = datamap$Name,
                     City = datamap$City,
                     Country = datamap$Country,
                     Latitude = datamap$Latitude,
                     Longitude = datamap$Longitude
)
#Creating my data frame in order to manipulate the dataset like a table
map <- mimapa %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(popup=paste
             ("<br>Country: ", 
               htmlEscape(mimapa$Country), 
               "<br>City: ", 
               htmlEscape(mimapa$City), 
               "<br>Restaurant: ", 
               htmlEscape(mimapa$Name),
               "<br>Ranking: ",
               formatC(datamap$Ranking, format = "d", big.mark = ",")
             ) 
  )
#Activating the Map
map <- mimapa %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(popup=paste
             ("<br>Country: ", 
               htmlEscape(mimapa$Country), 
               "<br>City: ", 
               htmlEscape(mimapa$City), 
               "<br>Restaurant: ", 
               htmlEscape(mimapa$Name),
               "<br>Ranking: ",
               formatC(datamap$Ranking, format = "d", big.mark = ",")
             ) 
  )