#!/bin/bash
#
# universities.sh
# Partnerarbeit Universitäten Ranking
#
# 23.01.2020 / Florian Bohren / Marc Bischof / Luca Hostettler
if dpkg -s csvkit 2>&1 ; then
    echo "csvkit found"
else
    echo "csvkit not found"
    exit 1
fi
# Variablen
TITLE="**** Universitäten Menu ****"
# Der Array fuer das Menu
declare -a menu=(
    "Funktion: Datenvorschau"
    "Funktion: Datenanalyse"
    "Funktion: Anteil der Colleges"
    "Funktion: Universitäten eines Bundesstaates anzeigen"
    "Funktion: Universitäten eines Bundesstaates"
    "Ende"
)
# Anzahl Elemente des Arrays MENU
menuCount=${#menu[@]}
# Beginn des Programmes
# Schlaufe fuer das Menue
while true; do
    # Menu ausgeben
    echo "$TITLE"
    for ((i=0; i<$menuCount; i++))  
	do
        echo "$i) ${menu[$i]}"
    done
    # Eingabe verlangen und einlesen
    echo -n "Auswahl eingeben, mit ENTER bestaetigen: "
    read ANTWORT
    # case Anweisung - je nach Eingabe Verhalten bestimmen
    case $ANTWORT in
        0) # wenn die Antort 1 ist tue dies
            echo -e "\n=> ${MENU[0]}\n"
            head -n 10 universities.csv | csvlook
            echo ""
        ;;
        1) # dasselbe fuer die Antwort 2
            echo -e "\n=> ${MENU[1]}\n"
			echo -e "Suchwort eingeben:"
			read Suchwort
			echo ""
			csvgrep -c 1 -m $Suchwort universities.csv | csvlook
			echo ""
        ;;
        2) # regulaerer Ausdruck, behandelt sowohl 2 als auch e/E oder q/Q
            echo -e "\n=> ${MENU[2]}\n"
            break # while Schleife beenden
        ;;
		3) #blablabla
		;;
		4) #blablablabla
		;;
		5) #blablabla
		;;
        *) # bei allen anderen Antworten kommt dieser Block zum Zug
            echo -e "\n=> Ungueltige Eingabe\n"
        ;;
    esac
done
