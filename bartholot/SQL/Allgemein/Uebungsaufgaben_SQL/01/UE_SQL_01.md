# TODO: SQL Übungen

TODO: Bekomme die Aufgabe nnicht aus der Presi des Dozenten, Screenshots etc.
TODO: SQL Aufgaben suchen und üben ggf. ki generierte Aufgaben


Aufgabe d: Geben Sie alle SQL-Anweisungen an, welche notwendig sind, um einen neuen Nutzer: "Maier" mit dem Passwort: "5jk2T?" zu erstellen und diesem die Leserechte an der Tabelle: Objekt geben.
````SQL
CREATE USER 'Maier' IDENTIFIED BY '5jk2T?';
GRANT SELECT ON Objekt TO 'Maier';
````

# SQL - Fragen und Antworten
Was sind NoSQL-Datenbanken?

- NoSQL-Datenbanken sind nicht-relationale Datenbanken, die felexiblere Datenstrukturen als traditionelle SQL-Datenbanken ermöglichen. Der Begriff steht für: **"Not only SQL"** und beschreibt Systeme, die große Datenmengen effizient verarbeiten können.

Grundaufbau von MongoDB
- MongoDB ist eine dokumentorietnierte NoSQL-Datenbank mit folgender Hierachie:
    - Database (Datenbank)
    - Collection
    - Dokument
    - TODO...
Kernfunktionen von MongoDB
- Schemafelxibilität
- Horizontale Skalierung
- TODO....

Vorteile von NoSQL-Datenbanken gegnüber relationalen Datenbanken
- Felixibilität: Keine starren Schemavorgaben, einfache Strukturänderung möglich
- Skalierbarkeit: Bessere Horizotalskalierung für große Datenmengen
- Performance: Optimiert für bestimmte Anwendungsfälle wie Dokumnetabfragen
- Entwicklerfreundlichkeit: Objektorientierte Datenstrukturen passen gut zu modernen Programmiersparachen

Nachteile und Grenzen von NoSQL-Datenbanken
- ACID-Eigenschaften: Eingeschränkte Transaktionsunterstützung
- Komplexe Abfragen: Joins und komplexere ... TODO
- Datenkonsistenz
- Speicherverbrauch

# PostgreSQL
Was macht PostgreSQL besonders?

Objektrelationales Modell: PostgreSQL kombiniert klassische relationale Datenbankfunktionen mit objektorientierten Konzepten. Du kannst eigene Datentypen, Operatoren und Funktionen definieren.

- Strikte SQL-Konformität: Es hält sich eng an den SQL-Standard (z. B. SQL:2011), was die Portabilität und Kompatibilität erhöht.

- ACID-Konformität: PostgreSQL garantiert Atomicity, Consistency, Isolation und Durability – also höchste Zuverlässigkeit bei Transaktionen.

- Erweiterbarkeit: Du kannst PostgreSQL mit eigenen Modulen erweitern – z. B. mit PostGIS für Geodaten oder pgRouting für Netzwerkberechnungen.

- Materialisierte Sichten & Trigger: Es unterstützt komplexe Features wie automatisch aktualisierbare Sichten, Trigger und gespeicherte Prozeduren.

- Multi-Plattform & Open Source: Läuft auf Windows, Linux, macOS, BSD etc. – und der Quellcode ist komplett offen und kostenlos nutzbar.

- Große Community & Stabilität: Seit den 1980er Jahren kontinuierlich weiterentwickelt, heute von tausenden Unternehmen weltweit eingesetzt.

Für wen ist PostgreSQL ideal?
- Entwickler, die maßgeschneiderte Anwendungen bauen wollen

- Unternehmen mit komplexen Datenmodellen

- Projekte, die hohe Datenintegrität und Skalierbarkeit benötigen

- Nutzer, die eine freie Alternative zu kommerziellen Systemen wie Oracle oder SQL Server suchen