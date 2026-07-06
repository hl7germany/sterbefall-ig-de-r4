Profile: StfTodesursache
Parent: StfBasisObservation
Id: StfTodesursache
Title: "STF Todesursache"
Description: "Todesursache (kompatibel zu [MII PR Onkologie Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod) )"
* insert Meta
* code MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
  SCT 1..1 MS
* code.coding[SCT] = $sct#184305005
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime ^comment = "Beginn der Krankheit"
* performer MS
  * ^comment = "Referenz auf den oder die ausstellende Arztin"
* value[x] 0.. MS
* value[x] only CodeableConcept
//* valueCodeableConcept from $icd-10-who (required)
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* valueCodeableConcept.coding.version 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.display MS
  * ^comment = "Im Display sind nur die offiziell in ICD-10 gelisteten Bezeichnungen zu verwenden. Freitexte sind im Text-Element zu hinterlegen."
* valueCodeableConcept.text MS
* dataAbsentReason MS
* dataAbsentReason ^comment = "Todesart ungeklärt
Wenn Todesart = ungeklärt ODER
= schwebende Ermittlung
dann j
sonst n"
* hasMember MS
* hasMember ^comment = "Verknüpfung von nachgelagerten Todesursachen. Alle weiteren Todesursachen, die zur Haupttodesursache geführt haben, werden über hasMember referenziert. Die weiteren Todesursachen selber dürfen keine hasMember Referenzen enthalten."
* hasMember.reference MS
* note MS
* note ^comment = "Nähere Angaben zur Todesursache und zu Begleiterkrankung (Epikrise)"
* component MS
* component.code from StfObservationCodes (extensible)
* component.code MS
* component.value[x] MS
* component.valueCodeableConcept MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
  Todesursachensequenz 1..1 MS and
  NichtNatuerlicherTod ..1 MS and
  WeitereAngaben ..* MS and
  ZeitdauerBeginnBisTod ..1 MS
* component[Todesursachensequenz]
  * ^comment = "Hier ist abgebildet, an welcher Stelle der Sequenz diese Todesursache kommt. (Ia, Ib, Ic, II)"
  * code MS
  * code = $loinc#82791-5
  * value[x] MS
  * value[x] only CodeableConcept
  * valueCodeableConcept 1.. MS
  * valueCodeableConcept.coding from StfTodesursachensequenzVS (required)
  * valueCodeableConcept.coding 1.. MS
* component[NichtNatuerlicherTod]
  * ^comment = "Anhaltspunkte für einen nicht-natürlichen Tod

Wenn Todesart = natürlich, 
dann 'ja' (Y)

Wenn Todesart =  nicht natürlich ODER 
= Tötung ODER 
= Selbsttötung ODER 
= Unfall ODER
= Komplikationen medizinischer Behandlungen ODER
= Ereignis, dessen nähere Umstände unbestimmt dann 'nein' (N) 

Wenn Todesart = leer, 
dann unbekannt (unknown);"
  * code MS
  * code = StfObservationCodesErweiterungCS#nichtNatuerlicherTod
  * value[x] MS
  * value[x] only CodeableConcept
  * valueCodeableConcept.coding from StfJaNeinUnbekannt (required)
  * valueCodeableConcept.text MS
* component[ZeitdauerBeginnBisTod]
  * ^comment = "Angabe der Zeitdauer von Beginn der Krankheit bis zum Tod in beliebiger Angabe"
  * code MS
  * code = StfObservationCodesErweiterungCS#zeitdauerBeginnBisTod
  * value[x] MS
  * value[x] only string
  * valueString MS
* component[WeitereAngaben]
  * ^comment = "Weitere Angaben zur Klassifikation der Todesursache, z.B. bei Unfall, Vergiftung,  Gewalteinwirkung, Selbsttötung sowie bei Komplikationen medizinischer Behandlung Äußere Ursache der Schädigung (Angaben über den Hergang); bei Vergiftungen zusätzlich Angabe des Mittels"
  * code MS
  * code = StfObservationCodesErweiterungCS#todesursacheKlassifikation
  * value[x] MS
  * value[x] only CodeableConcept or string
  * valueCodeableConcept MS
  * valueCodeableConcept.coding MS
  * valueCodeableConcept.coding.system 1.. MS
  * valueCodeableConcept.coding.system = "http://hl7.org/fhir/sid/icd-10"
  * valueCodeableConcept.coding.version 1.. MS
  * valueCodeableConcept.coding.code 1.. MS
  * valueCodeableConcept.coding.display MS
  * valueCodeableConcept.text MS
  * valueString MS