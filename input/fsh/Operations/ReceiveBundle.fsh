Instance: StfReceiveBundle
InstanceOf: OperationDefinition
Usage: #definition
* name = "STF ReceiveBundle"
* title = "Empfangen und Verarbeiten eines STF FHIR-Bundles"
* status = #active
* kind = #operation
* experimental = false
* publisher = "ELFA Maßnahme Interoperabilität"
* description = "Validiert das Eingangs-Bundle, protokolliert bzw. gibt das Validierungsergebnis aus, wandelt es in ein Transaktions-Bundle um und führt die Transaktion aus.

Das mitgegebene Bundle muss eine Provenance Ressource enthalten, die alle Ressourcen im Bundle (Ausnahme sich selber) referenziert. Die Provenance Ressource muss dem Profil StfProvenance entsprechen."
* code = #receiveBundle
* comment = "Diese Operation validiert das eingehende Bundle, konvertiert es in ein FHIR-Transaktions-Bundle und führt es aus. Die Antwort ist das Ergebnis-Bundle der Transaktion. Schlägt die Transaktion fehl, wird ein OperationOutcome mit dem HTTP-Statuscode 422 (Unprocessable Entity) zurückgegeben.

**Hinweis ICD-10:** Bei allen im Bundle enthaltenen Todesursachen (Profil StfTodesursache) die einen ICD-10 Code enthalten, wird die Terminologie gegen ICD-10-WHO validiert. Da viele ausstellende Ärzte (o.a.) mit ICD-10-GM arbeiten und diese Codes in den Totenschein eintragen, kann es sein, dass die Validierung fehlschlägt. Aus dem Grund wird nur eine Warnung ausgegeben, keine Error. Eine Verschärfung der Anforderungen wäre wünschenswert, ist aber aufgrund der Quellenlage aktuell nicht realistisch."
* system = true
* type = false
* instance = false
* affectsState = true
* parameter[+]
  * name = #resource
  * use = #in
  * min = 1
  * max = "1"
  * type = #Bundle
  * documentation = "Das FHIR-Bundle, das validiert und verarbeitet werden soll."
  * targetProfile = Canonical(StfExportBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * type = #Bundle
  * documentation = "Das vom Server erzeugte Antwort-Bundle der Transaktion. Bei einem Fehler wird stattdessen ein OperationOutcome mit HTTP 422 zurueckgegeben."