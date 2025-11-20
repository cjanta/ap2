# TODO

1. REST-API
Eine REST-API (Representational State Transfer) basiert auf dem Prinzip, Ressourcen über standardisierte HTTP-Methoden wie GET, POST, PUT und DELETE zugänglich zu machen. Sie verwendet eindeutige URLs zur Identifikation von Ressourcen und ist zustandslos, das heißt, jeder API-Aufruf enthält alle nötigen Informationen, ohne dass der Server sich an vorherige Anfragen erinnern muss. REST fördert eine klare Trennung zwischen Client und Server und ermöglicht so eine flexible, skalierbare Kommunikation.
2. HHTP-Anforderung (Request)
Bestandteile einer HTTP-Request
HTTP-Methode Gibt an, welche Aktion ausgeführt werden soll:

- GET (Daten abrufen)
- POST (Daten senden/erstellen)
- PUT (Daten aktualisieren)
- DELETE (Daten löschen)

URL (Uniform Resource Locator) Die Adresse der Ressource, z. B. https://api.example.com/users/123

Headers Metadaten zur Anfrage, z. B.:

- Content-Type: Format der gesendeten Daten (application/json)

- Authorization: Zugangstoken oder API-Key

- Accept: Erwartetes Antwortformat

Body (optional) Enthält die Nutzdaten der Anfrage, z. B. bei POST oder PUT

Meist im JSON-Format:

json
{
  "name": "Max",
  "email": "max@example.com"
}

Query-Parameter (optional) Zusätzliche Parameter in der URL, z. B.: ?sort=desc&limit=10

# HTTP Statuscodes
2xx Erfolgreich
4xx Client Fehler
5xx Server Fehler