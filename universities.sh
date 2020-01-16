#!/bin/bash
#
# universities.sh
# Partnerarbeit Universitäten Ranking
#
# 23.01.2020 / Florian Bohren / Marc Bischof / Luca Hostettler
#
# Variablen
TITLE="**** Universitäten Menu ****"

# Der Array fuer das Menu
MENU=(
"Funktion: Datenvorschau"
"Funktion: Datenanalyse"
"Funktion: Anteil der Colleges"
"Funktion: Universitäten eines Bundesstaates anzeigen"
"Funktion: Universitäten eines Bundesstaates"
"Ende"
)

# Anzahl Elemente des Arrays MENU
ANZAHL=${#MENU[*]}

# Beginn des Programmes
# Schlaufe fuer das Menue
while true; do
  # Menu ausgeben
  echo "$TITLE"
  for ((i=0; $i<$ANZAHL; i=$i+1)); do
    echo "$i) ${MENU[$i]}"
  done

  # Eingabe verlangen und einlesen
  echo -n "Auswahl eingeben, mit ENTER bestaetigen: "
  read ANTWORT
  # case Anweisung - je nach Eingabe Verhalten bestimmen
  case $ANTWORT in
  0) # wenn die Antort 1 ist tue dies
    echo -e "\n=> ${MENU[0]}\n"
    ls -l *.sh
    echo ""
    ;;
  1) # dasselbe fuer die Antwort 2
    echo -e "\n=> ${MENU[1]}\n"
    ./addscript.sh einNeuesSkrip.sh 
    ;;
  2|[eE]|[qQ]) # regulaerer Ausdruck, behandelt sowohl 2 als auch e/E oder q/Q
    echo -e "\n=> ${MENU[2]}\n"
    break # while Schleife beenden
    ;;
  *) # bei allen anderen Antworten kommt dieser Block zum Zug
    echo -e "\n=> Ungueltige Eingabe\n"
    ;;
  esac
done
