module FHIR

  ##
  # Record of delivery of what is supplied.
  class SupplyDelivery < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['identifier', 'patient', 'receiver', 'status', 'supplier']
    MULTIPLE_TYPES = {
      'occurrence[x]' => ['dateTime', 'Period', 'Timing']
    }
    METADATA = {
      ##
      # Logical id of this artifact
      # The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
      # The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
      'id' => {
        'type'=>'string',
        'path'=>'SupplyDelivery.id',
        'min'=>0,
        'max'=>1
      },
      ##
      # Metadata about the resource
      # The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
      'meta' => {
        'type'=>'Meta',
        'path'=>'SupplyDelivery.meta',
        'min'=>0,
        'max'=>1
      },
      ##
      # A set of rules under which this content was created
      # A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
      # Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.
      'implicitRules' => {
        'type'=>'uri',
        'path'=>'SupplyDelivery.implicitRules',
        'min'=>0,
        'max'=>1
      },
      ##
      # Language of the resource content
      # The base language in which the resource is written.
      # Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute).
      'language' => {
        'valid_codes'=>{
          'urn:ietf:bcp:47'=>[ 'ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW' ]
        },
        'type'=>'code',
        'path'=>'SupplyDelivery.language',
        'min'=>0,
        'max'=>1,
        'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}
      },
      ##
      # Text summary of the resource, for human interpretation
      # A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
      # Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a "text blob" or where text is additionally entered raw or narrated and encoded information is added later.
      'text' => {
        'type'=>'Narrative',
        'path'=>'SupplyDelivery.text',
        'min'=>0,
        'max'=>1
      },
      ##
      # Contained, inline Resources
      # These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
      # This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels.
      'contained' => {
        'type'=>'Resource',
        'path'=>'SupplyDelivery.contained',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Additional content defined by implementations
      # May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      'extension' => {
        'type'=>'Extension',
        'path'=>'SupplyDelivery.extension',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Extensions that cannot be ignored
      # May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
      # 
      # Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      'modifierExtension' => {
        'type'=>'Extension',
        'path'=>'SupplyDelivery.modifierExtension',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # External identifier
      # Identifier for the supply delivery event that is used to identify it across multiple disparate systems.
      # This identifier is typically assigned by the dispenser, and may be used to reference the delivery when exchanging information about it with other systems.
      'identifier' => {
        'type'=>'Identifier',
        'path'=>'SupplyDelivery.identifier',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Fulfills plan, proposal or order
      # A plan, proposal or order that is fulfilled in whole or in part by this event.
      'basedOn' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SupplyRequest'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.basedOn',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Part of referenced event
      # A larger event of which this particular event is a component or step.
      # Not to be used to link an event to an Encounter - use Event.context for that.[The allowed reference resources may be adjusted as appropriate for the event resource].
      'partOf' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SupplyDelivery', 'http://hl7.org/fhir/StructureDefinition/Contract'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.partOf',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # in-progress | completed | abandoned | entered-in-error
      # A code specifying the state of the dispense event.
      # This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
      'status' => {
        'valid_codes'=>{
          'http://hl7.org/fhir/supplydelivery-status'=>[ 'in-progress', 'completed', 'abandoned', 'entered-in-error' ]
        },
        'type'=>'code',
        'path'=>'SupplyDelivery.status',
        'min'=>0,
        'max'=>1,
        'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-status'}
      },
      ##
      # Patient for whom the item is supplied
      # A link to a resource representing the person whom the delivered item is for.
      'patient' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.patient',
        'min'=>0,
        'max'=>1
      },
      ##
      # Category of dispense event
      # Indicates the type of dispensing event that is performed. Examples include: Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
      'type' => {
        'valid_codes'=>{
          'http://terminology.hl7.org/CodeSystem/supply-item-type'=>[ 'medication', 'device' ]
        },
        'type'=>'CodeableConcept',
        'path'=>'SupplyDelivery.type',
        'min'=>0,
        'max'=>1,
        'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-type'}
      },
      ##
      # The item that is delivered or supplied
      # The item that is being delivered or has been supplied.
      'suppliedItem' => {
        'type'=>'SupplyDelivery::SuppliedItem',
        'path'=>'SupplyDelivery.suppliedItem',
        'min'=>0,
        'max'=>1
      },
      ##
      # When event occurred
      # The date or time(s) the activity occurred.
      # [The list of types may be constrained as appropriate for the type of event].
      'occurrenceDateTime' => {
        'type'=>'DateTime',
        'path'=>'SupplyDelivery.occurrence[x]',
        'min'=>0,
        'max'=>1
      },
      ##
      # When event occurred
      # The date or time(s) the activity occurred.
      # [The list of types may be constrained as appropriate for the type of event].
      'occurrencePeriod' => {
        'type'=>'Period',
        'path'=>'SupplyDelivery.occurrence[x]',
        'min'=>0,
        'max'=>1
      },
      ##
      # When event occurred
      # The date or time(s) the activity occurred.
      # [The list of types may be constrained as appropriate for the type of event].
      'occurrenceTiming' => {
        'type'=>'Timing',
        'path'=>'SupplyDelivery.occurrence[x]',
        'min'=>0,
        'max'=>1
      },
      ##
      # Dispenser
      # The individual responsible for dispensing the medication, supplier or device.
      'supplier' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.supplier',
        'min'=>0,
        'max'=>1
      },
      ##
      # Where the Supply was sent
      # Identification of the facility/location where the Supply was shipped to, as part of the dispense event.
      'destination' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.destination',
        'min'=>0,
        'max'=>1
      },
      ##
      # Who collected the Supply
      # Identifies the person who picked up the Supply.
      'receiver' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'],
        'type'=>'Reference',
        'path'=>'SupplyDelivery.receiver',
        'min'=>0,
        'max'=>Float::INFINITY
      }
    }

    ##
    # The item that is delivered or supplied
    # The item that is being delivered or has been supplied.
    class SuppliedItem < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'item[x]' => ['CodeableConcept', 'Reference']
      }
      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'string',
          'path'=>'SuppliedItem.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'SuppliedItem.extension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Extensions that cannot be ignored even if unrecognized
        # May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
        # 
        # Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'modifierExtension' => {
          'type'=>'Extension',
          'path'=>'SuppliedItem.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Amount dispensed
        # The amount of supply that has been dispensed. Includes unit of measure.
        'quantity' => {
          'type'=>'Quantity',
          'path'=>'SuppliedItem.quantity',
          'min'=>0,
          'max'=>1
        },
        ##
        # Medication, Substance, or Device supplied
        # Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
        'itemCodeableConcept' => {
          'type'=>'CodeableConcept',
          'path'=>'SuppliedItem.item[x]',
          'min'=>0,
          'max'=>1
        }
        ##
        # Medication, Substance, or Device supplied
        # Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
        'itemReference' => {
          'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'],
          'type'=>'Reference',
          'path'=>'SuppliedItem.item[x]',
          'min'=>0,
          'max'=>1
        }
      }
      ##
      # Unique id for inter-element referencing
      # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
      attr_accessor :id                             # 0-1 string
      ##
      # Additional content defined by implementations
      # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      attr_accessor :extension                      # 0-* [ Extension ]
      ##
      # Extensions that cannot be ignored even if unrecognized
      # May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
      # 
      # Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      attr_accessor :modifierExtension              # 0-* [ Extension ]
      ##
      # Amount dispensed
      # The amount of supply that has been dispensed. Includes unit of measure.
      attr_accessor :quantity                       # 0-1 Quantity
      ##
      # Medication, Substance, or Device supplied
      # Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
      attr_accessor :itemCodeableConcept            # 0-1 CodeableConcept
      ##
      # Medication, Substance, or Device supplied
      # Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
      attr_accessor :itemReference                  # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Medication|http://hl7.org/fhir/StructureDefinition/Substance|http://hl7.org/fhir/StructureDefinition/Device)
    end
    ##
    # Logical id of this artifact
    # The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    # The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
    attr_accessor :id                             # 0-1 string
    ##
    # Metadata about the resource
    # The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
    attr_accessor :meta                           # 0-1 Meta
    ##
    # A set of rules under which this content was created
    # A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
    # Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.
    attr_accessor :implicitRules                  # 0-1 uri
    ##
    # Language of the resource content
    # The base language in which the resource is written.
    # Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute).
    attr_accessor :language                       # 0-1 code
    ##
    # Text summary of the resource, for human interpretation
    # A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
    # Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a "text blob" or where text is additionally entered raw or narrated and encoded information is added later.
    attr_accessor :text                           # 0-1 Narrative
    ##
    # Contained, inline Resources
    # These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
    # This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels.
    attr_accessor :contained                      # 0-* [ Resource ]
    ##
    # Additional content defined by implementations
    # May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
    # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
    attr_accessor :extension                      # 0-* [ Extension ]
    ##
    # Extensions that cannot be ignored
    # May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    # 
    # Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
    # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
    attr_accessor :modifierExtension              # 0-* [ Extension ]
    ##
    # External identifier
    # Identifier for the supply delivery event that is used to identify it across multiple disparate systems.
    # This identifier is typically assigned by the dispenser, and may be used to reference the delivery when exchanging information about it with other systems.
    attr_accessor :identifier                     # 0-* [ Identifier ]
    ##
    # Fulfills plan, proposal or order
    # A plan, proposal or order that is fulfilled in whole or in part by this event.
    attr_accessor :basedOn                        # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/SupplyRequest) ]
    ##
    # Part of referenced event
    # A larger event of which this particular event is a component or step.
    # Not to be used to link an event to an Encounter - use Event.context for that.[The allowed reference resources may be adjusted as appropriate for the event resource].
    attr_accessor :partOf                         # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/SupplyDelivery|http://hl7.org/fhir/StructureDefinition/Contract) ]
    ##
    # in-progress | completed | abandoned | entered-in-error
    # A code specifying the state of the dispense event.
    # This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
    attr_accessor :status                         # 0-1 code
    ##
    # Patient for whom the item is supplied
    # A link to a resource representing the person whom the delivered item is for.
    attr_accessor :patient                        # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Patient)
    ##
    # Category of dispense event
    # Indicates the type of dispensing event that is performed. Examples include: Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
    attr_accessor :type                           # 0-1 CodeableConcept
    ##
    # The item that is delivered or supplied
    # The item that is being delivered or has been supplied.
    attr_accessor :suppliedItem                   # 0-1 SupplyDelivery::SuppliedItem
    ##
    # When event occurred
    # The date or time(s) the activity occurred.
    # [The list of types may be constrained as appropriate for the type of event].
    attr_accessor :occurrenceDateTime             # 0-1 DateTime
    ##
    # When event occurred
    # The date or time(s) the activity occurred.
    # [The list of types may be constrained as appropriate for the type of event].
    attr_accessor :occurrencePeriod               # 0-1 Period
    ##
    # When event occurred
    # The date or time(s) the activity occurred.
    # [The list of types may be constrained as appropriate for the type of event].
    attr_accessor :occurrenceTiming               # 0-1 Timing
    ##
    # Dispenser
    # The individual responsible for dispensing the medication, supplier or device.
    attr_accessor :supplier                       # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Practitioner|http://hl7.org/fhir/StructureDefinition/PractitionerRole|http://hl7.org/fhir/StructureDefinition/Organization)
    ##
    # Where the Supply was sent
    # Identification of the facility/location where the Supply was shipped to, as part of the dispense event.
    attr_accessor :destination                    # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Location)
    ##
    # Who collected the Supply
    # Identifies the person who picked up the Supply.
    attr_accessor :receiver                       # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/Practitioner|http://hl7.org/fhir/StructureDefinition/PractitionerRole) ]

    def resourceType
      'SupplyDelivery'
    end
  end
end
