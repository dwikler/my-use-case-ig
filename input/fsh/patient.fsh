// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyUseCasePatient
Parent: Patient
Description: "My Use Case Patient resource."

* identifier ^short = "Patient identifiers"
* identifier ^definition = "This element allows multiple identifiers for the patient. It is sliced to distinguish different types of identifiers. One slice, HIS-MRN, represents the Medical Record Number assigned by the hospital Information System (HIS), and is required."

* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains HIS-MRN 1..1 MS

* identifier[HIS-MRN] ^short = "HIS-assigned Medical Record Number"
* identifier[HIS-MRN] ^definition = "This slice represents the MRN assigned by the hospital information system (HIS). It must be present in all patient records and is used as the primary identifier across applications in the healthcare organization."

* identifier[HIS-MRN].type.coding.system = $IdType (exactly)
* identifier[HIS-MRN].type.coding.code = #MR (exactly)
* identifier[HIS-MRN].value 1..1 MS
* identifier[HIS-MRN].system 0..1 MS

* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS

* gender 1..1 MS
* birthDate 1..1 MS

Instance: PatientExample
InstanceOf: MyUseCasePatient
Description: "An example of a patient for my use case."
* identifier
  * use = #official
  * type = $IdType#MR "Medical Record Number"
  * value = "12345"
  * system = "https://myHIS.myhospital.com/identifiers/patient"
* name
  * given[0] = "Jane"
  * family = "Doe"
* gender = #female
* birthDate = "1985-06-15"
