Instance: Todesursache-1-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-HE1)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I61.3
* valueCodeableConcept.text = "Ponsblutung"
* note.text = "Magenkarzinom"
* hasMember[+] = Reference(Todesursache-2-HE1)
* hasMember[+] = Reference(Todesursache-3-HE1)
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* component[ZeitdauerBeginnBisTod].code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
* component[ZeitdauerBeginnBisTod].valueString = "Stunden"

Instance: Todesursache-2-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-HE1)
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I64
* valueCodeableConcept.text = "Apoplex"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26680-1 "Contributory"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-3-HE1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-HE1)
* subject = Reference(StfVerstorbenePerson-HE1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I21.4
* valueCodeableConcept.text = "NSTEMI"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26681-9 "Underlying"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N