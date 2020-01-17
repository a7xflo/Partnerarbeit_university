# Scripting Tasks

## TOC

* Prerequisites
* Contributors
* Tasks  

## Prerequisites

### Windows users

1. Install Windows Subsystem for Linux
2. Terminal has problems with spaces in paths when powershell is used, use `WSL bash` instead. For beta WSL please read [this](https://github.com/rogalmic/vscode-bash-debug/issues/93)
3. pathBash refers to BASH binary path in `WSL` filesystem, not path to `wsl.exe/bash.exe`

### Mac Users

1. Read here if your mac has `/usr/local/bin/pkill`.
2. Install `bash` version 4.* and set `pathBash` properly

### Common

1. `apt-get install csvkit`
2. `bash universities.sh`

## Tasks - Universitäten Ranking

### Description

Das Ranking der Universitäten ist zu einer gemeinsamen Aufgabe vieler Institutionen geworden, jede
von ihnen schlägt eine andere Rangfolge vor, die auf mehreren gewichteten Kategorien basiert.
Beispiele von diesen Ranglisten sind: Webometrics Ranking der Universities der Welt, THES - QS
World University Rankings und akademisches Ranking der Weltuniversitäten.  

Bemerkung: Für die formatierte Ausgabe muss das [csvkit Programm](https://csvkit.readthedocs.io) installiert und verwendet
werden.

### Funktion Datenvorschau (Dataset Preview)

Die Grösse einer vollständigen Datenbasis für die Auswertung liegt im Big Data Bereich. Das Laden
der ganzen Datei ist somit nicht möglich. Um sich einen Überblick der Datenstruktur verschaffen zu
können ist die Funktion Datenvorschau, welche einige Zeilen am Anfang der Datei formatiert
auflistet, bereit zu stellen.
Spalten der Auswertung: Name,Location, State,Tuition and fees,Undergrad Enrollment,Rank

### Funktion Daten Analyse

Suchen und formatierte Ausgabe sämtlicher Spalten aller Universitäten deren Namen ein Suchwort
(Teilzeichenkette) enthält. Das jeweilige Suchwort wird vom Benutzer eingegeben (z.B. College).
Spalten der Auswertung: Name,Location, State,Tuition and fees,Undergrad Enrollment,Rank

### Funktion: Anteil der Colleges

Ermitteln Sie den prozentualen Anteil der Colleges im Verhältnis zu allen aufgeführten Universitäten
in der Auswertungsdatei.
Ausgabe: percent of colleges = 2.15%

### Funktion: Universitäten eines Bundesstaates anzeigen.

Formatierte Ausgabe aller Universitäten eines Bundesstaates. Der gewünschte Bundesstaat kann
vom Benutzer festgelegt werden (Eingabe).
Spalten der Auswertung: Name,Location, State,Tuition and fees,Undergrad Enrollment,Rank

### Funktion: Universitäten eines Bundesstaates.

Ermitteln Sie die Anzahl der Universitäten pro Bundesstaat und geben Sie die Liste aufsteigend
sortiert nach Bundesstaat aus.
Spalten der Auswertung: Count, Bundesstaat

# Prepare your Linux

