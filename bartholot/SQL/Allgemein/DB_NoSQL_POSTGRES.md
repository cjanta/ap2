# NoSQL - Fragen und Antworten
Was sind NoSQL-Datenbanken?

- NoSQL-Datenbanken sind nicht-relationale Datenbanken, die felexiblere Datenstrukturen als traditionelle SQL-Datenbanken ermöglichen. Der Begriff steht für: **"Not only SQL"** und beschreibt Systeme, die große Datenmengen effizient verarbeiten können.

Grundaufbau von MongoDB
- MongoDB ist eine dokumentorietnierte NoSQL-Datenbank mit folgender Hierachie:
    - Database (Datenbank) - oberste Ebene enthält collections
    - Collection - enthalten documents
    - Document - enthalten fields
    - Field - Datenfeld
Kernfunktionen von MongoDB

- Schemaflexibilität: Dokumente in derselben Collection können unterschiedliche Strukturen haben. Dies ermöglicht agile Entwicklung und einfache Anpassungen.

- Horizontale Skalierung: MongoDB unterstützt Sharding, wodurch Daten auf mehrere Server verteilt werden können.

- Replikation: Master-Slave-Architektur für Hochverfügbarkeit und Datensicherheit.

- Indexierung: Unterstützt verschiedene Indextypen für optimierte Abfrageperformance.


Vorteile von NoSQL-Datenbanken gegnüber relationalen Datenbanken
- Felixibilität: Keine starren Schemavorgaben, einfache Strukturänderung möglich
- Skalierbarkeit: Bessere Horizotalskalierung für große Datenmengen
- Performance: Optimiert für bestimmte Anwendungsfälle wie Dokumnetabfragen
- Entwicklerfreundlichkeit: Objektorientierte Datenstrukturen passen gut zu modernen Programmiersparachen

Nachteile und Grenzen von NoSQL-Datenbanken
- ACID-Eigenschaften: Eingeschränkte Transaktionsunterstützung im Vergleich zu SQL
- Komplexe Abfragen: Joins und komplexere relationale Abfragen sind schwieriger Umzusetzen
- Datenkonsistenz: Kann in bestimmten Szenarien problematisch sein
- Speicherverbrauch: BSON-Format kann speicherintensiver sein als normalisierte realtionale Strukturen

Praktische Anwendungsbeispiele von NoSQL-Datenbanksystemen

- E-Commerce-Plattform:
    - Produktkataloge mit unterschiedlichen Attributen (Bücher haben ISBN, Kleidung hat Größen)
    - Kundenprofile mit variablen Informationen
    - Warenkörbe mit dynamischen Inhalten

- Content Management System:
    - Blog-Artikel mit unterschiedlichen Medientypen
    - Benutzergenerierte Inhalte
    - Mehrsprachige Inhalte

- Social Media Anwendungen:
    - Benutzerprofile mit flexiblen Informationen
    - Posts, Kommentare und Likes
    - Echtzeitfeeds und Benachrichtigungen

- IoT-Datensammlung:
    - Sensordaten von verschiedenen Gerätetypen
    - Zeitreihendaten mit variablen Messparametern
    - Gerätestatus und Konfigurationsdaten

# NoSQL: Prüfungsrelevante Abgrenzung zu SQL

Für IHK-Prüfungen wichtig ist das Verständnis, wann NoSQL-Datenbanken wie MongoDB eingesetzt werden sollten:
- bei unstrukturierten Daten
- hohen Skalierungsanforderungen
- flexiblen Datenmodellen. 

SQL-Datenbanken bleiben die bessere Wahl für
- strukturierte Daten mit komplexen Beziehungen
- strikten Konsistenzanforderungen
- bestmögliche Redundanzfreiheit


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