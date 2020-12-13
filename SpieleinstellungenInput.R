SpieleinstellungenInput <- function(id, musikgenres) {

  ns <- NS(id)

  
  tagList(
    
    div(style="font-size:20px; color:white;",
        
        # Wähle die Anzahl Paare
        div(style="display: inline-block;vertical-align:top; margin-left:30px;",
            selectInput("anzahl_paare",
                        "Anzahl Paare",
                        choices = c(6,10,15,21,28),
                        selected = 10,
                        width = "160px")),

        # Wähle die Anzahl Spieler
        div(style="display: inline-block;vertical-align:top; margin-left:30px;",
            selectInput("anz_spieler",
                        "Anzahl Spieler",
                        choices = c("2 Spieler", "3 Spieler", "4 Spieler"),
                        selected = "2 Spieler",
                        width = "180px")),
        
        # Wähle ob Nummern auf den Karten angezeigt werden sollen
        div(style="margin-top: 15px; margin-left:30px; font-weight:bold;",
            checkboxInput(inputId = "nummerierung",
                          label = "Karten nummerieren?",
                          value = T)),

        # Wähle die Genres
        div(style="margin-top: 50px; margin-left:30px;font-weight:bold;",
            HTML("Wähle das Genre")),
        shinyjs::hidden(div(id = "fehler_genre", style="font-size:14px; margin-left:30px; margin-top: 10px; color:red;", HTML("Kein Genre gewählt"))),

        div(style="margin-top: 10px; margin-left:30px;",
            checkboxInput(inputId = "alle_musikgenres_waehlen",
                      label = "Alle Genres",
                      value = F)),

        div(style="margin-top: 10px; margin-left:30px;",
            checkboxGroupInput(
              inputId = "musikgenre_waehlen",
              label = NULL,
              choices = musikgenres,
              selected = NULL,
              inline = F))
        
    )
    
  )
  
}