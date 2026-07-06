Instance: StfExportBundle-TH1
InstanceOf: StfExportBundle
Usage: #example
* type = #collection
* timestamp = "2024-04-02T21:33:00+01:00"
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-TH1)
  * resource = StfVerstorbenePerson-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-TH1)
  * resource = StfLeichenschau-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-1-TH1)
  * resource = Todesursache-1-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-2-TH1)
  * resource = Todesursache-2-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-3-TH1)
  * resource = Todesursache-3-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-4-TH1)
  * resource = Todesursache-4-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, Todesursache-5-TH1)
  * resource = Todesursache-5-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-GA-TH1)
  * resource = StfOrganisation-GA-TH1
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenanceExample-TH1)
  * resource = StfExportProvenanceExample-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-TH1)
  * resource = StfArzt-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(PractitionerRole, StfArztZuordnung-TH1)
  * resource = StfArztZuordnung-TH1
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-Klinik-TH1)
  * resource = StfOrganisation-Klinik-TH1

Instance: StfExportProvenanceExample-TH1
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfVerstorbenePerson-TH1)
* target[+] = Reference(StfLeichenschau-TH1)
* target[+] = Reference(Todesursache-1-TH1)
* target[+] = Reference(Todesursache-2-TH1)
* target[+] = Reference(Todesursache-3-TH1)
* target[+] = Reference(Todesursache-4-TH1)
* target[+] = Reference(Todesursache-5-TH1)
* target[+] = Reference(StfOrganisation-GA-TH1)
* target[+] = Reference(StfArzt-TH1)
* target[+] = Reference(StfArztZuordnung-TH1)
* target[+] = Reference(StfOrganisation-Klinik-TH1)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisation-GA-TH1)
