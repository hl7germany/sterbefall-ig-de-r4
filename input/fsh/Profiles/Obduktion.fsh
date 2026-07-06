Profile: StfObduktion
Parent: Procedure
Id: StfObduktion
Title: "STF Obduktion"
Description: "Abbildung der Informationen zu einer Obduktion im Kontext der STF"
* insert Meta
* basedOn MS
* basedOn ^comment = "Zuordnung zum Antrag einer Obduktion"
* basedOn only Reference(ServiceRequest)
* status MS
* code MS
* code = $sct#29240004
* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* performedDateTime ^comment = "Uhrzeit der Obduktion"
* asserter MS
* asserter.reference MS
* asserter.display MS
* asserter.display ^comment = "Bei wem die Obduktion beantragt wurde, bzw. Ausstellender Arzt der Obduktion"
* location MS
* location.display MS
* location.display ^comment = "Ort der Durchführung"
* performer MS
  * ^comment = "Angaben zur durchführenden Person oder Institution. Sind Person und Institution bekannt, ist als performer die PractitionerRole zu verwenden. Alternativ kann die Institution (Organization) als onBehalfOf angegeben werden."
* performer.function MS
* performer.function from StfOrganisationsTypObduktion (extensible)
* performer.onBehalfOf MS
* performer.actor MS
* performer.actor.display MS
* performer.actor.display ^comment = "Name Pathologisches Institut oder Gerichtsmedizinisches Institut"
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "function"
* performer ^slicing.rules = #open
* performer contains
  GerichtsmedizinischesInstitut ..1 MS and
  PathologischesInstitut ..1 MS
* performer[GerichtsmedizinischesInstitut].function = StfOrganisationsTypCS#GerichtsmedInst
* performer[PathologischesInstitut].function = StfOrganisationsTypCS#PathInst
* report MS
* report ^comment = "Verlinkung auf den beiliegenden Obduktionsbericht"

Profile: StfObduktionAnfrage
Parent: ServiceRequest
Id: StfObduktionAnfrage
Title: "STF Obduktion Anfrage"
Description: "Information über die Beantragung einer Obduktion"
* insert Meta
* status MS
* intent MS
* code MS
* code = $sct#29240004 "Autopsy examination (procedure)"
* subject MS