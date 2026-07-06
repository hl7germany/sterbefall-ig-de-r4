Profile: StfArzt
Parent: Practitioner
Id: StfArzt
Title: "STF Arzt"
Description: "Informationen über Ärzte und Ärztinnen, die im Kontext der STF relevant sind"
* insert Meta
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^definition = "In diesem Element wird der Identifier (Identifikator) für diese behandelnde Person definiert. Der Identifikator kann aus diversen Quellen stammen."
* identifier contains
    ANR ..1
* identifier[ANR] only $de.basis-identifier-lanr
* identifier[ANR] ^patternIdentifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier[ANR] ^definition = "In diesem Element wird die Arztnummer (umgangssprachlich auch Lebenslange Arztnummer „LANR“ genannt) nach § 108 SGB V abgebildet."
* identifier[ANR] ^comment = "Die Lebenslange Arztnummer (LANR) des Arztes"
* name MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    name 1..1 MS
* name[name] only $de.basis-humanName
* name[name]
  * use = #official
  * text MS
  * family 1.. MS
  * family ^comment = "Nachname"
  * given 0.. MS
  * given ^comment = "Vorname"
  * prefix MS
  * prefix ^comment = "Titel"
* address MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only $de.basis-address
* address[Strassenanschrift]
  * type = #both
  * line MS
  * line ^comment = "Hausnummer und Straße"
  * line.extension[Postfach] 0..0
  * line.extension[Strasse] MS
  * line.extension[Hausnummer] MS
  * line.extension[Adresszusatz] MS
  * city 0.. MS
  * city ^comment = "Ort"
  * postalCode 0.. MS
  * postalCode ^comment = "PLZ"
  * country MS
  * country ^comment = "Land der Anschrift"
* address[Postfach] only $de.basis-address
* address[Postfach]
  * type = #postal
  * line MS
  * city ^comment = "Nummer des Postfach"
  * line.extension[Postfach] MS
  * line.extension[Strasse] 0..0
  * line.extension[Hausnummer] 0..0
  * line.extension[Adresszusatz] 0..0
  * city MS
  * postalCode MS
  * country MS
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
  Telefon ..1 MS and
  Telefax ..1 MS
* telecom[Telefon]
  * ^comment = "Telefon des Arztes"
  * system = #phone
  * value MS
* telecom[Telefax]
  * ^comment = "Fax des Arztes"
  * system = #fax
  * value MS

CodeSystem: StfArztIdentifierType
Id: StfArztIdentifierType
Title: "StfArztIdentifierType"
Description: "Bis zur Klärung, welche konkrete ID gemeint ist, erfolgt die unterscheidung der Identifier über diese Codes"
* insert Meta
* #ArztId "ID des Arztes laut Arztliste der Ärztekammer"
* #Zulassungsnr "Zulassungsnummer" "Nicht weiter spezifiziert"
