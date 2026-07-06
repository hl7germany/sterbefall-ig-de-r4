Instance: StfKrebsregistermeldungCpS
InstanceOf: CapabilityStatement
Usage: #definition
* version = "1.0.2"
* status = #active
* experimental = false
* publisher = "ELFA Maßnahme Interoperabilität"
* date = "2026-03-30"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* name = "Stf Krebsregistermeldung CapabilityStatement"
* title = "Stf Krebsregistermeldung CapabilityStatement"
* description = "CapabilityStatement für die benötigten Interaktionen zur Übermittlung von Daten zur Krebsregistermeldung und Abfrage durch die Datenverarbeitung auf Seiten der Krebsregister."
* rest
  * mode = #server
  * resource[+] insert ShallResource(#Provenance, StfExportProvenance)
    * supportedProfile[+] = Canonical(StfSterbeurkundeAusstellung)
      * insert Expectation(#SHALL)
    * interaction[+]
      * insert Expectation(#SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(#SHALL)
      * name = "_lastUpdated"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-lastupdated"
      * type = #date
      * documentation = "**Beispiel:**    
        `GET [base]/Provenance?_lastUpdated=2025-01-25T13:45:00+02:00`"
    * searchParam[+]
      * insert Expectation(#SHALL)
      * name = "activity"
      * definition = "http://gematik.de/fhir/oegd/stf/SearchParameter/StfProvenanceActivitySearchParameter"
      * type = #token
      * documentation = "**Beispiele:**
        `GET [base]/Provenance?activity=LA`
        `GET [base]/Provenance?activity=http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion#LA`"
  * resource[+] insert ShallResource(#Patient, StfVerstorbenePerson)
    * supportedProfile[+] = Canonical(StfVerstorbenePersonPseudonymisiert)
      * insert Expectation(#SHALL)
  * resource[+] insert ShallResource(#Practitioner, StfArzt)
  * resource[+] insert ShallResource(#PractitionerRole, StfArztZuordnung)
  * resource[+] insert ShallResource(#DocumentReference, StfDatei)
  * resource[+] insert ShallResource(#Procedure, StfLeichenschau)
    * supportedProfile[+] = Canonical(StfObduktion)
      * insert Expectation(#SHALL)
  * resource[+] insert ShallResource(#ServiceRequest, StfObduktionAnfrage)
  * resource[+] insert ShallResource(#Organization, StfOrganisation)
  * operation[+]
    * name = "receiveBundle"
    * definition = Canonical(StfReceiveBundle)
  * operation[+]
    * name = "deleteBundle"
    * definition = Canonical(StfDeleteBundle)

RuleSet: ShallResource(resourceType, profile)    
* type = {resourceType}
* insert Expectation(#SHALL)
* supportedProfile[+] = Canonical({profile})
  * insert Expectation(#SHALL)
* interaction[+]
  * insert Expectation(#SHALL)
  * code = #read