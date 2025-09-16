# 🎓 Datenbank-Normalisierer Suite

Eine vollständige didaktische Sammlung von Python-Programmen zur automatischen Datenbank-Normalisierung von 1NF bis 3NF.

## 📚 Programme im Überblick

### 1. `database_normalizer.py` - Haupt-Normalisierer
**Empfohlen für:** Lernen und Verstehen der Normalisierung

**Features:**
- ✅ Automatische Schritt-für-Schritt-Erklärung
- ✅ Verwendet das Beispiel aus dem Screenshot 
- ✅ Erklärt jede Normalform didaktisch
- ✅ Generiert fertiges SQL-Schema
- ✅ Keine Benutzerinteraktion erforderlich

**Verwendung:**
```bash
python3 database_normalizer.py
```

### 2. `advanced_normalizer.py` - Erweiterte Version
**Empfohlen für:** Eigene Datenanalyse

**Features:**
- ✅ Interaktiver Modus für eigene Daten
- ✅ Automatische Primärschlüssel-Erkennung
- ✅ Automatische Abhängigkeits-Analyse
- ✅ Normalisierungsgrad-Bewertung
- ✅ JSON-Bericht-Generierung

**Verwendung:**
```bash
python3 advanced_normalizer.py
```

### 3. `normalizer.py` - Interaktive Version
**Empfohlen für:** Schritt-für-Schritt-Lernen

**Features:**
- ✅ Pausiert nach jedem Schritt
- ✅ Interaktive Bestätigung
- ✅ Ideal für Präsentationen

**Hinweis:** Funktioniert nur in interaktiven Terminals

## 📄 Generierte Dateien

### `normalized_database.sql`
- Vollständiges 3NF-SQL-Schema
- Basiert auf dem Original-Beispiel
- Sofort verwendbar
- Mit Beispiel-Daten und Abfragen

### `normalization_report.json` (bei advanced_normalizer.py)
- Detaillierte Analyse-Ergebnisse
- Strukturierte Daten über Normalisierung
- Maschinenlesbar für weitere Verarbeitung

## 🎯 Das Original-Beispiel

Alle Programme basieren auf diesem Beispiel aus dem Screenshot:

```
P# | P_Name  | Abt# | Abt-Name   | Pj# | Pj-Name | Pj-Std
---|---------|------|------------|-----|---------|-------
101| Müller  | 1    | Motoren    | I1  | A       | 60
101| Müller  | 1    | Motoren    | I2  | B       | 40
102| Meier   | 2    | Karosserie | I3  | C       | 100
103| Krause  | 2    | Karosserie | I1  | A       | 20
103| Krause  | 2    | Karosserie | I2  | B       | 50
103| Krause  | 2    | Karosserie | I3  | C       | 30
104| Schmidt | 1    | Motoren    | I1  | A       | 80
104| Schmidt | 1    | Motoren    | I3  | C       | 20
```

## 🔄 Normalisierungs-Prozess

### Schritt 1: 1NF-Prüfung
- Atomare Werte ✅
- Eindeutige Spalten ✅
- Einheitliche Datentypen ✅

### Schritt 2: Primärschlüssel
- Identifiziert: `(P#, Pj#)`
- Begründung: n:m Beziehung zwischen Personen und Projekten

### Schritt 3: 2NF-Probleme
- Partielle Abhängigkeiten erkannt:
  - `P# → P_Name, Abt#, Abt-Name`
  - `Pj# → Pj-Name`

### Schritt 4: 2NF-Normalisierung
Aufgeteilte Tabellen:
- **Personal**: P#, P_Name, Abt#, Abt-Name
- **Projekte**: Pj#, Pj-Name  
- **Personal_Projekte**: P#, Pj#, Pj-Std

### Schritt 5: 3NF-Probleme
- Transitive Abhängigkeit: `P# → Abt# → Abt-Name`

### Schritt 6: 3NF-Normalisierung
Finale Tabellen:
- **Abteilungen**: Abt#, Abt-Name
- **Personal**: P#, P_Name, Abt#
- **Projekte**: Pj#, Pj-Name
- **Personal_Projekte**: P#, Pj#, Pj-Std

## 💡 Lernziele erreicht

Nach der Verwendung dieser Programme verstehen Sie:

✅ **1NF**: Atomare Werte und eindeutige Zeilen
✅ **2NF**: Volle funktionale Abhängigkeiten  
✅ **3NF**: Elimination transitiver Abhängigkeiten
✅ **Primärschlüssel**: Erkennung und Bedeutung
✅ **Funktionale Abhängigkeiten**: Analyse und Auswirkungen
✅ **SQL-Umsetzung**: Von der Theorie zur Praxis

## 🎯 Vorteile der Normalisierung

### ✅ Erreichte Verbesserungen:
- **Redundanz eliminiert**: Jede Information nur einmal gespeichert
- **Konsistenz gewährleistet**: Ein Wert, eine Änderungsstelle
- **Anomalien verhindert**: Sichere Insert/Update/Delete-Operationen
- **Speicher optimiert**: Weniger Datenvolumen
- **Flexibilität erhöht**: Einfache Erweiterungen möglich

### ⚠️ Zu beachtende Nachteile:
- **Komplexere Abfragen**: Mehr JOINs erforderlich
- **Possible Performance**: Eventuell langsamere Lesezugriffe

## 🚀 Sofort loslegen

1. **Für Einsteiger**: `python3 database_normalizer.py`
2. **Für Experimentieren**: `python3 advanced_normalizer.py`
3. **SQL ausprobieren**: Nutzen Sie `normalized_database.sql`

## 📖 Weiterführende Ressourcen

- **BCNF (Boyce-Codd-Normalform)**: Nächste Stufe nach 3NF
- **4NF/5NF**: Spezielle Fälle für komplexe Abhängigkeiten  
- **Denormalisierung**: Wann 3NF aufweichen für Performance

---

**Erstellt mit ❤️ für das Verständnis von Datenbank-Normalisierung**

*Diese Programme sind didaktische Hilfsmittel und demonstrieren die wichtigsten Konzepte der relationalen Datenbank-Theorie.*
