Instance: StfVerstorbenePerson-BY2
InstanceOf: StfVerstorbenePerson
Usage: #example
* name[name].use = #official
* name[name].family = "Herzog"
* name[name].given = "Carina"
* gender = #female
* birthDate = "1933-12-25"
* deceasedDateTime = "2025-05-22T18:00:00+02:00"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Feldstr. 5"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Feldstr."
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "5"
* address[Strassenanschrift].city = "Regensburg"
* address[Strassenanschrift].postalCode = "93059"
* address[Strassenanschrift].country = "DE"
* identifier[Sterbebuchnummer].type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
* identifier[Sterbebuchnummer].value = "S3526/2025"
