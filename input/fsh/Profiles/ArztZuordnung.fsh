Profile: StfArztZuordnung
Parent: PractitionerRole
Id: StfArztZuordnung
Title: "STF Arzt Zuordnung"
Description: "Zuordnung von Ärztinnen und Ärzten zu Organisationen im Kontext der STF"
* insert Meta
* practitioner MS
* organization MS
* organization ^comment = "Institution des Arztes"
* specialty MS
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    Berufsgruppe ..1 MS
* code.coding[Berufsgruppe] from StfBerufsgruppe (required)
* specialty ^comment = "Arztrolle"
* specialty from StfArztrolle