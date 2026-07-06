---
canonical: http://gematik.de/fhir/oegd/stf/OperationDefinition/StfReceiveBundle
expand: 2
---

## {{link}}

### Metadaten

<fql output="transpose" headers="true">
from
	OperationDefinition
where
	url = 'http://gematik.de/fhir/oegd/stf/OperationDefinition/StfReceiveBundle'
select
	Canonical: url, Status: status, Version: version
</fql>



### Inhalt

<tabs>
  <tab title="Darstellung">{{render}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>