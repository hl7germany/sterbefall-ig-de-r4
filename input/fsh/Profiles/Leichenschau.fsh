Profile: StfLeichenschau
Parent: Procedure
Id: StfLeichenschau
Title: "StfLeichenschau"
Description: "Mit diesem Profil wird eine Leichenschau im Kontext des Sterbefall abgebildet"
* insert Meta
* status MS
* code MS
* code = $sct#168461002
* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* performedDateTime ^comment = "Datum und optional Uhrzeit der Leichenschau"
* asserter MS
* asserter.reference MS
* asserter.display MS
* asserter.display ^comment = "Bei wem die Leichenschau beantragt wurde, bzw. Ausstellender Arzt der Leichenschau"
* performer.actor MS
* performer.actor only Reference(Practitioner)
* performer.actor ^comment = "Optionale Verknüpfung mit dem durchführenden Arzt oder Ärztin"