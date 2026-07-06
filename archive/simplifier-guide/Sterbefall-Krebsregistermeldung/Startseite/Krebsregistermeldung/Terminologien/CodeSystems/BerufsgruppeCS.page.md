---
subject: http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS
---

## {{link}}

### Metadaten

@```
from
	CodeSystem
where
	url = 'http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS'
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
	url = 'http://gematik.de/fhir/oegd/stf/CodeSystem/StfBerufsgruppeCS'
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
