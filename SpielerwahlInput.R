SpielerwahlInput <- function(id, anz_spieler, spielernames, spieler1, spieler2, spieler3, spieler4) {
  
  ns <- NS(id)
  
  if(!is.null(anz_spieler)){
    
    if(anz_spieler == "2 Spieler"){
      
      tagList(
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler1",
                        "Wähle Spieler 1",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[1]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler2",
                        "Wähle Spieler 2",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[2]),
                        width = "230px"))
        
      )
      
    }else if(anz_spieler == "3 Spieler"){
      
      tagList(
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler1",
                        "Wähle Spieler 1",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[1]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler2",
                        "Wähle Spieler 2",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[2]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler3",
                        "Wähle Spieler 3",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[3]),
                        width = "230px"))
        
      )
      
    }else{
      
      tagList(
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler1",
                        "Wähle Spieler 1",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[1]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler2",
                        "Wähle Spieler 2",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[2]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler3",
                        "Wähle Spieler 3",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[3]),
                        width = "230px")),
        
        div(style="display: inline-block;vertical-align:top;",
            selectInput("spieler4",
                        "Wähle Spieler 4",
                        choices = as.character(spielernames),
                        selected = as.character(spielernames[4]),
                        width = "230px"))
        
      )
      
    }
  }
  
}