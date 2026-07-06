Instance: StfObduktion-BY3-Max
InstanceOf: StfObduktion
Usage: #example
* basedOn = Reference(StfObduktionAnfrage-BY3-Max)
* subject = Reference(StfVerstorbenePerson-BY3-Max)
* status = #completed
* performedDateTime = "2025-05-01"
* location.display = "Nürnberg"
* performer[GerichtsmedizinischesInstitut].function.coding = StfOrganisationsTypCS#PathInst
* performer[GerichtsmedizinischesInstitut].actor = Reference(StfArzt-BY3-Max-Gutmann)
* performer[GerichtsmedizinischesInstitut].onBehalfOf = Reference(StfOrganisation-GM-BY3-Max)
* report = Reference(StfDatei-Obduktion-BY3-Max)

Instance: StfLeichenschau-BY3-Max
InstanceOf: StfLeichenschau
Usage: #example
* status = #completed
* performedDateTime = "2025-01-01"
* performer.actor = Reference(StfArzt-BY3-Max-Boese)
* subject = Reference(StfVerstorbenePerson-BY3-Max)



Instance: StfObduktionAnfrage-BY3-Max
InstanceOf: StfObduktionAnfrage
Usage: #example
* status = #completed
* intent = #order
* subject = Reference(StfVerstorbenePerson-BY3-Max)