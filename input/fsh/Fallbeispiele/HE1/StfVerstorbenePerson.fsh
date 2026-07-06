Instance: StfVerstorbenePerson-HE1
InstanceOf: StfVerstorbenePerson
Usage: #example
* name[name].use = #official
* name[name].family = "Lator"
* name[name].given = "Wendy"
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Freizeit"
* gender = #female
* birthDate = "1950-05-01"
* deceasedDateTime = "2025-01-01T01:17:00+01:00"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Hinter dem Horizont 1A"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Hinter dem Horizont"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "1A"
* address[Strassenanschrift].city = "Raunheim"
* address[Strassenanschrift].postalCode = "65479"
* address[Strassenanschrift].country = "DE"
* identifier[Sterbebuchnummer].type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
* identifier[Sterbebuchnummer].value = "S1/2025"