Profile: StfVerstorbenePerson
Parent: Patient
Id: StfVerstorbenePerson
Title: "STF Verstorbene Person"
Description: "Informationen zur verstorbenen Person"
* insert Meta
* insert Patient-identifier
* extension contains StfZuletztBehandelnderArztExtension named zuletztBehandelnderArzt ..1 MS
* extension[zuletztBehandelnderArzt].valueReference MS
* name MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    name 1..1 MS and
    geburtsname ..1 MS
* name[name] only $de.basis-humanName
* name[name]
  * use = #official
  * family 1.. MS
  * family ^comment = "Nachname"
  * family.extension[namenszusatz] MS
  * family.extension[nachname] MS
  * family.extension[vorsatzwort] MS
  * given 1.. MS
  * given ^comment = "Vorname"
  * prefix MS
  * prefix ^comment = "Titel"
  * text MS
  * text ^comment = "Vollständiger Name als Text"
* name[geburtsname] only $de.basis-humanName
* name[geburtsname]
  * use = #maiden
  * family MS
  * family ^comment = "Geburtsname"
  * given 0..0
  * prefix 0..0
* active MS
  * ^comment = "Als modifier-Element muss dieses Feld beachtet werden"
* gender 1.. MS
* birthDate 1.. MS
* deceased[x] 1.. MS
* deceasedDateTime 1.. MS
* deceasedDateTime ^comment = "Sterbedatum"
* address MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address contains
    Strassenanschrift 1..* MS
* address[Strassenanschrift] only $de.basis-address
* address[Strassenanschrift]
  * extension contains StfGemeindekennzahlExtension named GKZ ..1 MS
  * type = #both
  * line MS
  * line.extension[Postfach] 0..0
  * line.extension[Strasse] 1.. MS
  * line.extension[Hausnummer] 1.. MS
  * line.extension[Adresszusatz] MS
  * city 1.. MS
  * postalCode 1.. MS
  * country MS

RuleSet: Patient-identifier
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    IdImGesundheitsamt ..1 MS and
    Sterbebuchnummer ..1 MS
* identifier[IdImGesundheitsamt] MS
  * ^comment = "ID der Person im Gesundheitsamt"
  * ^patternIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
  * type 1.. MS
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
  * system MS
    * ^comment = "Im Rahmen des Projektes wurde kein NamingSystem festgelegt. Aus diesem Grund ist die Angabe eines type verpflichtend."
  * value 1.. MS
    * ^comment = "Hier ist der Identifier selber angegeben. Diese Angabe ist verpflichtend."
  * assigner MS
    * ^short = "Gesundheitsamt"
    * ^comment = "Entweder wird die Referenz auf ein Gesundheitsamt, oder der display des Gesundheitsamt angegeben."
    * reference MS
    * display MS
* identifier[Sterbebuchnummer] MS
  * ^comment = "Nummer der verstorbenen Person im Sterbebuch des zuständigen Gesundheitsamtes"
  * ^patternIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
  * system MS
    * ^comment = "Im Rahmen des Projektes wurde kein NamingSystem festgelegt. Aus diesem Grund ist die Angabe eines type verpflichtend."
  * type 1.. MS
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
  * value 1.. MS

Extension: StfGemeindekennzahlExtension
Id: StfGemeindekennzahlExtension
Title: "STF Gemeindekennzahl Extension"
Description: "Abbildung der GKZ (Gemeindekennzahl) bestehend aus Bundesland, Regierungsbezirk, Landkreis und Gemeinde"
Context: Address
* insert Meta
* value[x] only string

Extension: StfZuletztBehandelnderArztExtension
Id: StfZuletztBehandelnderArztExtension
Title: "STF zuletzt behandelnder Arzt Extension"
Description: "Ergänzende Information zur verstorbenen Person, die den zuletzt behandelnden Arzt angibt."
Context: Patient
* insert Meta
* value[x] only Reference(Practitioner)

Profile: StfVerstorbenePersonPseudonymisiert
Parent: Patient
Id: StfVerstorbenePersonPseudonymisiert
Title: "STF pseudonymisierte Verstorbene Person"
Description: "Informationen zur verstorbenen Person, allerdings beschränkt auf minimale Informationen, die zur Verarbeitung benötigt werden"
* insert Meta
* insert Patient-identifier
* name 0..0
* address 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0 
* multipleBirth[x] 0..0
* photo	0..0
* contact	0..0
* communication 0..0
* generalPractitioner	0..0
* managingOrganization	0..0
* link 0..0