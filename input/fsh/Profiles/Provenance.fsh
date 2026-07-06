Profile: StfSterbeurkundeAusstellung
Parent: Provenance
Id: StfSterbeurkundeAusstellung
Title: "STF Sterbeurkunde Ausstellung"
Description: "Mit diesem Provenance Profil kann die Ausstellung einer Sterbeurkunde dokumentiert werden."
* insert Meta
* target only Reference(Patient)
* recorded MS
* recorded ^comment = "Sterbefall beurkundet Datum"
* reason 1.. MS
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#DECSD
* activity 1.. MS
* activity = http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion#LA
* agent MS
* agent.who MS
* agent.who only Reference(Organization)
* agent.who ^comment = "Verweis auf das beurkundende Standesamt"