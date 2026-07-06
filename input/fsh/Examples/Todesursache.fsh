Instance: StfTodesursache-Example
InstanceOf: StfTodesursache
Title: "Beispiel STF Todesursache"
Description: "Beispielinstanz einer Todesursache nach dem StfTodesursache-Profil"
Usage: #example

* status = #final
* partOf = Reference(Procedure/StfLeichenschau-Example)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(Patient/StfVerstorbenePerson-Example) "Max Mustermann"
* effectiveDateTime = "2023-07-10"  // Beginn der Krankheit
* performer = Reference(Practitioner/StfArzt-Example)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I21.0
* valueCodeableConcept.text = "Akuter transmuraler Myokardinfarkt der Vorderwand"
* note.text = "Patient erlitt einen massiven Herzinfarkt nach längerer kardialer Vorgeschichte mit koronarer Herzkrankheit und Bluthochdruck."

// Components
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "1-2 Wochen"

* component[WeitereAngaben].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[WeitereAngaben].valueCodeableConcept.coding = $icd-10-who#I25.1
* component[WeitereAngaben].valueCodeableConcept.coding.version = "2019"

// Nachgelagerte Todesursache (Grundleiden)
* hasMember = Reference(StfTodesursache-Grundleiden-Example)

// Referenzierte Instanz für Grundleiden
Instance: StfTodesursache-Grundleiden-Example
InstanceOf: StfTodesursache
Title: "Grundleiden der Todesursache"
Usage: #example
* status = #final
* partOf = Reference(Procedure/StfLeichenschau-Example)
* subject = Reference(Patient/StfVerstorbenePerson-Example)
* effectiveDateTime = "2020-01-15"  // Beginn des Grundleidens
* performer = Reference(Practitioner/StfArzt-Example)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I25.9
* valueCodeableConcept.text = "Chronische ischämische Herzkrankheit, nicht näher bezeichnet"

// Component für natürlichen Tod auch hier setzen
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26681-9 "Underlying"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N