Instance: StfExportBundle-BY2
InstanceOf: StfExportBundle
Usage: #example
* type = #collection
* timestamp = "2025-05-22T19:05:00+02:00"
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-BY2)
  * resource = StfVerstorbenePerson-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-BY2)
  * resource = StfLeichenschau-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-1-BY2)
  * resource = Todesursache-1-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-2-BY2)
  * resource = Todesursache-2-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-4-BY2)
  * resource = Todesursache-4-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-5-BY2)
  * resource = Todesursache-5-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, StfObservationKrebserkrankung-BY2)
  * resource = StfObservationKrebserkrankung-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-BY2)
  * resource = StfArzt-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(PractitionerRole, StfArztZuordnung-BY2)
  * resource = StfArztZuordnung-BY2
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-Klinik-BY2)
  * resource = StfOrganisation-Klinik-BY2
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-BY2)
  * resource = StfExportProvenanceExample-BY2

Instance: StfExportProvenanceExample-BY2
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-BY2)
* target[+] = Reference(StfLeichenschau-BY2)
* target[+] = Reference(Todesursache-1-BY2)
* target[+] = Reference(Todesursache-2-BY2)
* target[+] = Reference(Todesursache-4-BY2)
* target[+] = Reference(Todesursache-5-BY2)
* target[+] = Reference(StfObservationKrebserkrankung-BY2)
* target[+] = Reference(StfArzt-BY2)
* target[+] = Reference(StfArztZuordnung-BY2)
* target[+] = Reference(StfOrganisation-Klinik-BY2)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-BY2)