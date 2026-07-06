CodeSystem: StfDateiTypCS
Id: StfDateiTypCS
Title: "STF Datei Typ CS"
Description: "Typen von Dateien, die im Sterbefall Kontext vorkommen können"
* insert Meta
* #Sterbeurkunde "Sterbeurkunde"
* #Obduktionsschein "Obduktionsschein"
* #Leichenschauschein "Leichenschauschein"

ValueSet: StfDateiTyp
Id: StfDateiTypVS
Title: "STF Datei Typ"
Description: "Typen von Dateien, die im Sterbefall Kontext vorkommen können"
* insert Meta
* include codes from system StfDateiTypCS
