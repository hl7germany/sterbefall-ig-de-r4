Instance: StfExportBundle-BY1
InstanceOf: StfExportBundle
Usage: #example
* timestamp = "2025-11-06T12:49:00Z"
* type = #collection
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-BY1)
  * resource = StfVerstorbenePerson-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-BY1)
  * resource = StfLeichenschau-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-1-BY1)
  * resource = Todesursache-1-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-2-BY1)
  * resource = Todesursache-2-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-3-BY1)
  * resource = Todesursache-3-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-4-BY1)
  * resource = Todesursache-4-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-5-BY1)
  * resource = Todesursache-5-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-BY1)
  * resource = StfOrganisation-GA-BY1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-BY1)
  * resource = StfArzt-BY1
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-BY1)
  * resource = StfExportProvenanceExample-BY1

Instance: StfExportProvenanceExample-BY1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-BY1)
* target[+] = Reference(StfLeichenschau-BY1)
* target[+] = Reference(Todesursache-1-BY1)
* target[+] = Reference(Todesursache-2-BY1)
* target[+] = Reference(Todesursache-3-BY1)
* target[+] = Reference(Todesursache-4-BY1)
* target[+] = Reference(Todesursache-5-BY1)
* target[+] = Reference(StfOrganisation-GA-BY1)
* target[+] = Reference(StfArzt-BY1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-BY1)
