### Geltungsbereich (Scope)

Der Scope (Umfang) dieser FHIR-Spezifikation umfasst die Definition der Datenmodelle und der Interaktionsmuster im Zusammenhang mit der Krebsregistermeldung des Sterbefalls. Im ersten Schritt werden die folgenden Punkte spezifiziert:

1. **Datenmodelle:** Die Spezifikation definiert die Datenmodelle für die Erfassung von Sterbedaten. Dies umfasst neben den direkten Umständen des Todes auch die möglichen weiterführenden Todesursachen, potentielle Risiken sowie Angaben zu den am Prozess beteiligten Personen und Organisationen.

2. **Interaktionsmuster:** Die Spezifikation beschreibt die Interaktionsmuster zwischen den Gesundheitsämtern, den Ärzten und anderen Hilfseinrichtungen. Dies beinhaltet den Datenaustausch, die Erfassung von Untersuchungsergebnissen und den Zugriff auf Gesundheitsdaten.

Was vorerst außen vor bleibt:

1. **Spezifische Implementierungsdetails:** Die Spezifikation gibt allgemeine Leitlinien vor, um die Interoperabilität sicherzustellen, lässt jedoch spezifische Implementierungsdetails offen. Jede Organisation kann die Spezifikation gemäß ihren Anforderungen implementieren.

2. **Technologieabhängige Aspekte:** Die Spezifikation ist technologieunabhängig und kann in verschiedenen Systemen und Plattformen implementiert werden.

Für weitere Releases sind folgende Schritte geplant:

1. **Erweiterungen und Präzisierungen:** In zukünftigen Releases können Erweiterungen und Präzisierungen der Spezifikation vorgenommen werden, um auf spezifische Anforderungen oder neue Entwicklungen einzugehen.

2. **Feedback-Integration:** Die Spezifikation kann aufgrund von Rückmeldungen und Erfahrungen aus der Praxis angepasst werden, um sicherzustellen, dass sie den Bedürfnissen der Stakeholder gerecht wird.

Die FHIR-Spezifikation zur Krebsregistermeldung des Sterbefalls betrifft:

- **Gesundheitsämter:** Sie sind für das Management der Daten verantwortlich.

- **Ärzte und Gesundheitsdienstleister:** Sie führen die initialen und ggf. weiterführenden Untersuchungen (z.B. Obduktion) im Umfeld des Sterbefalls durch und dokumentieren die entsprechenden Daten.

- **Landeskrebsregister:** Sie empfangen die erhobenen Daten und verarbeiten sie im Kontext der Dokumentation von Krebserkrankungen.

Die Spezifikation ist vorerst für niemanden verbindlich, allerdings empfohlen für die oben genannten Akteure.

---

### Begriffsdefinition

#### Schlüsselworte

Anforderungen als Ausdruck normativer Festlegungen werden durch die dem [RFC2119](https://tools.ietf.org/html/rfc2119) entsprechenden, in Großbuchstaben geschriebenen deutschen Schlüsselworte MUSS, DARF NICHT, SOLL, SOLL NICHT, KANN sowie ihrer Pluralformen gekennzeichnet.

#### Bedeutung von Must-Support-Flags

Die Bedeutung von [MustSupport-Flags](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport) ist im FHIR-Standard nicht festgelegt und hängt vom Kontext der Implementierung ab. Im Kontext dieses IG gelten folgende Definitionen:

##### Im Kontext der Erstellung von FHIR-Ressourcen

> Elemente, die mit MS gekennzeichnet sind, MÜSSEN vom erstellenden System implementiert werden. Das bedeutet Systeme MÜSSEN die entsprechenden Elemente in den entsprechenden Profil-Instanzen beim Erstellen des Export-Bundles befüllen.

##### Im Kontext der Verarbeitung von FHIR-Ressourcen

> Elemente, die mit MS gekennzeichnet sind, MÜSSEN vom empfangenden System verarbeitet werden. Das bedeutet Systeme MÜSSEN in der Lage sein, diese Elemente in der eigenen Persistenz-Ebene zu speichern.

---

### Informationsmodell

Das Informationsmodell stellt die Beziehungen zwischen den verschiedenen Objektklassen dar. Diese werden durch entsprechende FHIR-Artefakte repräsentiert.

Zu den jeweiligen Datenelementen vgl. die entsprechenden FHIR-Ressourcen unter [FHIR-Artefakte](artifacts.html).

<img src="Infomodell.png" alt="Informationsmodell" style="max-width: 100%;"/>  


---

### Beispielarchitektur

Im Rahmen einer Teststellung dieser Spezifikation wurde folgende Beispielarchitektur in verschiedenen Bundesländern etabliert. In Hessen und Bayern wurden im Projektzeitraum Testdaten zwischen Softwarelösungen der Gesundheitsämter und den Landeskrebsregistern ausgetauscht.

<img src="Architektur.png" alt="Beispielarchitektur" style="max-width: 100%;"/>  
