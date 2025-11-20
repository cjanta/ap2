# Simple Factory Pattern
- Kapselt die Objekt-Erstellung in einer zentralen Methode.

- Erzeugt unterschiedliche Objekte basierend auf Eingabeparametern.

- Trennung von Instanziierung und Nutzung erhöht Wartbarkeit.

# Observer Pattern
- Ermöglicht ein Benachrichtigungssystem zwischen Objekten.

- Ein „Subject“ verwaltet eine Liste von „Observers“ und informiert sie bei Zustandsänderungen.

- Ideal für Event-Handling und lose Kopplung.

# MVC (Model-View-Controller)
- Architekturmuster zur Trennung von Daten, Darstellung und Logik.

- Model: Daten und Geschäftslogik.

- View: Benutzeroberfläche.

- Controller: Vermittler zwischen Model und View.

- Fördert Modularität und testbaren Code.

# Singleton Pattern
- Stellt sicher, dass eine Klasse nur eine Instanz hat.

- Bietet globalen Zugriffspunkt auf diese Instanz.

- Häufig verwendet für Konfigurationsobjekte oder Ressourcenverwaltung.

# Weitere Muster

## Strukturmuster
Diese helfen dabei, Klassen und Objekte zu strukturieren.


- Adapter: Übersetzt eine Schnittstelle in eine andere, sodass inkompatible Klassen zusammenarbeiten können.

- Decorator: Fügt einem Objekt dynamisch zusätzliche Funktionalität hinzu, ohne dessen Struktur zu verändern.

- Facade: Bietet eine vereinfachte Schnittstelle zu einem komplexen System.

- Composite: Ermöglicht die Behandlung einzelner Objekte und Objektgruppen einheitlich (z. B. Baumstrukturen).

## Verhaltensmuster
Diese regeln die Interaktion und Verantwortung zwischen Objekten.


- Strategy: Kapselt verschiedene Algorithmen und erlaubt deren Austausch zur Laufzeit.

- Command: Kapselt eine Aktion als Objekt, um sie zu speichern, weiterzugeben oder rückgängig zu machen.

- State: Ermöglicht einem Objekt, sein Verhalten zu ändern, wenn sich sein interner Zustand ändert.

- Template Method: Definiert das Grundgerüst eines Algorithmus, lässt aber Schritte durch Unterklassen überschreiben.

- Chain of Responsibility: Übergibt eine Anfrage entlang einer Kette von Handlern, bis einer sie bearbeitet.

## Erzeugungsmuster
Diese steuern die Objekt-Erzeugung.


- Builder: Trennt die Konstruktion komplexer Objekte von ihrer Repräsentation.

- Prototype: Erzeugt neue Objekte durch Kopieren eines bestehenden Prototyps.

- Abstract Factory: Erzeugt Familien verwandter Objekte, ohne deren konkrete Klassen zu kennen.