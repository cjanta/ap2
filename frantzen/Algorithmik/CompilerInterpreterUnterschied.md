# Interpreter vs Compiler (nur teilweise aus der Folie übernommen)
- Compiler Sprachen:
    - c, c++, pascal

- Interpreter Sprachen:
    - python, php, perl, basic, ruby

## Python eine Interpretersprache?
- Unterscheidung Compiler- oder Interpretersprache = etwas veraltet, da die meisten Sprachen mitterlweile beides für bessere Performance & Portabilität nutzen
- Nach klassischer Sicht:
    - Kompilieren = alles erst in Maschinencode übersetzen, wobei eine ausführbare Datei entsteht. 
    - Compilersprachen: übersetzen den Code vor der Laufzeit vollständig in Maschinensprache, bevor dieser ausführbar ist. (z.B. C, C++, Rust…)
    - Interpretersprachen: übersetzen und führen den Quellcode während der Laufzeit Zeile für Zeile aus, ohne vorher eine eigenständige ausführbare Datei zu erzeugen.(z.B. Basic, Batch-Skripte)
- Mittlerweile Misch-Masch
- Aktuelle Definition Kompilieren: Code in eine andere Form umwandeln (z.B. Bytecode  Maschinencode)
- Python kompiliert den Quellcode vor der Ausführung komplett in Bytecode (z.B. durch CPython)
    - Umwandlung von *.py-Format in *.pyc-Format
    - Fehlerhandling by Python durch den Compiler
        - Syntaxfehler (z.B. fehlende Doppelpunkte) werden abgefangen  Das Programm startet nicht
        - Laufzeitfehler (z.B. Division durch null) werden erst beim Interpretieren des Bytecodes während der Ausführung entdeckt
- Anschließend führt der Interpreter (Python Virtuelle Maschine – Teil von CPython) den Bytecode während der Laufzeit schrittweise aus
    - Es wird kein separater Maschinencode erzeugt
    - PVM ruft anhand des Bytecodes Funktionen aus den Bibliotheken (*.so, *.dll, *.pyd) auf, die in den Bibliotheken als Maschinencode (0 und 1) vorliegen
    - Python interpretiert also nicht selbst, sondern delegiert alles an die Bibliotheken
    - Anweisungen, die nicht genutzt werden, werden nicht interpretiert
- Dadurch, dass die Anweisungen erst **während der Laufzeit** interpretiert werden, wird **Python den Interpretersprachen** zugeordnet

Der Unterschied scheint marginal, ist aber im Detail relevant
- Python (Interpretersprache)
    - Ausführung des Bytecodes wird komplett an C-Bibliotheken delegiert
- Java (Compilersprache)
    - Häufig vorkommende Anweisungen werden während der Laufzeit in echten Maschinencode vom JIT-Compiler umgewandelt
    - Da kein separater weiterer Funktionsaufruf dabei notwendig ist, sondern Maschinencode direkt gelesen wird  Schneller als reiner Interpreter
## Warum ist das nun so wichtig?
- Achtung: dieses sind Schubladen und nicht immer 100% genau
- Aussage: Compilersprachen sind maßgeblich schneller
    - Richtiger: Je höher der Einsatz des Compilers, desto schneller ist das Programm
- Aussage: Compilersprachen geben während der Kompilierung viele Fehler aus(z.B. statisches Typenchecking), Syntaxoptimierung
    - Richtiger: Unterschiedliche Sprachen haben unterschiedliche Richtlinien, welche Fehler während der Compilierung, vor der Laufzeit und während der Laufzeit abgefangen werden sollen
- Aussage: Compilersprachen sind plattformabhängige Binärdateien
    - Richtiger 1: Es existieren sogenannte Compilersprachen, welche plattformabhängig sind (C++) und plattformunabhängig sind (C#, Java). Interpretersprachen sind immer plattformunabhängig
    - Richtiger 2: Nicht alle Compilersprachen liegen nach der Kompilierung als Binärdaten vor, z.B. Java

## Python – Was ist diese Plattformunabhängigkeit
- C++ ist im Gegensatz zu Python nicht plattformunabhängig
- Damit ein Programm in C++ auf einem anderen System läuft müssen folgende Kriterien deckungsgleich sein:
    - Plattform (Betriebssystem, z.B. Windows, Linux, Android)
    - Architektur (CPU-Architektur, z.B. x86, x64) und 
    - Laufzeitbibliotheken (z.B .NET, PVM)
- Plattformunabhängige Sprachen benötigen nur dieselbe Laufzeitumgebung, da diese nach dem Kompilieren alle einheitlich in Bytecode geschrieben sind


