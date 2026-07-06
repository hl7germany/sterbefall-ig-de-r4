Instance: Todesursache-1-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-VB1)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #J18.0
* valueCodeableConcept.text = "Exitus letalis bei Bronchopneumonie (beidseitig)"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* note.text = "Weitere relevante Erkrankungen: COPD, Vorhofflimmern, Diabetes mellitus Typ 2"
* hasMember[+] = Reference(Todesursache-2-VB1)
* hasMember[+] = Reference(Todesursache-3-VB1)
* hasMember[+] = Reference(Todesursache-4-VB1)

Instance: Todesursache-2-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-VB1)
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I50.1
* valueCodeableConcept.text = "Dekompensierte Herzinsuffizienz"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26680-1 "Contributory"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-3-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-VB1)
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #N17.9
* valueCodeableConcept.text = "Akutes Nierenversagen"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26681-9 "Underlying"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-4-VB1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-VB1)
* subject = Reference(StfVerstorbenePerson-VB1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I10
* valueCodeableConcept.text = "Arterielle Hypertonie"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
