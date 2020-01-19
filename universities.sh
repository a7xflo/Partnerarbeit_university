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
    "Funktion: Anzahl Universitäten eines Bundesstaates anzeigen"
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
        0) # Funktion Datenvorschau (Dataset Preview)
            echo -e "\n=> ${MENU[0]}\n"
            head -n 10 universities.csv | csvlook
            echo ""
        ;; 
        1) # Funktion Daten Analyse
            echo -e "\n=> ${MENU[1]}\n"
			echo -e "Suchwort eingeben:"
			read Suchwort
			echo ""
			csvgrep -c 1 -m $Suchwort universities.csv | csvlook
			echo ""
        ;;
        2) # Funktion: Anteil der Colleges
            echo -e "\n=> ${MENU[2]}\n"
			
			# Menge aller Schulen				
				wc -l universities.csv				
			
			# Anzahl Colleges
				grep -i "college" universities.csv | grep -i -v "university" | wc -l
				
			#TODO: Menge / Anzahl COlleges in Variablen legen und Berechnung durchführen
          
        ;;
		3) # Funktion: Universitäten eines Bundesstaates anzeigen.
			echo -e "\n=> ${MENU[3]}\n"
		;;
		4) # Funktion: Anzahl Universitäten eines Bundesstaates anzeigen.
			echo -e "\n=> ${MENU[4]}\n"	
			cat universities.csv | cut -f3 -d, | sort | uniq -c
		;;
		5) # Ende
			echo -e "\n=> ${MENU[5]}\n"	
			break # while Schleife beenden	
		;;
        *) # bei allen anderen Antworten kommt dieser Block zum Zug
            echo -e "\n=> Ungueltige Eingabe\n"
        ;;
    esac
done
