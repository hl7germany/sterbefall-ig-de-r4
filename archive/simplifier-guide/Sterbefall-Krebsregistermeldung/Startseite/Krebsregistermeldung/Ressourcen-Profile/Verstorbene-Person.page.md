---
subject: http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

@```
from
    StructureDefinition
where
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson'

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
	        url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson' 
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
    url = 'http://gematik.de/fhir/oegd/stf/StructureDefinition/StfVerstorbenePerson' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/StfVerstorbenePerson' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```
