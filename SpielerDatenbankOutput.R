SpielerDatenbankOutput <- function(id, neuer_spieler) {
  
  ns <- NS(id)
  
  tagList(
    
    div(style="display: inline-block;vertical-align:top; margin-left:20px; font-weight: bold; font-size:24px; margin-top:120px; color:orange;",
        HTML("Spieler bearbeiten oder löschen:")),
    div(style="display: inline-block;vertical-align:top; margin-top:120px; margin-left:50px;",
        actionButton("speichere_aenderungen", "Änderungen Speichern", style="font-size:16px; font-weight:bold;")),
    div(style="margin-top:20px;", rHandsontableOutput('spieler_datensatz'))
    
  )
  
}
