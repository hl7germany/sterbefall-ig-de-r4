Instance: StfSterbeurkundeAusstellung-Example
InstanceOf: StfSterbeurkundeAusstellung
Description: "Example STF Sterbeurkunde Ausstellung"
Usage: #example
* meta.profile = Canonical(StfSterbeurkundeAusstellung)
* target = Reference(Patient/StfVerstorbenePerson-Example)
* recorded = "2023-10-15T14:28:00Z"
* reason[0] = http://terminology.hl7.org/CodeSystem/v3-ActReason#DECSD
* activity[0] = http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion#LA
* agent[0].who = Reference(Organization/StfOrganisation-Example)