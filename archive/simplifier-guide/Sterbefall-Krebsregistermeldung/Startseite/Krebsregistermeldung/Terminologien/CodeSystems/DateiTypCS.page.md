---
subject: http://gematik.de/fhir/oegd/stf/CodeSystem/StfDateiTypCS
---

## {{link}}

### Metadaten

@```
from
	CodeSystem
where
	url = 'http://gematik.de/fhir/oegd/stf/CodeSystem/StfDateiTypCS'
select
	Beschreibung: description, CanonicalURL: url, Status: status, Version: version
```

### Inhalt

<tabs>
    <tab title="Darstellung">  
        {{render}}
    </tab>
    <tab title="Darstellung (FQL)">
            @```
from
	CodeSystem
where
	url = 'http://gematik.de/fhir/oegd/stf/CodeSystem/StfDateiTypCS'
for concept
select
	Code: code, Anzeigetext: display, Definition: definition
```
    </tab>

    <tab title="XML">      
        {{xml}}
    </tab>
    <tab title="JSON">
        {{json}}
    </tab>
    <tab title="Link">
        {{link}}
    </tab>
</tabs>
