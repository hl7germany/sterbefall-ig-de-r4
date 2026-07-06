### Version 1.0.0

Dies ist die finale Version 1.0.0 nach erfolgreichem Abschluss des Abstimmungsverfahrens (Ballot-Phase 12/2025-01/2026). Die Version beinhaltet umfangreiche Verbesserungen und Anpassungen basierend auf dem Feedback aus dem Ballot-Verfahren.

#### Neue Profile und Ressourcen

* **CapabilityStatement**: Neues CapabilityStatement `StfKrebsregistermeldungCpS` für die Beschreibung der benötigten Server-Interaktionen zur Übermittlung von Daten zur Krebsregistermeldung und Abfrage durch die Datenverarbeitung auf Seiten der Krebsregister. Das CapabilityStatement definiert alle unterstützten Ressourcentypen, Profile, Operationen und Suchparameter.
* **SearchParameter**: Neuer SearchParameter `StfProvenanceActivitySearchParameter` für die Suche nach Provenance-Ressourcen anhand des `activity`-Feldes zur gezielten Filterung von Export-Prozessen.

#### Profil-Änderungen und Verbesserungen

##### StfArzt
* **Lockerung der Kardinalitäten (#57, #68)**: Die Anforderungen an Identifier und Datenelemente wurden gelockert, um flexible Arzt-Informationen zu ermöglichen:
  * `identifier.given` (Vorname): Kardinalität von `1..*` auf `0..*` gelockert - Vorname ist nun optional
  * Identifier-Slices `ID` und `Zulassungsnummer` wurden entfernt
  * Nur noch `ANR` (Arztnummer/LANR) als optionaler Identifier-Slice
  * `address[Strassenanschrift]`: Kardinalität von `1..*` auf `0..*` gelockert
* Diese Änderungen ermöglichen eine pragmatischere Datenerfassung, bei der nur noch der Nachname verpflichtend ist.

##### StfArztZuordnung
* Profil wurde präzisiert und Dokumentation verbessert

##### StfTodesursache
* **Strukturelle Verbesserungen (#60, #61, #63, #67, #80, #82, #84)**: Umfangreiche Überarbeitung zur besseren Abbildung der Todesursachenkette:
  * **Neue verpflichtende Component `Todesursachensequenz`** (1..1 MS): Klare Kennzeichnung der Position in der Todesursachenkette (Ia, Ib, Ic, II) mittels LOINC-Code 82791-5 und neuem ValueSet `StfTodesursachensequenzVS`
  * **Umbenannte Component**: `Details` wurde in `WeitereAngaben` umbenannt (0..* MS) für bessere Verständlichkeit
  * **Erweiterte Component `WeitereAngaben`**: Unterstützt nun sowohl `CodeableConcept` (ICD-10-Codes) als auch `string` (Freitext) für maximale Flexibilität bei der Angabe zusätzlicher Klassifikationen
  * **Verbesserte Component `NichtNatuerlicherTod`**: Zusätzliches Feld `valueCodeableConcept.text` als Must-Support für Freitextangaben zu Anhaltspunkten
  * **ICD-10-Darstellung**: Offizielle ICD-10-Displays in `coding.display` verpflichtend, Freitexte gehören in das `text`-Feld der CodeableConcept
  * **SNOMED-CT-Coding**: Strukturiertes Slicing mit verpflichtendem Slice `SCT` für konsistente Kodierung
  * **Vereinfachte hasMember-Referenzen**: Entfernung der Extension `StfTodesursacheTypExtension` (siehe unten), da die Sequenzierung nun über die Component abgebildet wird
  * Component `Quelle` entfernt, da diese Information über andere Mechanismen bereitgestellt wird (Siehe **Observation-Profile (allgemein)** unten)

##### StfOrganisation
* **Identifier-Slicing (#58, #86)**: Einführung strukturierter Identifier für medizinische Einrichtungen:
  * Neuer Slice `BSNR` für Betriebsstättennummer (basierend auf `de.basis-identifier-bsnr`)
  * Neuer Slice `IKNR` für Institutionskennummer (basierend auf `de.basis-identifier-iknr`)
* **Entfernung der StfPruefcodeExtension**: Die nicht verwendete Extension wurde aus der Spezifikation entfernt

##### StfVerstorbenePerson
* Optimierung der Must-Support-Kennzeichnungen und Verbesserung der Dokumentation
* Klarstellung der Anforderungen für Identifier und Adressdaten

##### StfLeichenschau und StfObduktion
* **Verbesserungen (#77, #81)**: Optimierung der Profildefinitionen und Constraints
* Klarere Abgrenzung der beiden Profile für unterschiedliche Untersuchungszeitpunkte
* Verbesserung der Dokumentation zur Verwendung

##### StfExportBundle
* **Slicing-Korrektur (#89)**: Fehlerhaftes Slicing wurde korrigiert für korrekte Validierung

##### StfObservationKrebserkrankung
* Profilverbesserungen und Dokumentationsoptimierung

##### Observation-Profile (allgemein)
* **Hinzufügung von `partOf`**: Allen Observation-Profilen wurde das Element `partOf` hinzugefügt, um die Verknüpfung mit übergeordneten Prozeduren zu ermöglichen

#### Entfernte Artefakte

* **Extension `StfTodesursacheTypExtension`**: Wurde entfernt, da die Todesursachensequenz nun über die neue Component `Todesursachensequenz` mit dem ValueSet `StfTodesursachensequenzVS` abgebildet wird
* **Extension `StfPruefcodeExtension`**: Wurde entfernt, da sie in keinem Profil verwendet wurde
* **CodeSystem `StfUnnatuerlicheTodesursachenCS`**: Entfernt, da nicht mehr benötigt
* **ValueSet `StfUnnatuerlicheTodesursachenVS`**: Entfernt, da nicht mehr benötigt

#### Neue Terminologien

* **ValueSet `StfTodesursachensequenzVS`**: Definiert die möglichen Positionen in der Todesursachenkette (Ia, Ib, Ic, II)
* **Umbenennung**: CodeSystem und ValueSet `Berufsgruppe` in `Arztrolle` umbenannt (`StfArztrolleCS` / `StfArztrolleVS`) für präzisere Bezeichnung

#### Neue Beispiele

* **BY1**: Vollständiges Fallbeispiel für Bayern, Variante 1
* **BY2**: Vollständiges Fallbeispiel für Bayern, Variante 2 mit komplexerer Todesursachenkette
* **BY3-Max**: Maximales Fallbeispiel mit allen möglichen Datenelementen, mehreren Ärzten, Obduktion, umfangreichen Todesursachen und Dokumentation (5 verkettete Todesursachen, 3 Ärzte, Obduktionsdokumentation)
* **HE1**: Vollständiges Fallbeispiel für Hessen
* **TH1**: Vollständiges Fallbeispiel für Thüringen mit Standesamt und Klinik
* **VB1**: Vollständiges Fallbeispiel für Vogelsbergkreis, Hessen
* Alle Beispiele wurden überarbeitet und an die aktuelle Spezifikation angepasst

#### Dokumentation

* **CapabilityStatement-Seite**: Neue Dokumentationsseite für das CapabilityStatement mit Erläuterungen zu unterstützten Interaktionen
* **Export-Provenance-Seite**: Erweiterte Dokumentation zur Verwendung von Provenance-Ressourcen
* **Operations-Dokumentation**: Überarbeitete und erweiterte Beschreibungen für `$receiveBundle` und `$deleteBundle` Operationen
* **Extension-Dokumentation**: Neue Seite für `ZuletztBehandelnderArztExtension`
* **Todesursache-Dokumentation**: Umfangreiche Überarbeitung mit Erläuterungen zur Todesursachenkette und Verwendung der Components
* **Beispiel-Seiten**: Neue übersichtliche Darstellung aller Fallbeispiele
* Entfernung veralteter Dokumentationsseiten für nicht mehr verwendete Extensions

#### Lizenzierung und Copyright

* **Apache License 2.0**: Hinzufügung der vollständigen Apache-Lizenz in der Datei `LICENSE`
* **SECURITY.md**: Neue Datei mit Sicherheitsrichtlinien und Kontaktinformationen für Responsible Disclosure
* **README.md**: Erweitert um Lizenzinformationen, Copyright-Hinweise und Disclaimer der gematik GmbH
* Alle erforderlichen OSPO-Dateien (Open Source Program Office) hinzugefügt

#### Bugfixes und kleinere Verbesserungen

* Korrektur zahlreicher Schreibfehler und Inkonsistenzen in der Dokumentation (#62, #73, #74, #85, #87, #93)
* Verbesserung der FQL-Tabellen und -Beschreibungen
* Optimierung der ICD-10-Versionsangaben (WHO 2019 als Standard)
* Korrektur von Display-Names in verschiedenen Ressourcen
* Behebung von Validierungsfehlern
* Verbesserung der Gemeindekennzahl-Extension
* Optimierung der Bundesland-Extension

#### Zusammenfassung

Version 1.0.0 stellt eine umfassende Überarbeitung basierend auf dem Ballot-Feedback dar. Mit 140 Commits seit der Ballot-Version wurden insbesondere die Flexibilität bei der Arzt-Dokumentation verbessert, die Todesursachen-Modellierung durch strukturierte Sequenzierung optimiert, umfangreiche Beispiele ergänzt und die technische Infrastruktur (CapabilityStatement, SearchParameter) vervollständigt.

---

### Version 1.0.0-ballot

Dies ist die Version für das Abstimmungsverfahren im Zeitraum 12/2025-01/2026.

* Profil `StfArzt`: Die Kardinalitäts-Anforderungen der Datenelemente wurde gelockert, es ist nunmehr nur noch die Angabe eines Nachnamens verpflichtend.
* Profil `StfLeichenschau`: Der festgelegte SNOMED-CT-Code wurde korrigiert auf 168461002.

### Version 1.0.0-beta.3

* Profil `StfExportBundle`: Unterstützt nun zusätzliche Ressourcentypen (`StfBasisObservation`, `StfExportProvenance`, `StfObduktionAnfrage`, `StfObduktion`, `StfVerstorbenePersonPseudonymisiert`) und verlangt per Slicing genau einen Provenance-Eintrag, der zwingend das neue Profil `StfExportProvenance` nutzt.
* Neues Profil `StfExportProvenance`: Dokumentiert die Erzeugung des ExportBundles inkl. verpflichtender `recorded`-, `reason`- und `activity`-Angaben sowie einer Referenz auf das zuständige Gesundheitsamt (`agent.onBehalfOf`).
* CodeSystem `StfObservationCodesErweiterungCS`: Um den Code `zeitdauerBeginnBisTod` erweitert, um Verlaufseinschätzungen strukturiert übermitteln zu können.
* Profil `StfTodesursache`: ICD-10-Displays dürfen nur offizielle Bezeichnungen zeigen (Freitexte wandern in `text`), zusätzliche Freitextpflicht für Details, neue Komponente `ZeitdauerBeginnBisTod` auf Basis des neuen Codes sowie präzisierte Beschreibung der `hasMember`-Verknüpfungen.
* Profil `StfSterbeurkundeAusstellung`: `reason` und `activity` sind jetzt als Kardinalität 1..1 ausgeprägt und sichern damit die verpflichtende Kodierung der Ausstellungsgründe und des Abschlussstatus.
* Neue Operation `$deleteBundle`: Löscht basieren auf einer Provenance einen kompletten Datensatz aus dem FHIR-Server.

### Version 1.0.0-beta.2

* Profil `StfVerstorbenePerson`: Identifier-Slicing in das RuleSet `Patient-identifier` ueberfuehrt und `active` sowie `address` als Must-Support hervorgehoben, damit Pflichtangaben klar dokumentiert sind.
* Neues Profil `StfVerstorbenePersonPseudonymisiert`: stellt einen minimierten Patientendatensatz ohne demografische Attribute fuer pseudonymisierte Meldungen bereit.
* Profil `StfObduktion`: `performer.function` referenziert nun Codes aus `StfOrganisationsTypCS` fuer eine konsistente Kennzeichnung der beteiligten Organisationen.
* Operationen `StfReceiveBundle` wurde neu hinzugefügt.

---

### Version 1.0.0-beta.1

* erste Entwurfsfassung
