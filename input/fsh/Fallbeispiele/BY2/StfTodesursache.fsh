Instance: Todesursache-1-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #S06.5
* valueCodeableConcept.text = "akutes subdurales Hämatom"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#Y
* component[WeitereAngaben].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[WeitereAngaben].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* component[WeitereAngaben].valueCodeableConcept.coding.version = "2019"
* component[WeitereAngaben].valueCodeableConcept.coding.code = #W19
* component[WeitereAngaben].valueCodeableConcept.text = "Sturz von unbestimmter Höhe"
* note.text = "Sturz im Krankenhaus auf dem Weg zur Toilette"
* hasMember[+] = Reference(Todesursache-2-BY2)
* hasMember[+] = Reference(Todesursache-4-BY2)
* hasMember[+] = Reference(Todesursache-5-BY2)

Instance: Todesursache-2-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #S72.0
* valueCodeableConcept.text = "Schenkelhalsfraktur"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26680-1 "Contributory"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#Y
* component[WeitereAngaben].code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
* component[WeitereAngaben].valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* component[WeitereAngaben].valueCodeableConcept.coding.version = "2019"
* component[WeitereAngaben].valueCodeableConcept.coding.code = #W19
* component[WeitereAngaben].valueCodeableConcept.text = "Sturz von unbestimmter Höhe"

Instance: Todesursache-4-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #F03
* valueCodeableConcept.text = "Demenz"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-5-BY2
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-BY2)
* subject = Reference(StfVerstorbenePerson-BY2)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #C50.9
* valueCodeableConcept.text = "Mamma-CA"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* note.text = "Maligne Neubildung der Brust (Krebs)"
