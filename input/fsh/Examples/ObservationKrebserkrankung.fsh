// Beispiel für eine Krebserkrankung Observation
Instance: StfObservationKrebserkrankung-Ja-Example
InstanceOf: StfObservationKrebserkrankung
Title: "Beispiel STF Observation Krebserkrankung"
Description: "Beispielhafte Instanz einer Observation zur Krebserkrankung"
Usage: #example
* meta.profile = Canonical(StfObservationKrebserkrankung)

* status = #final
* partOf = Reference(Procedure/StfLeichenschau-Example)
* code = $sct#108369006 "Tumor"
* subject = Reference(Patient/StfVerstorbenePerson-Example)
* effectiveDateTime = "2025-03-02T14:30:00+01:00"
* performer = Reference(Practitioner/rechtsmediziner-beispiel)
* valueCodeableConcept = $v2-0532#Y
* note.text = "Bronchialkarzinom im Oberlappen der rechten Lunge festgestellt bei der Obduktion"


// Beispiel für eine Krebserkrankung - Verneinung
Instance: StfObservationKrebserkrankung-Nein-Example
InstanceOf: StfObservationKrebserkrankung
Title: "Beispiel STF Observation keine Krebserkrankung"
Description: "Beispielhafte Instanz einer Observation ohne Krebserkrankung"
Usage: #example
* meta.profile = Canonical(StfObservationKrebserkrankung)

* status = #final
* partOf = Reference(Procedure/StfObduktion-Example)
* code = $sct#108369006 "Tumor"
* subject = Reference(Patient/StfVerstorbenePerson-Example)
* effectiveDateTime = "2025-03-02T14:30:00+01:00"
* performer = Reference(Practitioner/rechtsmediziner-beispiel)
* valueCodeableConcept = $v2-0532#N
* note.text = "Keine Hinweise auf maligne Tumorerkrankung bei der Obduktion"