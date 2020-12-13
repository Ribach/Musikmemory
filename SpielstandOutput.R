SpielstandOutput <- function(id, spieler_infos_allgemein, anz_spieler, spieler1, spieler2, spieler3, spieler4, paare_spieler1,
                             paare_spieler2, paare_spieler3, paare_spieler4){
  
  ns <- NS(id)
  
  if(!is.null(anz_spieler)){
    
    if(anz_spieler == "2 Spieler"){
      
      tagList(
        
        fluidRow(
          
          ##### Spieler 1
          div(style="margin-top:30px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler1_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler1])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler1)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler1)))),
          
          ##### Spieler 2
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler2_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler2])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler2)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler2))))
        )
      )
    }else if(anz_spieler == "3 Spieler"){
      
      tagList(
        
        fluidRow(
          
          ##### Spieler 1
          div(style="margin-top:30px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler1_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler1])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler1)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler1)))),
          
          ##### Spieler 2
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler2_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler2])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler2)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler2)))),
          
          ##### Spieler 3
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler3_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler3])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler3)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler3))))
        )
      )
    }else if(anz_spieler == "4 Spieler"){
      
      tagList(
        
        fluidRow(
          
          ##### Spieler 1
          div(style="margin-top:30px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler1_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler1])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler1)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler1)))),
          
          ##### Spieler 2
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler2_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler2])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler2)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler2)))),
          
          ##### Spieler 3
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler3_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler3])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler3)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler3)))),
          
          ##### Spieler 4
          div(style="margin-top:50px; color:white",
              div(style="display: inline-block;vertical-align:top;",
                  img(id = "spieler4_bild",
                      src=as.vector(paste0("Spielerbilder/",spieler_infos_allgemein$Bildpfad[spieler_infos_allgemein$Displayname==spieler4])),
                      width = "120px", height = "140px")),
              div(style="display: inline-block;vertical-align:top; margin-left:10px;",
                  div(style="font-size:18px; margin-top:10px;", HTML(spieler4)),
                  div(style="font-size:30px; margin-top:35px;", HTML(paare_spieler4))))
        )
      )
    }
  }
}