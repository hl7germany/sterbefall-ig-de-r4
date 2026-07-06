Instance: StfDeleteBundle
InstanceOf: OperationDefinition
Usage: #definition
* name = "STF DeleteBundle"
* title = "Löschen eines STF FHIR-Bundles"
* status = #active
* kind = #operation
* experimental = false
* publisher = "ELFA Maßnahme Interoperabilität"
* description = "Löscht alle Ressourcen, die innerhalb einer Provenance Ressource als `target` referenziert sind, aus dem FHIR-Server. Die Löschung ist final und kein sgn. Soft-Delete."
* code = #deleteBundle
* comment = "Die Operation löscht alle Ressourcen und gibt als Antwort pro gelöschter Ressource ein 410 Gone zurück. Schlägt die Löschung fehl, wird ein OperationOutcome mit dem HTTP-Statuscode 422 (Unprocessable Entity) zurückgegeben."
* resource = #Provenance
* system = false
* type = false
* instance = true
* affectsState = true
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * type = #OperationOutcome
  * documentation = "Die vom Server erzeugte Antwort der Löschoperation. Bei einem Fehler wird ein OperationOutcome mit HTTP-Statuscode 422 (Unprocessable Entity)zurückgegeben."