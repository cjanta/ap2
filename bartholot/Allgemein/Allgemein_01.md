# Allgemeine Themen - Lermblätter

# Datenformate

## CSV
Comma-Separated-Values
Mögliche Separierungszeichen
- ,
- ;
- |
- /

## XML
XML's haben dtd (document type definition)
````xml
<?xml version="1.0"?>
<!DOCTYPE person [
   <!ELEMENT person (name+, beruf*)>
   <!ELEMENT name EMPTY>
   <!ATTLIST name vorname CDATA #REQUIRED
                  nachname CDATA #REQUIRED>
   <!ELEMENT beruf EMPTY>
   <!ATTLIST beruf wert CDATA #REQUIRED>
]>

````
Beispiel gem. Definition in der dtd Datei
````xml
<person>
   <name vorname="Alan" nachname="Turing"/>
   <beruf wert="Informatiker"/>
   <beruf wert="Mathematiker"/>
   <beruf wert="Kryptograph"/>
</person>

````