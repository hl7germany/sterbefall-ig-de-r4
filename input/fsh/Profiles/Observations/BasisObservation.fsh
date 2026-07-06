Profile: StfBasisObservation
Parent: Observation
Id: StfBasisObservation
Title: "STF Basis Observation"
Description: "Dieses Profil stellt die Basis Observation im Kontext der STF dar. Alle weiteren Observation sind auf dieser Basis aufbauend."
* insert Meta
* status MS
* partOf 1..1 MS
* partOf only Reference(StfLeichenschau or StfObduktion or Procedure)
  * ^short = "Zuordnung 'Todesursache aus Leichenschau' vs. 'Todesursache aus Obduktion'"
  * ^comment = "Gibt an, ob die Todesursache aus der Leichenschau oder aus der Obduktion stammt."
* code MS
* code from StfObservationCodes
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effectiveDateTime MS
* value[x] MS
* note MS
* hasMember MS
* hasMember only Reference(Observation)
* component
* component.code
* component.value[x]

ValueSet: StfObservationCodes
Id: StfObservationCodes
Title: "STF Observation Codes"
Description: "Im Kontext des Sterbefall relevante Observation Codes"
* insert Meta
* $sct#108369006 "Tumor"
* $sct#184305005 "Cause of Death"
* $loinc#82791-5 "Cause of death sequence"
* include codes from system StfObservationCodesErweiterungCS

CodeSystem: StfObservationCodesErweiterungCS
Id: StfObservationCodesErweiterungCS
Title: "StfObservationCodesErweiterung"
* insert Meta
* #nichtNatuerlicherTod "Nicht natürlicher Tod"
* #todesursacheKlassifikation "Klassifikation der Todesursache"
* #zeitdauerBeginnBisTod "Zeitdauer von Beginn der Krankheit bis Tod"