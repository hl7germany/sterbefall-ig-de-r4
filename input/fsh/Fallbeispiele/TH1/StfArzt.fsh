Instance: StfArzt-TH1
InstanceOf: StfArzt
Usage: #example
* name[name].use = #official
* name[name].text = "Dr. Uyen My Vu"
* name[name].family = "Uyen"
* name[name].given = "My Vu"
* name[name].prefix = "Dr."
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].city = "Musterstadt"
* address[Strassenanschrift].postalCode = "12345"

Instance: StfArztZuordnung-TH1
InstanceOf: StfArztZuordnung
Usage: #example
* practitioner = Reference(Practitioner/StfArzt-TH1)
* organization = Reference(Organization/StfOrganisation-Klinik-BY2)