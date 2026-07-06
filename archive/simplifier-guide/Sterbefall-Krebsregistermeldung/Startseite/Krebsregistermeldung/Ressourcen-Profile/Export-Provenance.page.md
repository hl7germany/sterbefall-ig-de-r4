---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

@```
from
    StructureDefinition
where
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance'

for snapshot.element
where
    mustSupport.exists()
select {
    ID: id,
    Kurzbeschreibung: short,
    Type: type[0].code,
    Min: min,
    Max: max,
    VS_Url: binding.valueSet,
    Strength: binding.strength
}
```

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Terminology-Bindings
<!-- TODO: FQL funktioniert noch nicht wie vorgesehen-->
@```
from 
    StructureDefinition
where 
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfExportProvenance' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfExportProvenance' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```

### Suchparameter

Für diese Ressource muss der Standard-Suchparameter [_lastUpdated](https://hl7.org/fhir/R4/search.html#lastUpdated) unterstützt werden, insbesondere auch unter Verwendung der Vergleichsoperatoren (gt, gte, lt, lte).
