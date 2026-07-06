Instance: StfExportBundle-VB1
InstanceOf: StfExportBundle
Usage: #example
* timestamp = "2025-11-06T12:49:00Z"
* type = #collection
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-VB1)
  * resource = StfVerstorbenePerson-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-VB1)
  * resource = StfLeichenschau-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-1-VB1)
  * resource = Todesursache-1-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-2-VB1)
  * resource = Todesursache-2-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-3-VB1)
  * resource = Todesursache-3-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-4-VB1)
  * resource = Todesursache-4-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-VB1)
  * resource = StfOrganisation-GA-VB1
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-VB1)
  * resource = StfExportProvenanceExample-VB1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-VB1)
  * resource = StfArzt-VB1

Instance: StfExportProvenanceExample-VB1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-VB1)
* target[+] = Reference(StfLeichenschau-VB1)
* target[+] = Reference(Todesursache-1-VB1)
* target[+] = Reference(Todesursache-2-VB1)
* target[+] = Reference(Todesursache-3-VB1)
* target[+] = Reference(Todesursache-4-VB1)
* target[+] = Reference(StfOrganisation-GA-VB1)
* target[+] = Reference(StfArzt-VB1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-VB1)
