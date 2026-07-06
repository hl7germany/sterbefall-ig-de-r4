Instance: StfArztZuordnung-Example
InstanceOf: StfArztZuordnung
Title: "Beispiel STF Arzt-Zuordnung"
Description: "Diese Instanz zeigt die Zuordnung eines Arztes zu einer Organisation mit einer Arztrolle."
Usage: #example
* practitioner = Reference(Practitioner/StfArzt-Example)
* organization = Reference(Organization/StfOrganisation-Example)
* code.coding[Berufsgruppe] = StfBerufsgruppeCS#Krankenhaus "Krankenhaus"
* specialty = StfArztrolleCS#Krankenhausarzt "diensthabender Arzt/Ärztin im Krankenhaus"
