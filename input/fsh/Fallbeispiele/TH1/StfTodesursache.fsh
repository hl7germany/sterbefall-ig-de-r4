Instance: Todesursache-1-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-TH1)
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #K57.2
* valueCodeableConcept.text = "Septischer Schock"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26682-7 "Immediate/Primary"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N
* hasMember[+] = Reference(Todesursache-2-TH1)
* hasMember[+] = Reference(Todesursache-3-TH1)
* hasMember[+] = Reference(Todesursache-4-TH1)
* hasMember[+] = Reference(Todesursache-5-TH1)

Instance: Todesursache-2-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-TH1)
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #A46
* valueCodeableConcept.text = "Erysipel"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26680-1 "Contributory"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-3-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-TH1)
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #N17.9 //TODO-DB: Der N17.99 könnte eine ICD-10-GM Code sein. Nicht WHO...
* valueCodeableConcept.text = "Akutes Nierenversagen"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA26681-9 "Underlying"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-4-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-TH1)
* subject = Reference(StfVerstorbenePerson-TH1)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = #I42.9
* valueCodeableConcept.text = "Kardiomyopathie, septisch"
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

Instance: Todesursache-5-TH1
InstanceOf: StfTodesursache
Usage: #example
* status = #final
* partOf = Reference(StfLeichenschau-TH1)
* subject = Reference(StfVerstorbenePerson-TH1)
* insert ExampleKrankheitCode(#I50.0, "Linksherzinsuffizienz")
* component[Todesursachensequenz].valueCodeableConcept.coding = $loinc#LA46-8 "Other"
* component[NichtNatuerlicherTod].valueCodeableConcept.coding = $v2-0532#N

RuleSet: ExampleKrankheitCode(icd, text)
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.coding.code = {icd}
* valueCodeableConcept.text = {text}
