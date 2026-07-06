// Beispiel für eine Obduktionsanfrage
Instance: StfObduktionAnfrage-Example
InstanceOf: StfObduktionAnfrage
Title: "Beispiel STF Obduktion Anfrage"
Description: "Beispielhafte Instanz einer Obduktionsanfrage"
Usage: #example
* meta.profile = Canonical(StfObduktionAnfrage)
* status = #completed
* intent = #order
* code = $sct#29240004 "Autopsy examination (procedure)"
* subject = Reference(Patient/StfVerstorbenePerson-Example)
* authoredOn = "2025-03-01T10:00:00+01:00"
* requester.display = "Dr. Schmidt, Gesundheitsamt Musterstadt"
* reasonCode.text = "Unklare Todesursache, Verdacht auf nicht-natürlichen Tod"