The MyUseCase Patient Profile inherits from the FHIR Patient resource; refer to it for scope and usage definitions. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption.

Example Usage Scenarios:

The following are example usage scenarios for this profile:

- Create Patient demographic information.
- Read Patient demographic information.

### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

Each Patient Must Have:

- a patient identifier (MRN)
- a patient name with family and given names
- a birth date
- a gender

Each Patient Must Support:

- a patient identifier (MRN)
- a patient name with family and given names
- a birth date
- a gender
