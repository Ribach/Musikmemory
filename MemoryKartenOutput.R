MemoryKartenOutput <- function(id, anzahl_paare, nummerierung,
                               style="color:black; background-color:burlywood;display:block; height: 100px; width: 140px; border: 5px solid black; font-size: 32px;") {
  # Create a namespace function using the provided id
  ns <- NS(id)
  
  tagList(
    
    ##### Karten nummeriert
    if(nummerierung == TRUE){
      if(anzahl_paare == 6){
        
        fluidRow(
          
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:140px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "1",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "2",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "3",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "4",style=style))
                   )
            )
          ),
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k5", "5",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "6",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "7",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "8",style=style))
                   )
            )
          ),
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k9", "9",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "10",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "11",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "12",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 10){
        
        fluidRow(
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:140px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "1",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "2",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "3",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "4",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "5",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k6", "6",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "7",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "8",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "9",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "10",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k11", "11",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "12",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "13",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "14",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "15",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k16", "16",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "17",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "18",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "19",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "20",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 15){
        
        fluidRow(
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:115px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "1",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "2",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "3",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "4",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "5",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "6",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k7", "7",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "8",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "9",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "10",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "11",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "12",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k13", "13",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "14",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "15",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "16",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "17",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "18",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k19", "19",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "20",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "21",style=style)),
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k22", "22",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "23",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "24",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k25", "25",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "26",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "27",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "28",style=style)),
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k29", "29",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "30",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 21){
        
        fluidRow(
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:90px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "1",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "2",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "3",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "4",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "5",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "6",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "7",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k8", "8",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "9",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "10",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "11",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "12",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "13",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "14",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k15", "15",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "16",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "17",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "18",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "19",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "20",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "21",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k22", "22",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "23",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "24",style=style)),
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k25", "25",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "26",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "27",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "28",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k29", "29",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "30",style=style)),
                       shinyjs::hidden(div(id="k31h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k31", "31",style=style)),
                       shinyjs::hidden(div(id="k32h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k32", "32",style=style)),
                       shinyjs::hidden(div(id="k33h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k33", "33",style=style)),
                       shinyjs::hidden(div(id="k34h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k34", "34",style=style)),
                       shinyjs::hidden(div(id="k35h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k35", "35",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k36h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k36", "36",style=style)),
                       shinyjs::hidden(div(id="k37h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k37", "37",style=style)),
                       shinyjs::hidden(div(id="k38h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k38", "38",style=style)),
                       shinyjs::hidden(div(id="k39h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k39", "49",style=style)),
                       shinyjs::hidden(div(id="k40h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k40", "40",style=style)),
                       shinyjs::hidden(div(id="k41h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k41", "41",style=style)),
                       shinyjs::hidden(div(id="k42h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k42", "42",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 28){
        
        fluidRow(
          fluidRow(
            column(11,
                   div(style="margin-top:50px;margin-left:20px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "1",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "2",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "3",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "4",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "5",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "6",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "7",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "8",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;;", actionButton("k9", "9",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "10",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "11",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "12",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "13",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "14",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "15",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "16",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k17", "17",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "18",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "19",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "20",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "21",style=style)),
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k22", "22",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "23",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "24",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k25", "25",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "26",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "27",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "28",style=style)),
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k29", "29",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "30",style=style)),
                       shinyjs::hidden(div(id="k31h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k31", "31",style=style)),
                       shinyjs::hidden(div(id="k32h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k32", "32",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k33h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k33", "33",style=style)),
                       shinyjs::hidden(div(id="k34h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k34", "34",style=style)),
                       shinyjs::hidden(div(id="k35h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k35", "35",style=style)),
                       shinyjs::hidden(div(id="k36h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k36", "36",style=style)),
                       shinyjs::hidden(div(id="k37h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k37", "37",style=style)),
                       shinyjs::hidden(div(id="k38h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k38", "38",style=style)),
                       shinyjs::hidden(div(id="k39h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k39", "39",style=style)),
                       shinyjs::hidden(div(id="k40h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k40", "40",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k41h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k41", "41",style=style)),
                       shinyjs::hidden(div(id="k42h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k42", "42",style=style)),
                       shinyjs::hidden(div(id="k43h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k43", "43",style=style)),
                       shinyjs::hidden(div(id="k44h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k44", "44",style=style)),
                       shinyjs::hidden(div(id="k45h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k45", "45",style=style)),
                       shinyjs::hidden(div(id="k46h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k46", "46",style=style)),
                       shinyjs::hidden(div(id="k47h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k47", "47",style=style)),
                       shinyjs::hidden(div(id="k48h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k48", "48",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k49h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k49", "49",style=style)),
                       shinyjs::hidden(div(id="k50h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k50", "50",style=style)),
                       shinyjs::hidden(div(id="k51h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k51", "51",style=style)),
                       shinyjs::hidden(div(id="k52h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k52", "52",style=style)),
                       shinyjs::hidden(div(id="k53h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k53", "53",style=style)),
                       shinyjs::hidden(div(id="k54h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k54", "54",style=style)),
                       shinyjs::hidden(div(id="k55h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k55", "55",style=style)),
                       shinyjs::hidden(div(id="k56h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k56", "56",style=style))
                   )
            )
          )
        )
        
      }
    
    ##### Keine Nummerierung
    }else{
      
      if(anzahl_paare == 6){
        
        fluidRow(
          
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:140px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k5", "",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(6,offset = 3,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k9", "",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 10){
        
        fluidRow(
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:140px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k6", "",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k11", "",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(7,offset = 2,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k16", "",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 15){
        
        fluidRow(
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:115px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k7", "",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k13", "",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k19", "",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "",style=style)),
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k22", "",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(8,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k25", "",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "",style=style)),
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k29", "",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "",style=style))
                   )
            )
          )
        )
        
      }else if(anzahl_paare == 21){
        
        fluidRow(
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:90px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k8", "",style=style)),
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k9", "",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k15", "",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "",style=style)),
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k17", "",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k22", "",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "",style=style)),
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k25", "",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k29", "",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "",style=style)),
                       shinyjs::hidden(div(id="k31h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k31", "",style=style)),
                       shinyjs::hidden(div(id="k32h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k32", "",style=style)),
                       shinyjs::hidden(div(id="k33h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k33", "",style=style)),
                       shinyjs::hidden(div(id="k34h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k34", "",style=style)),
                       shinyjs::hidden(div(id="k35h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k35", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(9,offset = 1,
                   div(style="margin-top:20px;",
                       shinyjs::hidden(div(id="k36h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k36", "",style=style)),
                       shinyjs::hidden(div(id="k37h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k37", "",style=style)),
                       shinyjs::hidden(div(id="k38h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k38", "",style=style)),
                       shinyjs::hidden(div(id="k39h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k39", "",style=style)),
                       shinyjs::hidden(div(id="k40h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k40", "",style=style)),
                       shinyjs::hidden(div(id="k41h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k41", "",style=style)),
                       shinyjs::hidden(div(id="k42h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k42", "",style=style))
                   )
            )
          )
        )
      
      }else if(anzahl_paare == 28){
        
        fluidRow(
          fluidRow(
            column(11,
                   div(style="margin-top:50px;margin-left:20px;",
                       shinyjs::hidden(div(id="k1h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k1", "",style=style)),
                       shinyjs::hidden(div(id="k2h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k2", "",style=style)),
                       shinyjs::hidden(div(id="k3h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k3", "",style=style)),
                       shinyjs::hidden(div(id="k4h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k4", "",style=style)),
                       shinyjs::hidden(div(id="k5h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k5", "",style=style)),
                       shinyjs::hidden(div(id="k6h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k6", "",style=style)),
                       shinyjs::hidden(div(id="k7h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k7", "",style=style)),
                       shinyjs::hidden(div(id="k8h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k8", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k9h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;;", actionButton("k9", "",style=style)),
                       shinyjs::hidden(div(id="k10h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k10", "",style=style)),
                       shinyjs::hidden(div(id="k11h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k11", "",style=style)),
                       shinyjs::hidden(div(id="k12h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k12", "",style=style)),
                       shinyjs::hidden(div(id="k13h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k13", "",style=style)),
                       shinyjs::hidden(div(id="k14h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k14", "",style=style)),
                       shinyjs::hidden(div(id="k15h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k15", "",style=style)),
                       shinyjs::hidden(div(id="k16h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k16", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k17h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k17", "",style=style)),
                       shinyjs::hidden(div(id="k18h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k18", "",style=style)),
                       shinyjs::hidden(div(id="k19h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k19", "",style=style)),
                       shinyjs::hidden(div(id="k20h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k20", "",style=style)),
                       shinyjs::hidden(div(id="k21h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k21", "",style=style)),
                       shinyjs::hidden(div(id="k22h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k22", "",style=style)),
                       shinyjs::hidden(div(id="k23h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k23", "",style=style)),
                       shinyjs::hidden(div(id="k24h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k24", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k25h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k25", "",style=style)),
                       shinyjs::hidden(div(id="k26h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k26", "",style=style)),
                       shinyjs::hidden(div(id="k27h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k27", "",style=style)),
                       shinyjs::hidden(div(id="k28h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k28", "",style=style)),
                       shinyjs::hidden(div(id="k29h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k29", "",style=style)),
                       shinyjs::hidden(div(id="k30h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k30", "",style=style)),
                       shinyjs::hidden(div(id="k31h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k31", "",style=style)),
                       shinyjs::hidden(div(id="k32h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k32", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k33h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k33", "",style=style)),
                       shinyjs::hidden(div(id="k34h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k34", "",style=style)),
                       shinyjs::hidden(div(id="k35h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k35", "",style=style)),
                       shinyjs::hidden(div(id="k36h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k36", "",style=style)),
                       shinyjs::hidden(div(id="k37h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k37", "",style=style)),
                       shinyjs::hidden(div(id="k38h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k38", "",style=style)),
                       shinyjs::hidden(div(id="k39h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k39", "",style=style)),
                       shinyjs::hidden(div(id="k40h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k40", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k41h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k41", "",style=style)),
                       shinyjs::hidden(div(id="k42h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k42", "",style=style)),
                       shinyjs::hidden(div(id="k43h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k43", "",style=style)),
                       shinyjs::hidden(div(id="k44h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k44", "",style=style)),
                       shinyjs::hidden(div(id="k45h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k45", "",style=style)),
                       shinyjs::hidden(div(id="k46h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k46", "",style=style)),
                       shinyjs::hidden(div(id="k47h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k47", "",style=style)),
                       shinyjs::hidden(div(id="k48h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k48", "",style=style))
                   )
            )
          ),
          fluidRow(
            column(11,
                   div(style="margin-top:20px;margin-left:20px;",
                       shinyjs::hidden(div(id="k49h", style="display: inline-block;vertical-align:top; margin-left:135px; height:100px;")),
                       div(style="display: inline-block;vertical-align:top;", actionButton("k49", "",style=style)),
                       shinyjs::hidden(div(id="k50h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k50", "",style=style)),
                       shinyjs::hidden(div(id="k51h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k51", "",style=style)),
                       shinyjs::hidden(div(id="k52h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k52", "",style=style)),
                       shinyjs::hidden(div(id="k53h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k53", "",style=style)),
                       shinyjs::hidden(div(id="k54h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k54", "",style=style)),
                       shinyjs::hidden(div(id="k55h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k55", "",style=style)),
                       shinyjs::hidden(div(id="k56h", style="display: inline-block;vertical-align:top; margin-left:135px;")),
                       div(style="display: inline-block;vertical-align:top; margin-left:20px;", actionButton("k56", "",style=style))
                   )
            )
          )
        )
        
      }
      
    }
    
  )
}