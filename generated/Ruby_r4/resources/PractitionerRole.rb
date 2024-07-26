module FHIR

  ##
  # A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.
  # Need to track services that a healthcare provider is able to provide at an organization's location, and the services that they can perform there.
  class PractitionerRole < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['active', 'date', 'email', 'endpoint', 'identifier', 'location', 'organization', 'phone', 'practitioner', 'role', 'service', 'specialty', 'telecom']
    METADATA = {
      ##
      # Logical id of this artifact
      # The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
      # The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
      'id' => {
        'type'=>'id',
        'path'=>'PractitionerRole.id',
        'min'=>0,
        'max'=>1
      },
      ##
      # Metadata about the resource
      # The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
      'meta' => {
        'type'=>'Meta',
        'path'=>'PractitionerRole.meta',
        'min'=>0,
        'max'=>1
      },
      ##
      # A set of rules under which this content was created
      # A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
      # Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.
      'implicitRules' => {
        'type'=>'uri',
        'path'=>'PractitionerRole.implicitRules',
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
        'path'=>'PractitionerRole.language',
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
        'path'=>'PractitionerRole.text',
        'min'=>0,
        'max'=>1
      },
      ##
      # Contained, inline Resources
      # These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
      # This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels.
      'contained' => {
        'type'=>'Resource',
        'path'=>'PractitionerRole.contained',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Additional content defined by implementations
      # May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      'extension' => {
        'type'=>'Extension',
        'path'=>'PractitionerRole.extension',
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
        'path'=>'PractitionerRole.modifierExtension',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Business Identifiers that are specific to a role/location.
      'identifier' => {
        'type'=>'Identifier',
        'path'=>'PractitionerRole.identifier',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Whether this practitioner role record is in active use.
      # If this value is false, you may refer to the period to see when the role was in active use. If there is no period specified, no inference can be made about when it was active.
      'active' => {
        'type'=>'boolean',
        'path'=>'PractitionerRole.active',
        'min'=>0,
        'max'=>1
      },
      ##
      # The period during which the practitioner is authorized to perform in these role(s)
      # The period during which the person is authorized to act as a practitioner in these role(s) for the organization.
      'period' => {
        'type'=>'Period',
        'path'=>'PractitionerRole.period',
        'min'=>0,
        'max'=>1
      },
      ##
      # Practitioner that is able to provide the defined services for the organization.
      'practitioner' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'],
        'type'=>'Reference',
        'path'=>'PractitionerRole.practitioner',
        'min'=>0,
        'max'=>1
      },
      ##
      # Organization where the roles are available
      # The organization where the Practitioner performs the roles associated.
      'organization' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'],
        'type'=>'Reference',
        'path'=>'PractitionerRole.organization',
        'min'=>0,
        'max'=>1
      },
      ##
      # Roles which this practitioner may perform
      # Roles which this practitioner is authorized to perform for the organization.
      # A person may have more than one role.
      'code' => {
        'type'=>'CodeableConcept',
        'path'=>'PractitionerRole.code',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Specific specialty of the practitioner.
      'specialty' => {
        'type'=>'CodeableConcept',
        'path'=>'PractitionerRole.specialty',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # The location(s) at which this practitioner provides care.
      'location' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'],
        'type'=>'Reference',
        'path'=>'PractitionerRole.location',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # The list of healthcare services that this worker provides for this role's Organization/Location(s).
      'healthcareService' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'],
        'type'=>'Reference',
        'path'=>'PractitionerRole.healthcareService',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Contact details that are specific to the role/location/service.
      'telecom' => {
        'type'=>'ContactPoint',
        'path'=>'PractitionerRole.telecom',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Times the Service Site is available
      # A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
      # More detailed availability information may be provided in associated Schedule/Slot resources.
      'availableTime' => {
        'type'=>'PractitionerRole::AvailableTime',
        'path'=>'PractitionerRole.availableTime',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Not available during this time due to provided reason
      # The practitioner is not available or performing this role during this period of time due to the provided reason.
      'notAvailable' => {
        'type'=>'PractitionerRole::NotAvailable',
        'path'=>'PractitionerRole.notAvailable',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Description of availability exceptions
      # A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
      'availabilityExceptions' => {
        'type'=>'string',
        'path'=>'PractitionerRole.availabilityExceptions',
        'min'=>0,
        'max'=>1
      },
      ##
      # Technical endpoints providing access to services operated for the practitioner with this role.
      'endpoint' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'],
        'type'=>'Reference',
        'path'=>'PractitionerRole.endpoint',
        'min'=>0,
        'max'=>Float::INFINITY
      }
    }

    ##
    # Times the Service Site is available
    # A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
    # More detailed availability information may be provided in associated Schedule/Slot resources.
    class AvailableTime < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'AvailableTime.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'AvailableTime.extension',
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
          'path'=>'AvailableTime.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # mon | tue | wed | thu | fri | sat | sun
        # Indicates which days of the week are available between the start and end Times.
        'daysOfWeek' => {
          'valid_codes'=>{
            'http://hl7.org/fhir/days-of-week'=>[ 'mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun' ]
          },
          'type'=>'code',
          'path'=>'AvailableTime.daysOfWeek',
          'min'=>0,
          'max'=>Float::INFINITY,
          'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}
        },
        ##
        # Always available? e.g. 24 hour service
        # Is this always available? (hence times are irrelevant) e.g. 24 hour service.
        'allDay' => {
          'type'=>'boolean',
          'path'=>'AvailableTime.allDay',
          'min'=>0,
          'max'=>1
        },
        ##
        # Opening time of day (ignored if allDay = true)
        # The opening time of day. Note: If the AllDay flag is set, then this time is ignored.
        # The timezone is expected to be for where this HealthcareService is provided at.
        'availableStartTime' => {
          'type'=>'time',
          'path'=>'AvailableTime.availableStartTime',
          'min'=>0,
          'max'=>1
        },
        ##
        # Closing time of day (ignored if allDay = true)
        # The closing time of day. Note: If the AllDay flag is set, then this time is ignored.
        # The timezone is expected to be for where this HealthcareService is provided at.
        'availableEndTime' => {
          'type'=>'time',
          'path'=>'AvailableTime.availableEndTime',
          'min'=>0,
          'max'=>1
        }
      }
      ##
      # Unique id for inter-element referencing
      # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
      attr_accessor :id                             # 0-1 id
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
      # mon | tue | wed | thu | fri | sat | sun
      # Indicates which days of the week are available between the start and end Times.
      attr_accessor :daysOfWeek                     # 0-* [ code ]
      ##
      # Always available? e.g. 24 hour service
      # Is this always available? (hence times are irrelevant) e.g. 24 hour service.
      attr_accessor :allDay                         # 0-1 boolean
      ##
      # Opening time of day (ignored if allDay = true)
      # The opening time of day. Note: If the AllDay flag is set, then this time is ignored.
      # The timezone is expected to be for where this HealthcareService is provided at.
      attr_accessor :availableStartTime             # 0-1 time
      ##
      # Closing time of day (ignored if allDay = true)
      # The closing time of day. Note: If the AllDay flag is set, then this time is ignored.
      # The timezone is expected to be for where this HealthcareService is provided at.
      attr_accessor :availableEndTime               # 0-1 time
    end

    ##
    # Not available during this time due to provided reason
    # The practitioner is not available or performing this role during this period of time due to the provided reason.
    class NotAvailable < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'NotAvailable.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'NotAvailable.extension',
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
          'path'=>'NotAvailable.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Reason presented to the user explaining why time not available
        # The reason that can be presented to the user as to why this time is not available.
        'description' => {
          'type'=>'string',
          'path'=>'NotAvailable.description',
          'min'=>1,
          'max'=>1
        },
        ##
        # Service not available from this date
        # Service is not available (seasonally or for a public holiday) from this date.
        'during' => {
          'type'=>'Period',
          'path'=>'NotAvailable.during',
          'min'=>0,
          'max'=>1
        }
      }
      ##
      # Unique id for inter-element referencing
      # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
      attr_accessor :id                             # 0-1 id
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
      # Reason presented to the user explaining why time not available
      # The reason that can be presented to the user as to why this time is not available.
      attr_accessor :description                    # 1-1 string
      ##
      # Service not available from this date
      # Service is not available (seasonally or for a public holiday) from this date.
      attr_accessor :during                         # 0-1 Period
    end
    ##
    # Logical id of this artifact
    # The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
    # The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
    attr_accessor :id                             # 0-1 id
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
    # Business Identifiers that are specific to a role/location.
    attr_accessor :identifier                     # 0-* [ Identifier ]
    ##
    # Whether this practitioner role record is in active use.
    # If this value is false, you may refer to the period to see when the role was in active use. If there is no period specified, no inference can be made about when it was active.
    attr_accessor :active                         # 0-1 boolean
    ##
    # The period during which the practitioner is authorized to perform in these role(s)
    # The period during which the person is authorized to act as a practitioner in these role(s) for the organization.
    attr_accessor :period                         # 0-1 Period
    ##
    # Practitioner that is able to provide the defined services for the organization.
    attr_accessor :practitioner                   # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Practitioner)
    ##
    # Organization where the roles are available
    # The organization where the Practitioner performs the roles associated.
    attr_accessor :organization                   # 0-1 Reference(http://hl7.org/fhir/StructureDefinition/Organization)
    ##
    # Roles which this practitioner may perform
    # Roles which this practitioner is authorized to perform for the organization.
    # A person may have more than one role.
    attr_accessor :code                           # 0-* [ CodeableConcept ]
    ##
    # Specific specialty of the practitioner.
    attr_accessor :specialty                      # 0-* [ CodeableConcept ]
    ##
    # The location(s) at which this practitioner provides care.
    attr_accessor :location                       # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/Location) ]
    ##
    # The list of healthcare services that this worker provides for this role's Organization/Location(s).
    attr_accessor :healthcareService              # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/HealthcareService) ]
    ##
    # Contact details that are specific to the role/location/service.
    attr_accessor :telecom                        # 0-* [ ContactPoint ]
    ##
    # Times the Service Site is available
    # A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
    # More detailed availability information may be provided in associated Schedule/Slot resources.
    attr_accessor :availableTime                  # 0-* [ PractitionerRole::AvailableTime ]
    ##
    # Not available during this time due to provided reason
    # The practitioner is not available or performing this role during this period of time due to the provided reason.
    attr_accessor :notAvailable                   # 0-* [ PractitionerRole::NotAvailable ]
    ##
    # Description of availability exceptions
    # A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
    attr_accessor :availabilityExceptions         # 0-1 string
    ##
    # Technical endpoints providing access to services operated for the practitioner with this role.
    attr_accessor :endpoint                       # 0-* [ Reference(http://hl7.org/fhir/StructureDefinition/Endpoint) ]

    def resourceType
      'PractitionerRole'
    end
  end
end
