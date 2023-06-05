# Kicktiüü Klon

Um den externen Stuff zu minimieren baue ich einen eigenen Kickbaseklon für unser Tippspiel.

Es soll können: 

[ ] User anlegen
[ ] Passwörter
[ ] Tipps speichern
[ ] Echte Ergebnisse in Real-Time (jede Minute) storen
[ ] Punkte geben
[ ] Punkte storen
[ ] Tabelle mit Punkten anzeigen
[ ] Preisgelder(?)
[ ] KI-Prognose pre-game


## Spielprinzip

4 Punkte: Korrektes Ergebnis
3 Punkte: Korrekte Differenz ODER Unentschieden ist nur um 1 Tor verschoeben
2 Punkte: Korrekte Tendenz
0 Punkte: Falsche Tendenz

(Gibt es vielleicht Teilpunkte bei knappen Ergebnissen/Last-Minute-Treffern?)
(Spieler des Tages? Mannschaft des Tages? User vs. KI, wer hat gegen den Trend gewettet und trotzdem gewonnen?)

## Datenbank

Die Datenbank muss folgende Typen besitzen:
    - User
    - Spiele
    - Tipps


Punktstand wird errechnet: Tipps, Spiele -> wird in Python geladen mit ORM. Punkterrechnung

Tipps hat als Foreign Key die User und Spiele IDs. Dazu die jeweils getippten Heim- und Auswärtstore

User haben: ID, Username, Punkte, Real-time Punkte
Spiele haben: Heimteam, Auswärtsteam, Spielstand (geteilt in Heimtore und Auswärsttore)

## Punkterrechnung

Ist eine eigene Klasse mit dem einzigen Modul der Punkterrechnung. Vielleicht werden hier auch die Modelle trainiert? Vielleicht auch Spielerpunkte?