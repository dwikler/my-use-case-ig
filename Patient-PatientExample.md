# PatientExample - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample**

## Example Patient: PatientExample

Profile: [MyUseCasePatient](StructureDefinition-MyUseCasePatient.md)

Jane Doe Female, DoB: 1985-06-15 ( Medical Record Number: 12345 (use: official, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample",
  "meta" : {
    "profile" : [
      "https://dwikler.github.io/my-use-case-ig/StructureDefinition/MyUseCasePatient"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR",
            "display" : "Medical Record Number"
          }
        ]
      },
      "system" : "https://myHIS.myhospital.com/identifiers/patient",
      "value" : "12345"
    }
  ],
  "name" : [
    {
      "family" : "Doe",
      "given" : ["Jane"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1985-06-15"
}

```
