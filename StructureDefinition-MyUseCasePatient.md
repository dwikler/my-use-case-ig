# MyUseCasePatient - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MyUseCasePatient**

## Resource Profile: MyUseCasePatient 

| | |
| :--- | :--- |
| *Official URL*:https://dwikler.github.io/my-use-case-ig/StructureDefinition/MyUseCasePatient | *Version*:0.1.0 |
| Draft as of 2025-11-09 | *Computable Name*:MyUseCasePatient |

 
My Use Case Patient resource. 

The MyUseCase Patient Profile inherits from the FHIR Patient resource; refer to it for scope and usage definitions. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption.

Example Usage Scenarios:

The following are example usage scenarios for this profile:

* Create Patient demographic information.
* Read Patient demographic information.

### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

Each Patient Must Have:

* a patient identifier (MRN)
* a patient name with family and given names
* a birth date
* a gender

Each Patient Must Support:

* a patient identifier (MRN)
* a patient name with family and given names
* a birth date
* a gender

**Usages:**

* Examples for this Profile: [Patient/PatientExample](Patient-PatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/my-use-case-ig|current/StructureDefinition/MyUseCasePatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MyUseCasePatient.csv), [Excel](StructureDefinition-MyUseCasePatient.xlsx), [Schematron](StructureDefinition-MyUseCasePatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MyUseCasePatient",
  "url" : "https://dwikler.github.io/my-use-case-ig/StructureDefinition/MyUseCasePatient",
  "version" : "0.1.0",
  "name" : "MyUseCasePatient",
  "status" : "draft",
  "date" : "2025-11-09T18:58:27+00:00",
  "publisher" : "David Wikler",
  "contact" : [
    {
      "name" : "David Wikler",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://github.com/dwikler"
        }
      ]
    }
  ],
  "description" : "My Use Case Patient resource.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "type.coding.code"
            }
          ],
          "rules" : "open"
        },
        "short" : "Patient identifiers",
        "definition" : "This element allows multiple identifiers for the patient. It is sliced to distinguish different types of identifiers. One slice, HIS-MRN, represents the Medical Record Number assigned by the hospital Information System (HIS), and is required.",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:HIS-MRN",
        "path" : "Patient.identifier",
        "sliceName" : "HIS-MRN",
        "short" : "HIS-assigned Medical Record Number",
        "definition" : "This slice represents the MRN assigned by the hospital information system (HIS). It must be present in all patient records and is used as the primary identifier across applications in the healthcare organization.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:HIS-MRN.type.coding.system",
        "path" : "Patient.identifier.type.coding.system",
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
      },
      {
        "id" : "Patient.identifier:HIS-MRN.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "fixedCode" : "MR"
      },
      {
        "id" : "Patient.identifier:HIS-MRN.system",
        "path" : "Patient.identifier.system",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:HIS-MRN.value",
        "path" : "Patient.identifier.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
