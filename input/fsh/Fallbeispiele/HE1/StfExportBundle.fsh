Instance: StfExportBundle-HE1
InstanceOf: StfExportBundle
Usage: #example
* type = #collection
* timestamp = "2025-01-01T01:17:00+01:00"
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-HE1)
  * resource = StfVerstorbenePerson-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-HE1)
  * resource = StfLeichenschau-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-1-HE1)
  * resource = Todesursache-1-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-2-HE1)
  * resource = Todesursache-2-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-3-HE1)
  * resource = Todesursache-3-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, StfObservationKrebserkrankung-HE1)
  * resource = StfObservationKrebserkrankung-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-HE1)
  * resource = StfOrganisation-GA-HE1
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-HE1)
  * resource = StfExportProvenanceExample-HE1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-HE1)
  * resource = StfArzt-HE1

Instance: StfExportProvenanceExample-HE1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-HE1)
* target[+] = Reference(StfLeichenschau-HE1)
* target[+] = Reference(Todesursache-1-HE1)
* target[+] = Reference(Todesursache-2-HE1)
* target[+] = Reference(Todesursache-3-HE1)
* target[+] = Reference(StfObservationKrebserkrankung-HE1)
* target[+] = Reference(StfOrganisation-GA-HE1)
* target[+] = Reference(StfArzt-HE1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-HE1)
