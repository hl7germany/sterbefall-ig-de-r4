CodeSystem: StfOrganisationsTypCS
Id: StfOrganisationsTypCS
Title: "STF Typ einer Organisation CodeSystem"
* insert Meta
* #Institution "Institution"
* #Klinik "Klinik"
* #Praxis "Praxis"
* #Abteilung "Abteilung"
* #StAmt "Standesamt"
* #PathInst "Pathologisches Institut"
* #GerichtsmedInst "Gerichtsmedizinisches Institut"
* #GA "Gesundheitsamt"
* #UebermittelndeStelle "Übermittelnde Stelle"
* #MeldendeStelle "Meldende Stelle"

ValueSet: StfOrganisationsTyp
Id: StfOrganisationsTypVS
Title: "STF Typ einer Organisation ValueSet"
* insert Meta
* include codes from system StfOrganisationsTypCS

ValueSet: StfOrganisationsTypObduktion
Id: StfOrganisationsTypObduktionVS
Title: "STF Typ einer Organisation bei Obduktion ValueSet"
* insert Meta
* StfOrganisationsTypCS#PathInst
* StfOrganisationsTypCS#GerichtsmedInst