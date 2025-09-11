# Aufgabe Brettspiel
Ein beliebtes Brettspiel soll digital umgesetzt werden.
Bei diesem Brettspiel existieren Spieler. 
Jeder Spieler hat einen Spielernamen (z.B. Kämpfer, Barbar, Schurke),
einen Spielerlevel (z.B. 1, 2),
eine Spielerwaffe (z.B. Schwert, Dolch, Zauberstab)
und der Gegnerlevel setzt sich aus dem Durchschnittslevel zusammen. 

D.h. Wenn der Kämpfer (Lvl 5) und der Schurke (Lvl 3) spielen, ist der 
Gegnerlevel (5 + 3) / 2 Spieler, also 4. 
Dieser Wert soll in der Spielerklasse gespeichert werden und auch abrufbar sein.

**Erstellen Sie das Klassendiagramm sowie den Pseudocode dazu**
```
Zuweisung: 	a := 0
Klasse erstellen:	Spieler char1 := new Spieler()
Klassengetter Aufruf	objekt.getEigenschaft()
Klassensetter Aufruf	objekt.setEigenschaft(wert)
Methode	+ getEigenschaft() : Datentyp
		Rückgabe eigenschaft
	Ende getEigenschaft
bzw.	+ setEigenschaft(Eigenschaft : Datentyp) : void
		…
	Ende setEigenschaft
```

Statische Methoden / Klassenvariablen werden im Klassendiagramm mit {static} am Ende gekennzeichnet um im Pseudocode mit static wie im Quellcode.