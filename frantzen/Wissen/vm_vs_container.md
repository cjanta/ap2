# Virtuelle Maschine (VM)
Virtualisiert die gesamte Hardware: Jede VM enthält ein eigenes Betriebssystem (Guest OS) und läuft auf einem Hypervisor.

Schwergewichtig: Mehr Speicher- und CPU-Verbrauch, da jedes System sein eigenes OS benötigt.

Starke Isolation: Ideal für sicherheitskritische Anwendungen oder unterschiedliche Betriebssysteme.

Langsamer Start: Bootvorgang wie bei einem echten Rechner.

# Container
Virtualisiert auf Betriebssystem-Ebene: Teilt sich den Kernel mit dem Host-System, läuft in isolierten Prozessen.

Leichtgewichtig: Schneller Start, geringer Ressourcenverbrauch.

Portabel und skalierbar: Perfekt für Microservices und Cloud-native Anwendungen.

Weniger Isolation: Sicherheit hängt stärker vom Host-System ab.

Vergleichstabelle
Merkmal	        Virtuelle Maschine	Container
Betriebssystem	Eigenes Guest OS	Teilt Host-Kernel
Startzeit	    Minuten	            Sekunden
Ressourcenbedarf	Hoch	        Gering
Isolation	    Stark	            Mittel
Portabilität	Eingeschränkt	    Hoch
Einsatzszenarien	Legacy-Apps, Multi-OS	Microservices, DevOps