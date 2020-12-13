NeuerSpielerAnzeigeInput <- function(id, neuer_spieler) {
  
  ns <- NS(id)
  
  tagList(
    
    div(style="font-size:18px; margin-top:30px; margin-bottom:20px; color:lawngreen", HTML("Folgender Spieler wurde erfolgreich gespeichert:")),
    fluidRow(
      column(width = 1,
             img(id = "neuer_spieler_bild",
                 src=as.vector(paste0("Spielerbilder/",neuer_spieler[names(neuer_spieler)=="Spielerbild"])),
                 width = "120px", height = "140px")
      ),
      column(width = 6,
             div(style = "font-size:20px; font-weight:bold; color:white;",
                 HTML(paste0(as.vector(neuer_spieler[names(neuer_spieler)=="Vorname"]), " ", as.vector(neuer_spieler[names(neuer_spieler)=="Nachname"]), "<br/>"))
             ),
             fluidRow(
               div(style = "font-size:20px; color:white; margin-top:30px;",
                   column(width = 2,
                          HTML("Geburtsdatum:<br/>"),
                          HTML("Siegesmusik:")
                   ),
                   column(width = 10,
                          HTML(paste0(as.vector(neuer_spieler[names(neuer_spieler)=="Geburtsdatum"]), "<br/>")),
                          HTML(as.vector(neuer_spieler[names(neuer_spieler)=="Siegesmusik"]))
                   )
               )
             )
      )
    ),
    
    ############# Weiteren Spieler erstellen und Rückkehr zum Hauptmenü
    div(style="display: inline-block;vertical-align:top; margin-top:30px; margin-left:20px; color:white;",
        actionButton("weiterer_spieler", "Weiteren Spieler erstellen", style="font-size:16px; font-weight:bold;")),
    div(style="display: inline-block;vertical-align:top;  margin-top:30px; margin-left:50px; color:white;",
        actionButton("zu_hauptmenue_2", "Zurück zum Hauptmenü", style="font-size:16px; font-weight:bold;"))
    
  )
  
}
