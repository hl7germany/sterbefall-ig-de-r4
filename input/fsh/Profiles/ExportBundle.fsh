Profile: StfExportBundle
Parent: Bundle
Id: StfExportBundle
Title: "STF Export Bundle"
Description: "Das StfExportBundle dient als Container für den standardisierten Austausch von Daten im Rahmen des Sterbefallprozesses. 
Es basiert auf der Ressource `Bundle` und verwendet den Typ `collection`, um alle relevanten STF Ressourcen zu bündeln."
* insert Meta
* type MS
* type = #collection
* timestamp MS
  * ^short = "Exportzeitpunkt"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  Provenance 1..1 MS and
  Inhalt 0..* MS
* entry[Provenance]
  * resource only StfExportProvenance
* entry[Inhalt]
  * resource only StfArzt or StfVerstorbenePerson or StfArztZuordnung or StfDatei or StfLeichenschau or StfOrganisation or StfSterbeurkundeAusstellung or StfBasisObservation or StfObduktionAnfrage or StfObduktion or StfVerstorbenePersonPseudonymisiert