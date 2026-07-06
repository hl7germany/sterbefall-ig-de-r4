Instance: StfOrganisation-GA-TH1
InstanceOf: StfOrganisation
Usage: #example
Title: "StfOrganisation-GA-TH1"
* name = "Gesundheitsamt Mühlhausen"
* type = StfOrganisationsTypCS#GA

Instance: StfOrganisation-Standesamt-TH1
InstanceOf: StfOrganisation
Title: "Standesamt Erfurt"
Usage: #example
* address.type = #both
* address.city = "Erfurt"
* address.country = "DE"
* address.extension[StfBundeslandExtension].valueCoding.code = #DE-TH
* address.extension[StfBundeslandExtension].valueCoding.display = "Thüringen"
* identifier.system = "https://fhir.gematik.de/sid/standesamt"
* identifier.value = "16051000"
* type.coding.system = Canonical(StfOrganisationsTypCS)
* type.coding.code = #StAmt
* type.coding.display = "Standesamt"
* name = "Standesamt Erfurt"

Instance: StfOrganisation-Klinik-TH1
InstanceOf: StfOrganisation
Title: "Heliosklinikum Erfurt"
Usage: #example
* address.type = #both
* address.city = "Erfurt"
* address.country = "DE"
* address.extension[StfBundeslandExtension].valueCoding.code = #DE-TH
* address.extension[StfBundeslandExtension].valueCoding.display = "Thüringen"
* type.coding.system = Canonical(StfOrganisationsTypCS)
* type.coding.code = #Klinik
* type.coding.display = "Klinik"
* name = "Heliosklinikum Erfurt"