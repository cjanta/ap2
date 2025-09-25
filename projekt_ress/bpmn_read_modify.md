
# Hinweise
- Kommentare & Erweiterungen: Camunda speichert BPMN-Erweiterungen (z. B. Datenquellen, Form Properties, Execution Listeners) als XML-Erweiterungen. Diese kannst du mit getExtensionElements() sichern und übertragen.

- Kanten (SequenceFlows): Du kannst SequenceFlow-Elemente ebenfalls manipulieren, z. B. indem du den sourceRef und targetRef neu setzt.

- Modellstruktur erhalten: Solange du nur Knoten austauschst und die Struktur nicht zerstörst, bleiben alle anderen Elemente erhalten.


# Beispiel
````java
import org.camunda.bpm.model.bpmn.Bpmn;
import org.camunda.bpm.model.bpmn.BpmnModelInstance;
import org.camunda.bpm.model.bpmn.instance.*;
import org.camunda.bpm.model.xml.instance.ModelElementInstance;

import java.io.File;
import java.util.Collection;

public class BpmnModifier {

    public static void main(String[] args) {
        // BPMN-Datei laden
        File file = new File("input.bpmn");
        BpmnModelInstance modelInstance = Bpmn.readModelFromFile(file);

        // Alle UserTasks finden
        Collection<UserTask> userTasks = modelInstance.getModelElementsByType(UserTask.class);

        for (UserTask oldTask : userTasks) {
            // Dokumentation sichern
            Documentation documentation = oldTask.getDocumentation();

            // Alten Task entfernen
            oldTask.getParentElement().removeChildElement(oldTask);

            // Neuen Task erstellen
            UserTask newTask = modelInstance.newInstance(UserTask.class);
            newTask.setId("newTaskId");
            newTask.setName("Neuer Task");

            // Dokumentation wieder hinzufügen
            if (documentation != null) {
                newTask.setDocumentation(documentation.getTextContent());
            }

            // In den Prozess einfügen
            oldTask.getParentElement().addChildElement(newTask);
        }

        // Datei speichern
        File outputFile = new File("output.bpmn");
        Bpmn.writeModelToFile(outputFile, modelInstance);
    }
}
````