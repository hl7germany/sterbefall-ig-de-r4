Profile: StfDatei
Parent: DocumentReference
Id: StfDatei
Title: "STF Datei"
Description: "Dieses Profil bietet die Möglichkeit, eine Datei als base64-kodierter Content zu komunizieren. Im Projekt sollte möglichst darauf verzichtet werden und die strukturierten Profile bevorzugt werden."
* insert Meta
* identifier MS
* identifier ^comment = "Beispielsweise StAmt_Aktenzeichen"
* status MS
* type MS
* type from StfDateiTyp (extensible)
* subject MS
* subject only Reference(Patient)
* author MS
* author only Reference(Practitioner or Organization)
* author ^comment = "Beispielsweise Verweis auf eine Organization, die Informationen zum Standesamt beinhaltet (Nr. und Name). Im Kontext eines Obduktionsscheins der ausstellende Arzt oder Ärztin"
* date MS
* date ^comment = "Beispielsweise das Datum der Sterbeurkunde"
* content MS
  * attachment MS
    * contentType 1.. MS
    * data 1.. MS