// Beispiel für eine durchgeführte Obduktion
Instance: StfObduktion-Example
InstanceOf: StfObduktion
Title: "Beispiel STF Obduktion"
Description: "Beispielhafte Instanz einer durchgeführten Obduktion"
Usage: #example
* meta.profile = Canonical(StfObduktion)

// Verweis auf die Obduktionsanfrage
* basedOn = Reference(StfObduktionAnfrage-Example)

* status = #completed
* code = $sct#29240004 "Autopsy examination (procedure)"

* subject = Reference(Patient/StfVerstorbenePerson-Example)

// Zeitpunkt der Obduktion
* performedDateTime = "2025-03-02T14:30:00+01:00"

// Bei wem die Obduktion beantragt wurde
* asserter.display = "Staatsanwaltschaft Musterstadt"

// Durchführende Organisationen
* performer[GerichtsmedizinischesInstitut].function = StfOrganisationsTypCS#GerichtsmedInst
* performer[GerichtsmedizinischesInstitut].actor.display = "Institut für Rechtsmedizin Universitätsklinikum Musterstadt"

// Optional: Pathologisches Institut (falls zusätzlich beteiligt)
* performer[PathologischesInstitut].function = StfOrganisationsTypCS#PathInst
* performer[PathologischesInstitut].actor.display = "Institut für Pathologie Universitätsklinikum Musterstadt"

// Ort der Durchführung
* location.display = "Prosektur, Universitätsklinikum Musterstadt, Gebäude 15"

// Verweis auf den Obduktionsbericht
* report = Reference(DiagnosticReport/obduktionsbericht-beispiel-001)