##### BAC 13.03.2018 Erstelle Datensätze und Vektoren für Dart-App
###################################################################################################################################
##### Remove all objects from environment
rm(list=ls())

##### Datensatz Spielerinfos allgemein
spieler_infos_allgemein <- as.data.frame(cbind("ID" = "1",
                                         "Vorname" = "Gast",
                                         "Nachname" = "1",
                                         "Displayname" = "Gast 1",
                                         "Geburtsdatum" = "20.05.1923",
                                         "Bildpfad" = "Frosch.jpg",
                                         "Musikpfad" = "Keine Musik"))

spieler_infos_allgemein <- rbind(spieler_infos_allgemein,
                                 as.data.frame(cbind("ID" = "2",
                                               "Vorname" = "Gast",
                                               "Nachname" = "2",
                                               "Displayname" = "Gast 2",
                                               "Geburtsdatum" = "10.10.1920",
                                               "Bildpfad" = "Hund.jpg",
                                               "Musikpfad" = "Keine Musik")))

saveRDS(spieler_infos_allgemein, "C:/Users/Richard/Documents/Programmieren/R/Musikmemory/tables/spieler_infos_allgemein.rds")

