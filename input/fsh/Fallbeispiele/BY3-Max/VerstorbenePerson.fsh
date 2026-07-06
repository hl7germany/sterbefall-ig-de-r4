Instance: StfVerstorbenePerson-BY3-Max
InstanceOf: StfVerstorbenePerson
Usage: #example
* extension[zuletztBehandelnderArzt].valueReference = Reference(StfArzt-BY3-Max-Flurer)
* identifier[IdImGesundheitsamt]
  * value = "331"
  * assigner = Reference(StfOrganisation-GA-BY3-Max)
* identifier[Sterbebuchnummer].value = "7916"
* name[name]
  * family = "Meyer"
  * given = "Markus"
  * text = "Markus Meyer"
* active = true
* gender = #male
* birthDate = "1953-07-01"
* deceasedDateTime = "2025-01-01T17:00:00+01:00"
* address[Strassenanschrift]
  * line = "Friedrich-Peter-Str. 25"
  * line.extension[Strasse].valueString = "Friedrich-Peter-Str."
  * line.extension[Hausnummer].valueString = "25"
  * city = "Nürnberg"
  * postalCode = "90403"
  * country = "DE"
  * extension[GKZ].valueString = "956400"

Instance: StfVerstorbenePersonPseudonymisiert-BY3-Max
InstanceOf: StfVerstorbenePersonPseudonymisiert
Usage: #example
* identifier[IdImGesundheitsamt]
  * value = "331"
  * assigner = Reference(StfOrganisation-GA-BY3-Max)
* identifier[Sterbebuchnummer].value = "7916"