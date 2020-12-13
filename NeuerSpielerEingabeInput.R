NeuerSpielerEingabeInput <- function(id, musikstücke, spielerbilder) {
  
  print("NeuerSpielerEingabeInput")
  
  ns <- NS(id)
  
  tagList(
    
    div(style="margin-left:20px; font-weight: bold; font-size:24px; margin-top:30px; margin-bottom:20px; color:orange;", HTML("Neuen Spieler anlegen:")),
    
    div(style="font-size:20px;, font-weight:bold; color:white;",
        
        ############# Spielerinformationen Eingabe
        fluidRow(
          column(width = 2,
                 shinyjs::hidden(div(id = "fehler_vorname", style="font-size:14px; margin-left:5px; color:red;", HTML("Vorname muss angegeben werden"))),
                 textInput(inputId = "vorname",
                           label = NULL,
                           placeholder = "Vorname"),
                 
                 shinyjs::hidden(div(id = "fehler_nachname", style="font-size:14px; margin-left:5px; color:red;", HTML("Nachname muss angegeben werden"))),
                 textInput(inputId = "nachname",
                           label = NULL,
                           placeholder = "Nachname"),
                 
                 shinyjs::hidden(div(id = "fehler_geburtsdatum", style="font-size:14px; margin-left:5px; color:red;", HTML("Geburtsdatum muss angegeben werden"))),
                 shinyjs::hidden(div(id = "fehler_geburtsdatum_format", style="font-size:12px; margin-left:5px; color:red;", HTML("Geburtsdatum muss das Format tt.mm.jjjj haben"))),
                 textInput(inputId = "geburtsdatum",
                           label = NULL,
                           placeholder = "Geburtsdatum (tt.mm.jjjj)")
                 
          ),
          
          ############# Spielerbild und Einlaufmusikauswahl
          column(width = 3,
                 div(style="font-size:16px; color:white;",
                     selectInput(inputId = "siegesmusik",
                                 label = "Siegesmusik wählen:",
                                 choices = c("", "Keine Siegesmusik", musikstücke),
                                 selected = NULL,
                                 width = "500px"),
                     
                     selectInput(inputId = "spielerbild",
                                 label = "Bild wählen:",
                                 choices = c("", spielerbilder),
                                 selected = NULL,
                                 width = "500px")
                 )
          )
        )
    ),
    
    ############# Speicherbutton und Rückkehr zum Hauptmenü
    div(style="display: inline-block;vertical-align:top; margin-top:30px; margin-left:20px; color:white;",
        actionButton("speichere_spieler", "Spieler speichern", style="font-size:16px; font-weight:bold;")),
    div(style="display: inline-block;vertical-align:top;  margin-top:30px; margin-left:50px; color:white;",
        actionButton("zu_hauptmenue_1", "Zurück zum Hauptmenü", style="font-size:16px; font-weight:bold;"))
    
  )
}
