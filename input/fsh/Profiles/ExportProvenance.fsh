Profile: StfExportProvenance
Parent: Provenance
Id: StfExportProvenance
Title: "STF ExportBundle Provenance"
Description: "Die StfExportProvenance Ressource dokumentiert die Herkunft und den Erstellungsprozess der im StfExportBundle enthaltenen Ressourcen. Außerdem wird die Ressource technisch für den Löschprozess benötigt."
* insert Meta
* target MS
* target only Reference(StfArzt or StfVerstorbenePerson or StfArztZuordnung or StfDatei or StfLeichenschau or StfOrganisation or StfSterbeurkundeAusstellung or StfBasisObservation or StfObduktionAnfrage or StfObduktion or StfVerstorbenePersonPseudonymisiert)
  * ^comment = "Verweis auf die Ressource im StfExportBundle, für die diese Provenance Ressource erstellt wurde"
* recorded MS
* reason 1.. MS
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#DECSD
* activity 1.. MS
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent MS
  * who MS
    * display 1.. MS
      * ^comment = "Name der generierenden Software"
  * onBehalfOf 1.. MS
  * onBehalfOf.reference 1.. MS
  * onBehalfOf only Reference(StfOrganisation)
    * ^comment = "Verweis auf die Organisation des Gesundheitsamtes"