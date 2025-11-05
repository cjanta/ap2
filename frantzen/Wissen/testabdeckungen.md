| **Testabdeckung (Coverage)**                                    | **Beschreibung**                                                    | **Beispiel / Ziel**                                                | **Prüfungsfrage**                                                               |
| --------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| **Anweisungsüberdeckung** (Statement Coverage)                  | Jede Anweisung wird mindestens einmal ausgeführt.                   | Testet, ob alle Codezeilen erreicht werden.                        | Wurde **jede Anweisung** im Code **mindestens einmal ausgeführt**?              |
| **Zweigüberdeckung** (Branch Coverage)                          | Jeder Entscheidungszweig (true/false) wird getestet.                | Beide Pfade eines `if` werden durchlaufen.                         | Wurde **jeder mögliche Entscheidungsweg** (true/false) getestet?                |
| **Bedingungsüberdeckung** (Condition Coverage)                  | Jede Teilbedingung wird einmal wahr und einmal falsch bewertet.     | In `if (a && b)` werden `a` und `b` je einmal true/false getestet. | Wurde **jede Teilbedingung** einmal **wahr** und einmal **falsch** ausgewertet? |
| **Mehrfachbedingungsüberdeckung** (Multiple Condition Coverage) | Alle Kombinationen von Bedingungen werden getestet.                 | `a && b` → 4 Kombinationen (`TT, TF, FT, FF`).                     | Wurde **jede Kombination** der Teilbedingungen getestet?                        |
| **Pfadüberdeckung** (Path Coverage)                             | Alle möglichen Ausführungspfade durch das Programm werden getestet. | Kombination aller Schleifen und Entscheidungen werden abgedeckt.   | Wurde **jeder mögliche Ausführungspfad** vom Start bis zum Ende getestet?       |

b) Bei Whitebox-Tests gibt es verschiedene Metriken, deren Verwendung die Gewinnung der Testdaten beeinflusst. Dazu gehören die Anweisungs-, die Zweig- und die Pfadüberdeckung, die im folgenden englischen Text beschrieben werden:

Statement coverage, branch coverage, and path coverage are important white box testing metrics that help ensure that software programs are performing reliably, correctly, and efficiently.
Statement coverage is a measure of the percentage of statements in a program that are executed by a set of tests. In statement coverage, the test data should be chosen such that all statements in the code are executed at least once.
Branch coverage is a measure of the percentage of branches in a program that are executed by a set of tests. The choice of test data is intended to ensure that all branches of each condition are executed at least once. A full branch coverage automatically includes a full statement coverage.
Path coverage is a measure of the percentage of paths through a program that are executed by a set of tests. A path is a sequence of statements that starts at the entry point of the program and ends at an exit point. A full path coverage automatically includes a full branches coverage.

Erläutern Sie mithilfe des englischen Textes, nach welchen Kriterien bei den nachfolgenden Metriken die Testdaten gewonnen werden und wie die einzelnen Metriken aufeinander aufbauen.

Anweisungsüberdeckung:
Es wird prozentual gemessen, wie viele Anweisungen im Testsetting ausgeführt worden sind. 
Die Tests sollte so ausgewählt werden damit jede Anweisung im Programm durch Tests durchlaufen wird.

Zweigüberdeckung:
Bei der Zweigüberdeckung wird jede Verzweigung im Programm getestet. Eine volle Zweigabdeckung bedeuted auch eine volle Anweisungsüberdeckung.

Pfadüberdeckung:
Bei der PFadüberdekcung wird jede Verzeigungsmöglichkeit, auch jede kombination an Pfaden durch Verzweigung und Schleifen getestet.
Eine volle Pfadabdeckung bedeutet auch eine volle Zweigabdeckung.