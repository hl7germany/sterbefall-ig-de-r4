Instance: StfDatei-Example
InstanceOf: StfDatei
Title: "Beispiel STF Datei"
Description: "Beispielinstanz einer Sterbeurkunde entsprechend dem StfDatei-Profil"
Usage: #example
* meta.profile = Canonical(StfDatei)
* identifier[0]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PI "Patient internal identifier"
  * value = "S4567/2025"
* status = #current
* type = StfDateiTypCS#Sterbeurkunde "Sterbeurkunde"
* subject = Reference(Patient/StfVerstorbenePerson-Example) "Dr. Erika Müller"
* author = Reference(Organization/StfOrganisation-Example) "Standesamt Berlin-Mitte"
* date = "2023-07-15T10:30:00+02:00"
* content[0].attachment
  * contentType = #application/pdf
  * data = "U3RlcmJldXJrdW5kZSBTNDU2Ny8yMDI1"
