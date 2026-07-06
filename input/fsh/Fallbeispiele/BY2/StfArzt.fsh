Instance: StfArzt-BY2
InstanceOf: StfArzt
Usage: #example
* name[name].use = #official
* name[name].text = "Leitender OA Klinikum Regensburg"
* name[name].family = "Leitender OA Klinikum Regensburg"
* name[name].given = "Leitender OA Klinikum Regensburg"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].city = "Musterstadt"
* address[Strassenanschrift].postalCode = "12345"

Instance: StfArztZuordnung-BY2
InstanceOf: StfArztZuordnung
Usage: #example
* practitioner = Reference(Practitioner/StfArzt-BY2)
* organization = Reference(Organization/StfOrganisation-Klinik-BY2)