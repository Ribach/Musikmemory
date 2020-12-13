##### BAC 10.02.2019 Memory App
###################################################################################################################################
##### Entferne alle Objekte aus der Umgebung
rm(list=ls())
options(encoding = "UTF-8")
setwd("C:/Users/Richard/Documents/Programmieren/R/Musikmemory")

###################################################################################################################################
##### Lade benötigte libraries
###################################################################################################################################
library(shiny)
library(shinydashboard)
library(rhandsontable)
library(shinyWidgets)
library(xlsx)
library(tuneR)
library(shinyjs)

###################################################################################################################################
##### Vorbereitung
###################################################################################################################################
##### Lade Skripte
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/Funktionen.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/SpieleinstellungenInput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/SpielerwahlInput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/NeuerSpielerAnzeigeInput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/NeuerSpielerEingabeInput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/SpielerDatenbankOutput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/SpielstandOutput.R')
source(file = 'C:/Users/Richard/Documents/Programmieren/R/Musikmemory/MemoryKartenOutput.R')

##### Lade Datensätze
spieler_infos_allgemein <- readRDS(paste("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/tables/spieler_infos_allgemein.rds"))
spaltenbreite_spieler_infos_allgemein <- c("ID" = 0.01, "Vorname" = 120, "Nachname" = 120, "Displayname" = 0.01, "Geburtsdatum" = 100,
                                           "Bildpfad" = 130, "Musikpfad" = 600)

##### Erstelle Datensatz für Siegeslied-Auswahl
dateinamen <- unique(list.files(paste0("C:/Users/Richard/Music/Alle Interpreten/", list.files("C:/Users/Richard/Music/Alle Interpreten"))))
dateinamen <- dateinamen[substr(dateinamen,(nchar(dateinamen)-3), nchar(dateinamen)) == ".mp3"]
interpreten <- sapply(strsplit(dateinamen," \\- "), `[`, 1)
titel <- sapply(strsplit(dateinamen," \\- "), `[`, 2)
siegesmusikstücke <- as.data.frame(cbind(dateinamen, interpreten, titel))
siegesmusikstücke$path <- paste0("C:/Users/Richard/Music/Alle Interpreten/", interpreten, "/", dateinamen)
siegesmusikstücke[] <- lapply(siegesmusikstücke, as.character)
siegesmusikstücke$dateinamen <- substr(siegesmusikstücke$dateinamen, 1, (nchar(siegesmusikstücke$dateinamen)-4))
siegesmusikstücke$titel <- substr(siegesmusikstücke$titel, 1, (nchar(siegesmusikstücke$titel)-4))

##### Erstelle Spieler-Bilder-Auswahl
bilddateien <- list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Spielerbilder")
bilddateien <- bilddateien[!(bilddateien %in% c("Hintergrund_Spiel.jpg"))]
pfade <- paste0("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/", bilddateien)
bilder <- substr(bilddateien, 1, (nchar(bilddateien)-4))
spielerbilder <- as.data.frame(cbind(bilder, pfade))
spielerbilder[] <- lapply(spielerbilder, as.character)

##### Vektor mit Musikgenres
musikgenres <- sort(c("Filmmusik","Classic Rock","Indie (Rock)","Instrumentalstücke","Klassische Musik",
                      "Die 60er & 70er","Punk Rock & Alternative","Oldies & Schlager"))

##### Vektoren mit Liednamen
Filmmusik <- paste0("Filmmusik/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Filmmusik"))
Die_60er_und_70er <- paste0("Die_60er_und_70er/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Die_60er_und_70er"))
Indie_Rock <- paste0("Indie_Rock/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Indie_Rock"))
Instrumentalstuecke <- paste0("Instrumentalstuecke/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Instrumentalstuecke"))
Klassische_Musik <- paste0("Klassische_Musik/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Klassische_Musik"))
Punk_Rock_und_Alternative <- paste0("Punk_Rock_und_Alternative/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Punk_Rock_und_Alternative"))
Oldies_und_Schlager <- paste0("Oldies_und_Schlager/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Oldies_und_Schlager"))
Classic_Rock <- paste0("Classic_Rock/", list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Musik/Classic_Rock"))

##### Liste mit Preisen
preise <- list.files("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Preise")

##### Liste mit den Preissprüchen
preise <- read.xlsx("C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Preissprueche.xlsx", 1, encoding = "UTF-8")

##### Definiere die js Methodde, die die App zurücksetzt
jsResetCode <- "shinyjs.reset = function() {history.go(0)}"

###################################################################################################################################
##### UI
###################################################################################################################################
ui <- fluidPage(
  
  ##### Hauptseite
  mainPanel(
    
    useShinyjs(),
    extendShinyjs(text = jsResetCode, functions = c("winprint")),
    
    ##### Hauptmenü
    div(id="hauptmenue",
        fluidRow(
          column(4, offset = 0.5,
                 
                 helpText("Musikmemory", style="font-size:90px; font-weight:bold; color:orange; margin-top:60px"),
                 hr(style='margin-top:80px;'),
                 actionLink("spiel_starten", "Spiel starten", style="font-size:40px; font-weight:bold; color:orange"),
                 hr(),
                 actionLink("statistiken", "Statistiken", style="font-size:40px; font-weight:bold; color:orange"),
                 hr(),
                 actionLink("spieler_verwalten_link", "Spieler verwalten", style="font-size:40px; font-weight:bold; color:orange"),
                 hr()
          ))),
    
    ##### Spielvorbereitung
    hidden(div(id="spielvorbereitung",
               fluidRow(
                 column(3,
                        div(id="spieleinstellungen_id", style="margin-top:30px;", uiOutput("spieleinstellungen"))
                 ),
                 column(7,
                        div(id="spielerwahl_id", style="font-size:20px; margin-top:30px; color:white;", uiOutput("spielerwahl")),
                        div(id="start_button_id", style="margin-left:200px; margin-top:200px;",
                            actionButton("start_button", "Spiel starten", style="font-size:50px; font-weight:bold;"))
                 )), style='width: 1800px;')),
    
    ##### Spielfeld
    hidden(div(id="spielfeld",
               fluidRow(
                 column(10,
                        fluidRow(uiOutput("aktiver_spieler")),
                        fluidRow(uiOutput("memory_karten"))),
                 column(2, uiOutput("spielstand"))),
               style='width: 1800px;')),
    
    ##### Spielende
    hidden(div(id="spielende", style="margin-left:50px;",
               div(style="margin-top:50px; font-size:24px; color:green;", uiOutput("siegesmeldung")),
               div(style="margin-top:20px", uiOutput("siegerpreis")),
               div(style="margin-top:20px; color:white; font-size:16px;", uiOutput("siegerpreisspruch")),
               div(style="margin-top:30px; color:white; font-size:16px; font-weight:bold;", uiOutput("spiele_siegerlied_id")),
               div(style="margin-top:50px; color:white; font-size:16px; font-weight:bold;", uiOutput("zu_hauptmenue_3_id")))),
    
    ##### Spieler verwalten
    hidden(div(id="spieler_verwalten",
               uiOutput("neuer_spieler_eingabe"),
               hidden(uiOutput("neuer_spieler_anzeige")),
               uiOutput("spieler_bearbeiten"),
               style='width: 1800px;')),
    
    ##### Hintergrundbild
    setBackgroundImage(src='Hintergrund_Spiel.jpg')
    
  )
)


###################################################################################################################################
##### Server
###################################################################################################################################
server <- function(input, output, session) {
  
  ##########################################
  ##### Reactive Values
  ##########################################
  values <- reactiveValues(neuer_spieler = NULL,
                           paare_spieler1 = 0,
                           paare_spieler2 = 0,
                           paare_spieler3 = 0,
                           paare_spieler4 = 0,
                           aktiver_spieler = 1,
                           k = 0,
                           erste_karte = 0,
                           spielende = FALSE,
                           sieger = "",
                           preis = "",
                           siegerlied_pfad = "")
  
  datasets <- reactiveValues(spieler_infos_allgemein = spieler_infos_allgemein,
                             karten_tabelle = data.frame(NA))
  
  ##########################################
  ##### Spiel starten
  ##########################################
  observeEvent(input$spiel_starten, {
    
    hide("hauptmenue")
    hide("spieler_verwalten")
    show("spielvorbereitung")
    
  })
  
  ##########################################
  ##### Spieler verwalten
  ##########################################
  observeEvent(input$spieler_verwalten_link, {
    
    print("spieler_verwalten_link")
    
    hide("hauptmenue")
    hide("spielvorbereitung")
    hide("neuer_spieler_anzeige")
    show("spieler_verwalten")
    show("neuer_spieler_eingabe")
    show("spieler_bearbeiten")
    
  })
  
  ##### Dateneingabe für neuen Spieler
  output$neuer_spieler_eingabe <- renderUI({
    
    print("neuer_spieler_eingabe")
    
    NeuerSpielerEingabeInput("neuer_spieler_eingabe", siegesmusikstücke$dateinamen, spielerbilder$bilder)
    
  })
  
  ##### Datenanzeige für neuen Spieler
  output$neuer_spieler_anzeige <- renderUI({
    
    print("neuer_spieler_anzeige")
    
    NeuerSpielerAnzeigeInput("neuer_spieler_anzeige", values$neuer_spieler)
    
  })
  
  ##### Datensatz mit allen erstellten Spielern
  output$spieler_bearbeiten <- renderUI({
    
    print("spieler_bearbeiten")
    
    SpielerDatenbankOutput("spieler_bearbeiten")
    
  })
  
  ##### Füge Datensatz hinzu mit allen erstellten Spielern
  output$spieler_datensatz <- renderRHandsontable({
    
    print("spieler_datensatz")
    
    datasets$spieler_infos_allgemein[] <- lapply(datasets$spieler_infos_allgemein, as.character)
    
    rhandsontable(datasets$spieler_infos_allgemein, width = sum(as.vector(spaltenbreite_spieler_infos_allgemein))+100, height = 1000, rowHeaders = NULL) %>%
      hot_cols(colWidths = as.vector(spaltenbreite_spieler_infos_allgemein))  %>% 
      hot_rows(rowHeights = 10) %>%
      hot_cols(columnSorting = TRUE) %>%
      hot_table(highlightCol = TRUE, highlightRow = TRUE)
    
  })
  
  ##### Wende Nutzeränderungen am Spielerdatensatz an
  observe({
    
    print("observe spieler datensatz")
    
    if (!is.null(input$spieler_datensatz)) {
      
      datasets$spieler_infos_allgemein = hot_to_r(input$spieler_datensatz)
      
    }
    
  })
  
  ##### Speicher Button neuer Spieler
  observeEvent(input$speichere_spieler, {
    
    print("Spieler speichern")
    
    ##### Tests ob alle Angaben korrekt sind
    if(any(input$vorname == "", input$nachname == "", input$geburtsdatum == "") | !datumsformattest(input$geburtsdatum)){
      
      if(input$vorname == ""){
        show("fehler_vorname")
      }else{
        hide("fehler_vorname")
      }
      
      if(input$nachname == ""){
        show("fehler_nachname")
      }else{
        hide("fehler_nachname")
      }
      
      if(input$geburtsdatum == ""){
        show("fehler_geburtsdatum")
      }else{
        hide("fehler_geburtsdatum")
      }
      
      if(!datumsformattest(input$geburtsdatum) & !(input$geburtsdatum == "")){
        show("fehler_geburtsdatum_format")
      }else{
        hide("fehler_geburtsdatum_format")
      }
      
    }else{
      hide("fehler_vorname")
      hide("fehler_nachname")
      hide("fehler_geburtsdatum")
      hide("fehler_geburtsdatum_format")
      
      ##### Spielerbild und siegesmusik
      if(input$siegesmusik %in% c("", "Keine siegesmusik")){
        siegesmusik <- "Keine Siegesmusik"
        siegesmusikpfad <- "Keine Siegesmusik"
      }else{
        siegesmusik <- input$siegesmusik
        siegesmusikpfad <- siegesmusikstücke$path[siegesmusikstücke$dateinamen == input$siegesmusik]
      }
      
      if(input$spielerbild %in% c("", "Kein Bild")){
        spielerbild <- "Kein_bild.jpg"
      }else{
        spielerbild <- paste0(input$spielerbild, ".jpg")
      }
      
      ##### Zeige Informationen zum neuen Spieler
      values$neuer_spieler <- c("Vorname" = input$vorname,
                                "Nachname" = input$nachname,
                                "Geburtsdatum" = input$geburtsdatum,
                                "Siegesmusik" = siegesmusik,
                                "Spielerbild" = spielerbild)
      
      hide("neuer_spieler_eingabe")
      hide("spieler_bearbeiten")
      show("neuer_spieler_anzeige")
      
      ##### Speichere Spieler in Datenbank
      datasets$spieler_infos_allgemein[] <- lapply(datasets$spieler_infos_allgemein, as.character)
      datasets$spieler_infos_allgemein <- rbind(datasets$spieler_infos_allgemein, rep(NA, ncol(datasets$spieler_infos_allgemein)))
      last_row <- nrow(datasets$spieler_infos_allgemein)
      datasets$spieler_infos_allgemein$ID <- as.numeric(datasets$spieler_infos_allgemein$ID)
      datasets$spieler_infos_allgemein$ID[last_row] <- as.character(max(datasets$spieler_infos_allgemein$ID, na.rm = TRUE) + 1)
      datasets$spieler_infos_allgemein$Vorname[last_row] <- input$vorname
      datasets$spieler_infos_allgemein$Nachname[last_row] <- input$nachname
      datasets$spieler_infos_allgemein$Displayname[last_row] <- paste0(input$vorname, " ", input$nachname)
      datasets$spieler_infos_allgemein$Geburtsdatum[last_row] <- input$geburtsdatum
      datasets$spieler_infos_allgemein$Bildpfad[last_row] <- spielerbild
      datasets$spieler_infos_allgemein$Musikpfad[last_row] <- siegesmusikpfad
      
      saveRDS(datasets$spieler_infos_allgemein, "C:/Users/Richard/Documents/Programmieren/R/Musikmemory/tables/spieler_infos_allgemein.rds")
    }
    
  })
  
  ##### Speicher Button Änderungen an Spielerdatensatz
  observeEvent(input$speichere_aenderungen, {
    
    print("Speichere Änderungen")
    
    saveRDS(datasets$spieler_infos_allgemein, "C:/Users/Richard/Documents/Programmieren/R/Musikmemory/tables/spieler_infos_allgemein.rds")
    
  })
  
  ##### Weiteren Spieler erstellen
  observeEvent(input$weiterer_spieler, {
    
    show("neuer_spieler_eingabe")
    show("spieler_bearbeiten")
    hide("neuer_spieler_anzeige")
    
  })
  
  ##### Zurück zum Hauptmenue
  observeEvent(input$zu_hauptmenue_1, {
    
    print("zu Hauptmenü 1")
    
    hide("spieler_bearbeiten")
    hide("neuer_spieler_eingabe")
    show("hauptmenue")
    
  })
  
  observeEvent(input$zu_hauptmenue_2, {
    
    print("zu Hauptmenü 2")
    
    hide("spieler_bearbeiten")
    hide("neuer_spieler_anzeige")
    show("hauptmenue")
    
  })
  
  ##########################################
  ##### Spielvorbereitung
  ##########################################
  ##### Hier werden die Spieleinstellungen vorgenommen
  output$spieleinstellungen <- renderUI({
    
    SpieleinstellungenInput("spieleinstellungen", musikgenres)
    
  })
  
  
  ##### Spielerauswahl
  output$spielerwahl <- renderUI({
    
    spielernamen <- datasets$spieler_infos_allgemein$Displayname
    
    SpielerwahlInput("spielerwahl", input$anz_spieler, spielernamen)
    
  })
  
  ##### Genreauswahl alle wählen
  observeEvent(input$alle_musikgenres_waehlen, {
    
    print("Alle Genres wählen")
    
    if(input$alle_musikgenres_waehlen == FALSE){
      updateCheckboxGroupInput(session, inputId = "musikgenre_waehlen", label = NULL, choices = musikgenres, selected = NULL)
    }else{
      updateCheckboxGroupInput(session, inputId = "musikgenre_waehlen", label = NULL, choices = musikgenres, selected = musikgenres)
    }
    
  })
  
  ##### Klick auf Startbutton
  observeEvent(input$start_button, {
    
    print("observe start button")
    
    if(!is.null(input$musikgenre_waehlen)){
      
      ##### Verstecke die Spieleinstellungen und zeige das Spielfeld
      hide("spielerwahl")
      hide("start_button_id")
      hide("fehler_genre")
      hide("spieleinstellungen_id")
      show("spielfeld")
      
      ##### Generiere einen Datensatz mit der Information, welche Lieder hinter welchen Karten stecken
      anzahl_paare <- as.numeric(input$anzahl_paare)
      karte <- sample(1:(anzahl_paare*2),anzahl_paare*2)
      paar <- rep(1:anzahl_paare,2)
      
      lied_auswahl <- c()
      if("Filmmusik" %in% input$musikgenre_waehlen){
        lied_auswahl <- c(lied_auswahl, Filmmusik)
      }
      if("Classic Rock" %in% input$musikgenre_waehlen){
        lied_auswahl <- c(lied_auswahl, Classic_Rock)
      }
      # if("Indie (Rock)" %in% input$musikgenre_waehlen){
      #   lied_auswahl <- c(lied_auswahl, Indie_Rock)
      # }
      if("Instrumentalstücke" %in% input$musikgenre_waehlen){
        lied_auswahl <- c(lied_auswahl, Instrumentalstuecke)
      }
      # if("Klassische Musik" %in% input$musikgenre_waehlen){
      #   lied_auswahl <- c(lied_auswahl, Klassische_Musik)
      # }
      if("Die 60er & 70er" %in% input$musikgenre_waehlen){
        lied_auswahl <- c(lied_auswahl, Die_60er_und_70er)
      }
      # if("Punk Rock & Alternative" %in% input$musikgenre_waehlen){
      #   lied_auswahl <- c(lied_auswahl, Punk_Rock_und_Alternative)
      # }
      # if("Oldies & Schlager" %in% input$musikgenre_waehlen){
      #   lied_auswahl <- c(lied_auswahl, Oldies_und_Schlager)
      # }
      
      anzahl_lieder <- length(lied_auswahl)
      lieder <- lied_auswahl[sample(anzahl_lieder,anzahl_paare)]
      
      datasets$karten_tabelle <- as.data.frame(cbind(paar, karte, lieder))
      
    }else{
      show("fehler_genre")
    }
    
  })
  
  ##########################################
  ##### Spielablauf
  ##########################################
  ##### Darstellung der Spieler und des Punktestandes
  output$spielstand <- renderUI({
    
    SpielstandOutput("normal_wettkampf", datasets$spieler_infos_allgemein, input$anz_spieler, input$spieler1, input$spieler2, input$spieler3,
                     input$spieler4, values$paare_spieler1, values$paare_spieler2, values$paare_spieler3, values$paare_spieler4)
    
  })
  
  ##### Hinweis welcher spieler an der Reihe ist
  output$aktiver_spieler <- renderUI({
    
    print("aktiver_spieler")
    
    aktiver_spieler <- eval(parse(text=paste0("input$spieler", values$aktiver_spieler)))
    aktiver_spieler <- datasets$spieler_infos_allgemein$Vorname[datasets$spieler_infos_allgemein$Displayname == aktiver_spieler]
    
    div(style="font-size:32px; margin-top:50px; margin-left:450px; color:lawngreen", HTML(paste0(aktiver_spieler, " ist an der Reihe!")))
    
  })
  
  ##### Memorykarten erstellen
  output$memory_karten <- renderUI({
    
    print("memory_karten")
    
    MemoryKartenOutput("memory_karten", input$anzahl_paare, input$nummerierung)
    
  })
  
  ##### Speichere die gerade gezogene Karte
  observeEvent(input$k1, {
    values$k <- 1})
  observeEvent(input$k2, {
    values$k <- 2})
  observeEvent(input$k3, {
    values$k <- 3})
  observeEvent(input$k4, {
    values$k <- 4})
  observeEvent(input$k5, {
    values$k <- 5})
  observeEvent(input$k6, {
    values$k <- 6})
  observeEvent(input$k7, {
    values$k <- 7})
  observeEvent(input$k8, {
    values$k <- 8})
  observeEvent(input$k9, {
    values$k <- 9})
  observeEvent(input$k10, {
    values$k <- 10})
  observeEvent(input$k11, {
    values$k <- 11})
  observeEvent(input$k12, {
    values$k <- 12})
  observeEvent(input$k13, {
    values$k <- 13})
  observeEvent(input$k14, {
    values$k <- 14})
  observeEvent(input$k15, {
    values$k <- 15})
  observeEvent(input$k16, {
    values$k <- 16})
  observeEvent(input$k17, {
    values$k <- 17})
  observeEvent(input$k18, {
    values$k <- 18})
  observeEvent(input$k19, {
    values$k <- 19})
  observeEvent(input$k20, {
    values$k <- 20})
  observeEvent(input$k21, {
    values$k <- 21})
  observeEvent(input$k22, {
    values$k <- 22})
  observeEvent(input$k23, {
    values$k <- 23})
  observeEvent(input$k24, {
    values$k <- 24})
  observeEvent(input$k25, {
    values$k <- 25})
  observeEvent(input$k26, {
    values$k <- 26})
  observeEvent(input$k27, {
    values$k <- 27})
  observeEvent(input$k28, {
    values$k <- 28})
  observeEvent(input$k29, {
    values$k <- 29})
  observeEvent(input$k30, {
    values$k <- 30})
  observeEvent(input$k31, {
    values$k <- 31})
  observeEvent(input$k32, {
    values$k <- 32})
  observeEvent(input$k33, {
    values$k <- 33})
  observeEvent(input$k34, {
    values$k <- 34})
  observeEvent(input$k35, {
    values$k <- 35})
  observeEvent(input$k36, {
    values$k <- 36})
  observeEvent(input$k37, {
    values$k <- 37})
  observeEvent(input$k38, {
    values$k <- 38})
  observeEvent(input$k39, {
    values$k <- 39})
  observeEvent(input$k40, {
    values$k <- 40})
  observeEvent(input$k41, {
    values$k <- 41})
  observeEvent(input$k42, {
    values$k <- 42})
  observeEvent(input$k43, {
    values$k <- 43})
  observeEvent(input$k44, {
    values$k <- 44})
  observeEvent(input$k45, {
    values$k <- 45})
  observeEvent(input$k46, {
    values$k <- 46})
  observeEvent(input$k47, {
    values$k <- 47})
  observeEvent(input$k48, {
    values$k <- 48})
  observeEvent(input$k49, {
    values$k <- 49})
  observeEvent(input$k50, {
    values$k <- 50})
  observeEvent(input$k51, {
    values$k <- 51})
  observeEvent(input$k52, {
    values$k <- 52})
  observeEvent(input$k53, {
    values$k <- 53})
  observeEvent(input$k54, {
    values$k <- 54})
  observeEvent(input$k55, {
    values$k <- 55})
  observeEvent(input$k56, {
    values$k <- 56})
  
  ##### Reaktion auf das Ziehen einer Karte
  observeEvent(values$k, {
    
    # k ist die Nummer der gerade gezogenen Karte
    k <- values$k
    
    # Spiele das Lied zur Karte ab
    insertUI(selector = paste0("#k",k),
             where = "afterEnd",
             ui = tags$audio(src = paste0("Musik/", as.character(datasets$karten_tabelle$lieder[datasets$karten_tabelle$karte == k])),
                             type = "audio/mp3", autoplay = NA, controls = NA, style="display:none;")
    )
    
    if(values$erste_karte == 0){
      # die gezogene Karte ist die erste in diesem Zug
      values$erste_karte <- k
      disable(paste0("k", k))
    }else{
      # die gezogene Karte ist die zweite in diesem Zug
      paar_karte_1 <- as.character(datasets$karten_tabelle$paar[datasets$karten_tabelle$karte == values$erste_karte])
      paar_karte_2 <- as.character(datasets$karten_tabelle$paar[datasets$karten_tabelle$karte == k])
      enable(paste0("k", values$erste_karte))
      if(paar_karte_1 == paar_karte_2){
        # die zweite Karte passt zur ersten
        eval(parse(text = paste0("values$paare_spieler", values$aktiver_spieler, " = values$paare_spieler", values$aktiver_spieler, "+1")))
        hide(paste0("k", values$erste_karte))
        hide(paste0("k", k))
        show(paste0("k", values$erste_karte, "h"))
        show(paste0("k", k, "h"))
        values$erste_karte <- 0
        if(sum(values$paare_spieler1, values$paare_spieler2, values$paare_spieler3, values$paare_spieler4) == as.numeric(input$anzahl_paare)){
          values$spielende <- TRUE
        }
      }else{
        # die zweite Karte passt nicht zur ersten
        values$erste_karte <- 0
        if(values$aktiver_spieler < as.numeric(substring(input$anz_spieler,1,1))){
          values$aktiver_spieler <- values$aktiver_spieler + 1
        }else{
          values$aktiver_spieler <- 1
        }
      }
    }
  })
  
  ##########################################
  ##### Spielende
  ##########################################
  observeEvent(values$spielende, {
    
    print("spielende")
    
    # Berechne den/die Sieger
    maximal_punkte <- max(values$paare_spieler1, values$paare_spieler2, values$paare_spieler3, values$paare_spieler4)
    sieger <- c()
    if(values$paare_spieler1 == maximal_punkte){
      sieger <- c(sieger, input$spieler1)
    }
    if(values$paare_spieler2 == maximal_punkte){
      sieger <- c(sieger, input$spieler2)
    }
    if(values$paare_spieler3 == maximal_punkte){
      sieger <- c(sieger, input$spieler3)
    }
    if(values$paare_spieler4 == maximal_punkte){
      sieger <- c(sieger, input$spieler4)
    }
    values$sieger <- sieger
    
    # Ermittle per Zufall den Siegerpreis
    values$preis <- as.character(sample(preise$Preise,1))
    
    # Spiele die Siegermusik
    values$siegerlied_pfad <- spieler_infos_allgemein$Musikpfad[spieler_infos_allgemein$Displayname == sieger[1]]
    file.copy(values$siegerlied_pfad,"C:/Users/Richard/Documents/Programmieren/R/Musikmemory/www/Siegerlieder", overwrite = TRUE)
    # play(values$siegerlied_pfad)
    
    #liedpfad <- "C:/Users/Richard/Music/Neue Titel/Wind - Akeboshi.mp3"
    # liedtitel <- strsplit(liedpfad,"\\/")
    # liedtitel <- sapply(liedtitel, `[`, length(liedtitel[[1]]))
    # tags$audio(src = paste0("Siegerlieder/", liedtitel),
    #            type = "audio/mp3", autoplay = NA, controls = NA, style="display:none;")
    
    # Zeige die Siegesmeldung
    hide("spielfeld")
    show("spielende")
  })
  
  ##### Zeige Siegermeldung an mit dem Namen des Gewinners / der Gewinner
  output$siegesmeldung <- renderUI({
    
    print("siegesmeldung")
    
    sieger <- values$sieger
    
    if(length(sieger) == 1){
      # ein Sieger
      HTML(paste0("Glückwunsch, ", sieger[1], " ist der Gewinner! Hier ist dein Preis:"))
    }else if(length(sieger) == 2){
      # zwei Sieger
      HTML(paste0("Das spiel endet untentschieden zwischen ", sieger[1], " und ", sieger[2], "! Hier ist euer Preis:"))
    }else if(length(sieger) == 3){
      # zwei Sieger
      HTML(paste0("Das spiel endet untentschieden zwischen ", sieger[1], ", ", sieger[2], " und ", sieger[3], "! Hier ist euer Preis:"))
    }else if(length(sieger) == 4){
      # zwei Sieger
      HTML(paste0("Das spiel endet untentschieden zwischen ", sieger[1], ", ", sieger[2], ", ", sieger[3], " und ", sieger[4], "! Hier ist euer Preis:"))
    }
    
  })
  
  ##### Zeige Siegerpreis
  output$siegerpreis <- renderUI({
    
    print("siegerpreis")
    
    preis <- values$preis
    preispfad <- paste0("Preise/", preis, ".jpg")
    
    if(length(values$sieger) >= 1){
      img(src=preispfad, align = "center", width = 800, height = 500)
    }
    
  })
  
  ##### Zeige Spruch zum Siegerpreis
  output$siegerpreisspruch <- renderUI({
    
    print("siegerpreisspruch")
    
    preis <- values$preis
    
    if(length(values$sieger) == 1){
      spruch <- as.character(preise$Spruch[preise$Preise == preis])
      HTML(spruch)
    }else if(length(values$sieger) > 1){
      spruch <- as.character(preise$Spruch_unentschieden[preise$Preise == preis])
      HTML(spruch)
    }
    
  })
  
  ##### Spiele das Siegerlied
  output$spiele_siegerlied_id <- renderUI({
    
    print("spiele Siegerlied")
    
    if(length(values$sieger) >= 1){
      actionButton("spiele_siegerlied", "Spiele Siegerlied")
    }
    
  })
  
  observeEvent(input$spiele_siegerlied, {
    
    print("observe spiele siegerlied")
    
    play(values$siegerlied_pfad)
    
  })
  
  ##### Zurück zum Hauptmenü
  output$zu_hauptmenue_3_id <- renderUI({
    
    print("zu Hauptmenü 3")
    
    if(length(values$sieger) >= 1){
      actionButton("zu_hauptmenue_3", "Zurück zum Hauptmenü")
    }
    
  })
  
  observeEvent(input$zu_hauptmenue_3, {
    
    print("observe zu Hauptmenü 3")
    
    js$reset()
    
  })
  
}

shinyApp(ui = ui, server = server)
