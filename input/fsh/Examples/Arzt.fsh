Instance: StfArzt-Example
InstanceOf: StfArzt
Title: "Beispiel STF Arzt"
Description: "Beispielhafte Instanz eines Arztes im Kontext der STF"
Usage: #example
* identifier[ANR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[ANR].type.coding.code = #LANR // Die Lebenslange Arztnummer (LANR) des Arztes
* identifier[ANR].system =  "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier[ANR].value = "987654321"
// Name
* name[name].use = #official
* name[name].text = "Dr. med. Hans Müller"
* name[name].family = "Müller" // Nachname
* name[name].given = "Hans" // Vorname
* name[name].prefix = "Dr. med." // Titel
* name[name].prefix.extension[prefix-qualifier].url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[name].prefix.extension[prefix-qualifier].valueCode = #AC

// Adresse
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Hauptstraße 1"
* address[Strassenanschrift].city = "Musterstadt" // Ort
* address[Strassenanschrift].postalCode = "12345" // PLZ
* address[Strassenanschrift].country = "DE" // Land der Anschrift
* address[Strassenanschrift].line.extension[Strasse].valueString = "Hauptstraße"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "1"
* address[Strassenanschrift].line.extension[Adresszusatz].valueString = "EG"

// Telekommunikation
* telecom[Telefon].system = #phone
* telecom[Telefon].value = "+49-123-456789" // Telefon des Arztes

* telecom[Telefax].system = #fax
* telecom[Telefax].value = "+49-123-456788" // Fax des Arztes
