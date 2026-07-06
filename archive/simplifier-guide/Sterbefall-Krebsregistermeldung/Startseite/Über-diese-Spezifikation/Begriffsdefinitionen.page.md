## {{page-title}}

### Schlüsselworte

Anforderungen als Ausdruck normativer Festlegungen werden durch die dem [RFC2119](https://tools.ietf.org/html/rfc2119) entsprechenden, in Großbuchstaben geschriebenen deutschen Schlüsselworte MUSS, DARF NICHT, SOLL, SOLL NICHT, KANN sowie ihrer Pluralformen gekennzeichnet.

### Bedeutung von Must-Support-Flags

Die Bedeutung von [MustSupport-Flags](http://hl7.org/fhir/R4/conformance-rules.html#mustSupport) ist im FHIR-Standard nicht festgelegt und hängt vom Kontext der Implementierung ab. Im Kontext dieses IG gelten folgende Definitionen:

#### Im Kontext der Erstellung von FHIR-Ressourcen
  
    > Elemente, die mit MS gekennzeichnet sind, MÜSSEN vom erstellenden System implementiert werden. Das bedeutet Systeme MÜSSEN die entsprechenden Elemente in den entsprechenden Profil-Instanzen beim Erstellen des Export-Bundles befüllen.

#### Im Kontext der Verarbeitung von FHIR-Ressourcen
  
    > Elemente, die mit MS gekennzeichnet sind, MÜSSEN vom empfangenden System verarbeitet werden. Das bedeutet Systeme MÜSSEN in der Lage sein, diese Elemente in der eigenen Persistenz-Ebene zu speichern.