Instance: StfLeichenschau-Example
InstanceOf: StfLeichenschau
Title: "Beispiel StfLeichenschau"
Description: "Beispielhafte Instanz einer Leichenschau im Kontext des Sterbefalls"
Usage: #example
* status = #completed
* code = $sct#168461002 "Postmortem examination (procedure)"
* performedDateTime = "2025-03-01T10:00:00+01:00"
* performer.actor.reference = "Practitioner/StfArzt-Example"
* subject.reference = "Patient/StfVerstorbenePerson-Example"