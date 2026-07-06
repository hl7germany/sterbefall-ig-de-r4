Instance: StfVerstorbenePerson-TH1
InstanceOf: StfVerstorbenePerson
Usage: #example
* name[name].use = #official
* name[name].family = "Meyer"
* name[name].given = "Rita"
* gender = #female
* birthDate = "1965-05-13"
* deceasedDateTime = "2024-04-02T21:33:00+01:00"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Gartenweg 7"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Gartenweg"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "7"
* address[Strassenanschrift].city = "Mühlhausen"
* address[Strassenanschrift].postalCode = "99974"
* address[Strassenanschrift].country = "DE"
* identifier[Sterbebuchnummer].type = http://terminology.hl7.org/CodeSystem/v2-0203#DC
* identifier[Sterbebuchnummer].value = "2613"