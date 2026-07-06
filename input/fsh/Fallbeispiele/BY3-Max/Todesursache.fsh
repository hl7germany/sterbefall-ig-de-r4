//Sterbeurkunde
Instance: StfTodesursache-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#J96, "respiratorische Insuffizienz", "30 Minuten", $loinc#LA26682-7 "Immediate/Primary")
* code.coding[SCT] = $sct#184305005 "Cause of Death"
* hasMember[+] = Reference(StfTodesursache2-Su-BY3-Max)
* hasMember[+] = Reference(StfTodesursache3-Su-BY3-Max)
* hasMember[+] = Reference(StfTodesursache4-Su-BY3-Max)
* hasMember[+] = Reference(StfTodesursache5-Su-BY3-Max)
* note[+].text = "Pankreaskarzinom mit Lebermetastasen, palliative Therapie Sturz in häuslicher Umgebung, Abschürfungen im Gesicht, Hämatom im Bauchraum"
* note[+].text = "Hirninfarkt beidseitig vor 8 Monaten, infolge einseitige Lähmung links
Fortgeschrittenes Pankreaskarzinom mit Lebermetastasen, keine OO, Chemotherapie
abgebrochen, sonstige palliative Therapie"
* component[NichtNatuerlicherTod]
  * valueCodeableConcept.coding = $v2-0532#Y
  * valueCodeableConcept.text = "Sturz im häuslichen Umfeld vor 3 Tagen, von oberer Stufe im Treppeneingangsbereich; mit dem
Bauch auf mitgeführte Gehhilfe gestürzt, leichte Abschürfungen im Gesicht; Hämatom im
Bauchraum; später über Buchschmerzen /Unwohlsein geklagt. Vermutung ggf. innere
Verletzungen, die unbehandelt geblieben sind."
* component[WeitereAngaben][+]
  * valueCodeableConcept.coding.version = "2019"
  * valueCodeableConcept.coding.code = #W10
  * valueCodeableConcept.text = "mgl. Innere Verletzungen"
* component[WeitereAngaben][+]
  * valueString = "Sturz in häuslicher Umgebung vor 3 Tagen"

Instance: StfTodesursache2-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#J84, "interstitielle pulmonale Pneumonitis", "1 Woche", $loinc#LA26680-1 "Contributory")

Instance: StfTodesursache3-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#C25, "Pankresakarzinom", "Seit 10/2024", $loinc#LA26681-9 "Underlying")

Instance: StfTodesursache4-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#C78, "Lebermetastasen", "Seit 10/2024", $loinc#LA46-8 "Other")

Instance: StfTodesursache5-Su-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfLeichenschau-BY3-Max)
* insert StfMemberTodesursacheByMaxMitZeitdauer(#I63, "Hirninfarkt", "Vor 8 Monaten", $loinc#LA46-8 "Other")

//Obduktionsschein
Instance: StfTodesursache-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#I99, "Herz-Kreislaufversagen", $loinc#LA26682-7 "Immediate/Primary")
* hasMember[+] = Reference(StfTodesursache2-Os-BY3-Max)
* hasMember[+] = Reference(StfTodesursache3-Os-BY3-Max)
* hasMember[+] = Reference(StfTodesursache4-Os-BY3-Max)
* hasMember[+] = Reference(StfTodesursache5-Os-BY3-Max)

Instance: StfTodesursache2-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#R58, "innere Blutungen im Bauchraum", $loinc#LA26680-1 "Contributory")

Instance: StfTodesursache3-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#S36, "Milzruptur", $loinc#LA26681-9 "Underlying")

Instance: StfTodesursache4-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#C25, "Pankreaskarzinom", $loinc#LA46-8 "Other")

Instance: StfTodesursache5-Os-BY3-Max
InstanceOf: StfTodesursache
Usage: #example
* partOf = Reference(StfObduktion-BY3-Max)
* insert StfMemberTodesursacheByMax(#C78, "mit Lebermetastasen", $loinc#LA46-8 "Other")

RuleSet: StfMemberTodesursacheByMax(code, text, loincAnswer)
* effectiveDateTime = "2025-01-05T10:30:00+01:00"
* status = #final
* subject = Reference(StfVerstorbenePerson-BY3-Max)
* performer = Reference(StfArzt-BY3-Max-Boese)
* valueCodeableConcept.coding.code = {code}
* valueCodeableConcept.coding.version = "2019"
* valueCodeableConcept.text = {text}
* component[Todesursachensequenz].valueCodeableConcept.coding = {loincAnswer}

RuleSet: StfMemberTodesursacheByMaxMitZeitdauer(code, text, zeitdauer, loincAnswer)
* insert StfMemberTodesursacheByMax({code}, {text}, {loincAnswer})
* effectiveDateTime = "2025-01-01T10:30:00+01:00"
* component[ZeitdauerBeginnBisTod].valueString = {zeitdauer}