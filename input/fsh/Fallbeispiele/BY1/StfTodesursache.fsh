Instance: Todesursache-1-BY1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY1)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #R68.8
* valueCodeableConcept.text = "Multiorganversagen"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "1 Woche"
* note.text = "Multiorganversagen, Nierenversagen, Herzinsuffizienz, COPD, Vorhofflimmern"
* hasMember[+] = Reference(Todesursache-2-BY1)
* hasMember[+] = Reference(Todesursache-3-BY1)
* hasMember[+] = Reference(Todesursache-4-BY1)
* hasMember[+] = Reference(Todesursache-5-BY1)

Instance: Todesursache-2-BY1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY1)
* subject = Reference(StfVerstorbenePerson-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #N19
* valueCodeableConcept.text = "Nierenversagen"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26680-1 "Contributory"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "1-2 Wochen"

Instance: Todesursache-3-BY1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY1)
* subject = Reference(StfVerstorbenePerson-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I50.0
* valueCodeableConcept.text = "Herzinsuffizienz"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26681-9 "Underlying"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-4-BY1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY1)
* subject = Reference(StfVerstorbenePerson-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I44
* valueCodeableConcept.text = "COPD"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "2022"

Instance: Todesursache-5-BY1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY1)
* subject = Reference(StfVerstorbenePerson-BY1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I48.9
* valueCodeableConcept.text = "Vorhofflimmern"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "2018"