setwd("C:/Users/Richard/Documents/Programmieren/R/Musikmemory")

library(shiny)
library(shinyWidgets)

liedtitel <- "Bayern-Fans United - Stern des Südens.mp3"

ui <- fluidPage(
  actionButton("do", "Click Me"),
  setBackgroundImage(src='Hintergrund_Spiel.jpg')
)

server <- function(input, output, session) {
  
  values <- reactiveValues(button = 0)
  
  observeEvent(input$do, {
    
    print("button 1")
    
    values$button <- values$button + 1
    
  })
  
  observeEvent(values$button, {
    
    print("button 2")
  
    insertUI(selector = "#do",
             where = "afterEnd",
             ui = tags$audio(src = paste0("Musik/Die_60er_und_70er/Elton John - Rocket Man.mp3"),
                             type = "audio/mp3", autoplay = NA, controls = NA, style="display:none;")
    )
    
  })
}

shinyApp(ui, server)




# liedpfad <- spieler_infos_allgemein$Musikpfad[spieler_infos_allgemein$Displayname == sieger[1]]
# file.copy(liedpfad,"C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Siegerlieder", overwrite = TRUE)
# play(liedpfad)
# 
# liedpfad <- "C:/Users/Richard/Music/Neue Titel/Wind - Akeboshi.mp3"
# liedtitel <- strsplit(liedpfad,"\\/")
# liedtitel <- sapply(liedtitel, `[`, length(liedtitel[[1]]))
# tags$audio(src = paste0("Siegerlieder/", liedtitel),
#            type = "audio/mp3", autoplay = NA, controls = NA, style="display:none;")
# 
# 
# liedpfad <- "C:/Users/Richard/Music/Neue Titel/Wind - Akeboshi.mp3"
# play(liedpfad)
