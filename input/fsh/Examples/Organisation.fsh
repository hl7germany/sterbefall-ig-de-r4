Instance: StfOrganisation-Example
InstanceOf: StfOrganisation
Title: "Example STF Organisation"
Description: "Beispielhafte Instanz einer STF Organisation"
Usage: #example
* meta.profile = Canonical(StfOrganisation)
* identifier.system = "https://fhir.gematik.de/sid/standesamt"
* identifier.value = "SA12345"
* type.coding.system = Canonical(StfOrganisationsTypCS)
* type.coding.code = #StAmt
* type.coding.display = "Standesamt"
* name = "Standesamt Musterstadt"
* address.type = #both
* address.line = "Rathausplatz 1"
* address.city = "Musterstadt"
* address.postalCode = "12345"
* address.country = "DE"
//* address.extension[StfBundeslandExtension].valueCoding.system = $de.basis-bundeslaender
* address.extension[StfBundeslandExtension].valueCoding.code = #DE-NW
* address.extension[StfBundeslandExtension].valueCoding.display = "Nordrhein-Westfalen"
* contact.name.use = #official
* contact.name.text = "Max Mustermann"
* contact.name.family = "Mustermann"
* contact.name.given = "Max"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+49 123 456789"
* contact.telecom[0].use = #work
* contact.telecom[1].system = #email
* contact.telecom[1].value = "max.mustermann@standesamt-musterstadt.de"
* contact.telecom[1].use = #work
* partOf.display = "Stadt Köln"

Instance: StfOrganisationGesundheitsamtRegensburg
InstanceOf: StfOrganisation
Usage: #example
Title: "StfOrganisation-GA-Test-BY1"
* name = "Gesundheitsamt Regensburg"
* type = StfOrganisationsTypCS#GA