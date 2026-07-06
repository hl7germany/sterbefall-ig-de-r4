Instance: StfExportBundle-Example
InstanceOf: StfExportBundle
Title: "Beispiel Export Bundle"
Description: "Beispiel Export Bundle"
Usage: #example
* timestamp = "2023-10-15T14:28:00Z"
* type = #collection
* entry[Inhalt][+]
  * insert ExampleFullUrl(PractitionerRole, StfArztZuordnung-Example)
  * resource = StfArztZuordnung-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Practitioner, StfArzt-Example)
  * resource = StfArzt-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(DocumentReference, StfDatei-Example)
  * resource = StfDatei-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Procedure, StfLeichenschau-Example)
  * resource = StfLeichenschau-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisation-Example)
  * resource = StfOrganisation-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Provenance, StfSterbeurkundeAusstellung-Example)
  * resource = StfSterbeurkundeAusstellung-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, StfTodesursache-Example)
  * resource = StfTodesursache-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Observation, StfTodesursache-Grundleiden-Example)
  * resource = StfTodesursache-Grundleiden-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Patient, StfVerstorbenePerson-Example)
  * resource = StfVerstorbenePerson-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(Organization, StfOrganisationGesundheitsamtRegensburg)
  * resource = StfOrganisationGesundheitsamtRegensburg
* entry[Provenance]
  * insert ExampleFullUrl(Provenance, StfExportProvenance-Example)
  * resource = StfExportProvenance-Example
* entry[Inhalt][+]
  * insert ExampleFullUrl(ServiceRequest, StfObduktionAnfrage-Example)
  * resource = StfObduktionAnfrage-Example

Instance: StfExportProvenance-Example
InstanceOf: StfExportProvenance
Usage: #example
* target[+] = Reference(StfArztZuordnung-Example)
* target[+] = Reference(StfArzt-Example)
* target[+] = Reference(StfDatei-Example)
* target[+] = Reference(StfLeichenschau-Example)
* target[+] = Reference(StfOrganisation-Example)
* target[+] = Reference(StfSterbeurkundeAusstellung-Example)
* target[+] = Reference(StfTodesursache-Example)
* target[+] = Reference(StfTodesursache-Grundleiden-Example)
* target[+] = Reference(StfVerstorbenePerson-Example)
* target[+] = Reference(StfOrganisationGesundheitsamtRegensburg)
* target[+] = Reference(StfObduktionAnfrage-Example)
* recorded = "2025-11-06T12:49:00Z"
* agent[+].who.display = "Sterbefall-Management-Software v1.0"
* agent[=].onBehalfOf = Reference(StfOrganisationGesundheitsamtRegensburg)