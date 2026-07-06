Profile: StfOrganisation
Parent: Organization
Id: StfOrganisation
Title: "STF Organisation"
Description: "Informationen über Organisationen, die im Kontext der STF relevant sind"
* insert Meta
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    BSNR ..1 and
    IKNR ..1
* identifier[BSNR] only $de.basis-identifier-bsnr
* identifier[BSNR] ^patternIdentifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR"
* identifier[BSNR] ^comment = "Die Betriebsstättennummer (BSNR) der Organisation"
* identifier[IKNR] only $de.basis-identifier-iknr
* identifier[IKNR] ^patternIdentifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_IKNR"
* identifier[IKNR] ^comment = "Die Institutionskennnummer (IKNR) der Organisation"
* name MS
* name ^comment = "Name"
* type MS
* type from StfOrganisationsTyp (extensible)
* address MS
* address only $de.basis-address
* address.extension contains StfBundeslandExtension named Bundesland ..1 MS
* contact MS
* contact.name MS
* contact.name ^comment = "Beispielsweise Ansprechpartner bei der meldenden Stelle"
* partOf MS

Extension: StfBundeslandExtension
Id: StfBundeslandExtension
Title: "STF Bundesland Extension"
Description: "Mit dieser Extension ist es möglich, ein Coding für deutsche Bundesländer an einer Adresse zu ergänzen."
Context: Address
* insert Meta
* value[x] only Coding
* valueCoding from $de.basis-bundeslaender
