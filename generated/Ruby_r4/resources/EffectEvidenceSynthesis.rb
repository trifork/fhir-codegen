module FHIR

  ##
  # The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a population where the effect estimate is derived from a combination of research studies.
  class EffectEvidenceSynthesis < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['context-quantity', 'context-type-quantity', 'context-type-value', 'context-type', 'context', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
    METADATA = {
      ##
      # Logical id of this artifact
      # The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
      # The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
      'id' => {
        'type'=>'id',
        'path'=>'EffectEvidenceSynthesis.id',
        'min'=>0,
        'max'=>1
      },
      ##
      # Metadata about the resource
      # The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
      'meta' => {
        'type'=>'Meta',
        'path'=>'EffectEvidenceSynthesis.meta',
        'min'=>0,
        'max'=>1
      },
      ##
      # A set of rules under which this content was created
      # A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
      # Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.
      'implicitRules' => {
        'type'=>'uri',
        'path'=>'EffectEvidenceSynthesis.implicitRules',
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
        'path'=>'EffectEvidenceSynthesis.language',
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
        'path'=>'EffectEvidenceSynthesis.text',
        'min'=>0,
        'max'=>1
      },
      ##
      # Contained, inline Resources
      # These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
      # This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels.
      'contained' => {
        'type'=>'Resource',
        'path'=>'EffectEvidenceSynthesis.contained',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Additional content defined by implementations
      # May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
      # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
      'extension' => {
        'type'=>'Extension',
        'path'=>'EffectEvidenceSynthesis.extension',
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
        'path'=>'EffectEvidenceSynthesis.modifierExtension',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Canonical identifier for this effect evidence synthesis, represented as a URI (globally unique)
      # An absolute URI that is used to identify this effect evidence synthesis when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this effect evidence synthesis is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the effect evidence synthesis is stored on different servers.
      # Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
      # 
      # The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
      # 
      # In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
      'url' => {
        'type'=>'uri',
        'path'=>'EffectEvidenceSynthesis.url',
        'min'=>0,
        'max'=>1
      },
      ##
      # Additional identifier for the effect evidence synthesis
      # A formal identifier that is used to identify this effect evidence synthesis when it is represented in other formats, or referenced in a specification, model, design or an instance.
      # Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this effect evidence synthesis outside of FHIR, where it is not possible to use the logical URI.
      'identifier' => {
        'type'=>'Identifier',
        'path'=>'EffectEvidenceSynthesis.identifier',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Business version of the effect evidence synthesis
      # The identifier that is used to identify this version of the effect evidence synthesis when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the effect evidence synthesis author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
      # There may be different effect evidence synthesis instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the effect evidence synthesis with the format [url]|[version].
      'version' => {
        'type'=>'string',
        'path'=>'EffectEvidenceSynthesis.version',
        'min'=>0,
        'max'=>1
      },
      ##
      # Name for this effect evidence synthesis (computer friendly)
      # A natural language name identifying the effect evidence synthesis. This name should be usable as an identifier for the module by machine processing applications such as code generation.
      # The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
      'name' => {
        'type'=>'string',
        'path'=>'EffectEvidenceSynthesis.name',
        'min'=>0,
        'max'=>1
      },
      ##
      # Name for this effect evidence synthesis (human friendly)
      # A short, descriptive, user-friendly title for the effect evidence synthesis.
      # This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
      'title' => {
        'type'=>'string',
        'path'=>'EffectEvidenceSynthesis.title',
        'min'=>0,
        'max'=>1
      },
      ##
      # draft | active | retired | unknown
      # The status of this effect evidence synthesis. Enables tracking the life-cycle of the content.
      # Allows filtering of effect evidence synthesiss that are appropriate for use versus not.
      'status' => {
        'valid_codes'=>{
          'http://hl7.org/fhir/publication-status'=>[ 'draft', 'active', 'retired', 'unknown' ]
        },
        'type'=>'code',
        'path'=>'EffectEvidenceSynthesis.status',
        'min'=>1,
        'max'=>1,
        'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}
      },
      ##
      # Date last changed
      # The date  (and optionally time) when the effect evidence synthesis was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the effect evidence synthesis changes.
      # Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the effect evidence synthesis. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
      'date' => {
        'type'=>'dateTime',
        'path'=>'EffectEvidenceSynthesis.date',
        'min'=>0,
        'max'=>1
      },
      ##
      # Name of the publisher (organization or individual)
      # The name of the organization or individual that published the effect evidence synthesis.
      # Usually an organization but may be an individual. The publisher (or steward) of the effect evidence synthesis is the organization or individual primarily responsible for the maintenance and upkeep of the effect evidence synthesis. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the effect evidence synthesis. This item SHOULD be populated unless the information is available from context.
      'publisher' => {
        'type'=>'string',
        'path'=>'EffectEvidenceSynthesis.publisher',
        'min'=>0,
        'max'=>1
      },
      ##
      # Contact details for the publisher
      # Contact details to assist a user in finding and communicating with the publisher.
      # May be a web site, an email address, a telephone number, etc.
      'contact' => {
        'type'=>'ContactDetail',
        'path'=>'EffectEvidenceSynthesis.contact',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Natural language description of the effect evidence synthesis
      # A free text natural language description of the effect evidence synthesis from a consumer's perspective.
      # This description can be used to capture details such as why the effect evidence synthesis was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the effect evidence synthesis as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the effect evidence synthesis is presumed to be the predominant language in the place the effect evidence synthesis was created).
      'description' => {
        'type'=>'markdown',
        'path'=>'EffectEvidenceSynthesis.description',
        'min'=>0,
        'max'=>1
      },
      ##
      # Used for footnotes or explanatory notes
      # A human-readable string to clarify or explain concepts about the resource.
      'note' => {
        'type'=>'Annotation',
        'path'=>'EffectEvidenceSynthesis.note',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # The context that the content is intended to support
      # The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate effect evidence synthesis instances.
      # When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
      'useContext' => {
        'type'=>'UsageContext',
        'path'=>'EffectEvidenceSynthesis.useContext',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Intended jurisdiction for effect evidence synthesis (if applicable)
      # A legal or geographic region in which the effect evidence synthesis is intended to be used.
      # It may be possible for the effect evidence synthesis to be used in jurisdictions other than those for which it was originally designed or intended.
      'jurisdiction' => {
        'type'=>'CodeableConcept',
        'path'=>'EffectEvidenceSynthesis.jurisdiction',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Use and/or publishing restrictions
      # A copyright statement relating to the effect evidence synthesis and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the effect evidence synthesis.
      'copyright' => {
        'type'=>'markdown',
        'path'=>'EffectEvidenceSynthesis.copyright',
        'min'=>0,
        'max'=>1
      },
      ##
      # When the effect evidence synthesis was approved by publisher
      # The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
      # The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
      'approvalDate' => {
        'type'=>'date',
        'path'=>'EffectEvidenceSynthesis.approvalDate',
        'min'=>0,
        'max'=>1
      },
      ##
      # When the effect evidence synthesis was last reviewed
      # The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
      # If specified, this date follows the original approval date.
      'lastReviewDate' => {
        'type'=>'date',
        'path'=>'EffectEvidenceSynthesis.lastReviewDate',
        'min'=>0,
        'max'=>1
      },
      ##
      # When the effect evidence synthesis is expected to be used
      # The period during which the effect evidence synthesis content was or is planned to be in active use.
      # The effective period for a effect evidence synthesis  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
      'effectivePeriod' => {
        'type'=>'Period',
        'path'=>'EffectEvidenceSynthesis.effectivePeriod',
        'min'=>0,
        'max'=>1
      },
      ##
      # The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc.
      # Descriptive topics related to the content of the EffectEvidenceSynthesis. Topics provide a high-level categorization grouping types of EffectEvidenceSynthesiss that can be useful for filtering and searching.
      'topic' => {
        'valid_codes'=>{
          'http://terminology.hl7.org/CodeSystem/definition-topic'=>[ 'treatment', 'education', 'assessment' ]
        },
        'type'=>'CodeableConcept',
        'path'=>'EffectEvidenceSynthesis.topic',
        'min'=>0,
        'max'=>Float::INFINITY,
        'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}
      },
      ##
      # Who authored the content
      # An individiual or organization primarily involved in the creation and maintenance of the content.
      'author' => {
        'type'=>'ContactDetail',
        'path'=>'EffectEvidenceSynthesis.author',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Who edited the content
      # An individual or organization primarily responsible for internal coherence of the content.
      'editor' => {
        'type'=>'ContactDetail',
        'path'=>'EffectEvidenceSynthesis.editor',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Who reviewed the content
      # An individual or organization primarily responsible for review of some aspect of the content.
      'reviewer' => {
        'type'=>'ContactDetail',
        'path'=>'EffectEvidenceSynthesis.reviewer',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Who endorsed the content
      # An individual or organization responsible for officially endorsing the content for use in some setting.
      'endorser' => {
        'type'=>'ContactDetail',
        'path'=>'EffectEvidenceSynthesis.endorser',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Additional documentation, citations, etc.
      # Related artifacts such as additional documentation, justification, or bibliographic references.
      # Each related artifact is either an attachment, or a reference to another resource, but not both.
      'relatedArtifact' => {
        'type'=>'RelatedArtifact',
        'path'=>'EffectEvidenceSynthesis.relatedArtifact',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # Type of synthesis eg meta-analysis.
      'synthesisType' => {
        'valid_codes'=>{
          'http://terminology.hl7.org/CodeSystem/synthesis-type'=>[ 'std-MA', 'IPD-MA', 'indirect-NMA', 'combined-NMA', 'range', 'classification' ]
        },
        'type'=>'CodeableConcept',
        'path'=>'EffectEvidenceSynthesis.synthesisType',
        'min'=>0,
        'max'=>1,
        'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/synthesis-type'}
      },
      ##
      # Type of study eg randomized trial.
      'studyType' => {
        'valid_codes'=>{
          'http://terminology.hl7.org/CodeSystem/study-type'=>[ 'RCT', 'CCT', 'cohort', 'case-control', 'series', 'case-report', 'mixed' ]
        },
        'type'=>'CodeableConcept',
        'path'=>'EffectEvidenceSynthesis.studyType',
        'min'=>0,
        'max'=>1,
        'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/study-type'}
      },
      ##
      # What population?
      # A reference to a EvidenceVariable resource that defines the population for the research.
      'population' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'],
        'type'=>'Reference',
        'path'=>'EffectEvidenceSynthesis.population',
        'min'=>1,
        'max'=>1
      },
      ##
      # What exposure?
      # A reference to a EvidenceVariable resource that defines the exposure for the research.
      'exposure' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'],
        'type'=>'Reference',
        'path'=>'EffectEvidenceSynthesis.exposure',
        'min'=>1,
        'max'=>1
      },
      ##
      # What comparison exposure?
      # A reference to a EvidenceVariable resource that defines the comparison exposure for the research.
      'exposureAlternative' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'],
        'type'=>'Reference',
        'path'=>'EffectEvidenceSynthesis.exposureAlternative',
        'min'=>1,
        'max'=>1
      },
      ##
      # What outcome?
      # A reference to a EvidenceVariable resomece that defines the outcome for the research.
      'outcome' => {
        'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'],
        'type'=>'Reference',
        'path'=>'EffectEvidenceSynthesis.outcome',
        'min'=>1,
        'max'=>1
      },
      ##
      # What sample size was involved?
      # A description of the size of the sample involved in the synthesis.
      'sampleSize' => {
        'type'=>'EffectEvidenceSynthesis::SampleSize',
        'path'=>'EffectEvidenceSynthesis.sampleSize',
        'min'=>0,
        'max'=>1
      },
      ##
      # What was the result per exposure?
      # A description of the results for each exposure considered in the effect estimate.
      'resultsByExposure' => {
        'type'=>'EffectEvidenceSynthesis::ResultsByExposure',
        'path'=>'EffectEvidenceSynthesis.resultsByExposure',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # What was the estimated effect
      # The estimated effect of the exposure variant.
      'effectEstimate' => {
        'type'=>'EffectEvidenceSynthesis::EffectEstimate',
        'path'=>'EffectEvidenceSynthesis.effectEstimate',
        'min'=>0,
        'max'=>Float::INFINITY
      },
      ##
      # How certain is the effect
      # A description of the certainty of the effect estimate.
      'certainty' => {
        'type'=>'EffectEvidenceSynthesis::Certainty',
        'path'=>'EffectEvidenceSynthesis.certainty',
        'min'=>0,
        'max'=>Float::INFINITY
      }
    }

    ##
    # What sample size was involved?
    # A description of the size of the sample involved in the synthesis.
    class SampleSize < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'SampleSize.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'SampleSize.extension',
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
          'path'=>'SampleSize.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Description of sample size
        # Human-readable summary of sample size.
        'description' => {
          'type'=>'string',
          'path'=>'SampleSize.description',
          'min'=>0,
          'max'=>1
        },
        ##
        # How many studies?
        # Number of studies included in this evidence synthesis.
        'numberOfStudies' => {
          'type'=>'integer',
          'path'=>'SampleSize.numberOfStudies',
          'min'=>0,
          'max'=>1
        },
        ##
        # How many participants?
        # Number of participants included in this evidence synthesis.
        'numberOfParticipants' => {
          'type'=>'integer',
          'path'=>'SampleSize.numberOfParticipants',
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
      # Description of sample size
      # Human-readable summary of sample size.
      attr_accessor :description                    # 0-1 string
      ##
      # How many studies?
      # Number of studies included in this evidence synthesis.
      attr_accessor :numberOfStudies                # 0-1 integer
      ##
      # How many participants?
      # Number of participants included in this evidence synthesis.
      attr_accessor :numberOfParticipants           # 0-1 integer
    end

    ##
    # What was the result per exposure?
    # A description of the results for each exposure considered in the effect estimate.
    class ResultsByExposure < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'ResultsByExposure.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'ResultsByExposure.extension',
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
          'path'=>'ResultsByExposure.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Description of results by exposure
        # Human-readable summary of results by exposure state.
        'description' => {
          'type'=>'string',
          'path'=>'ResultsByExposure.description',
          'min'=>0,
          'max'=>1
        },
        ##
        # exposure | exposure-alternative
        # Whether these results are for the exposure state or alternative exposure state.
        'exposureState' => {
          'valid_codes'=>{
            'http://hl7.org/fhir/exposure-state'=>[ 'exposure', 'exposure-alternative' ]
          },
          'type'=>'code',
          'path'=>'ResultsByExposure.exposureState',
          'min'=>0,
          'max'=>1,
          'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/exposure-state'}
        },
        ##
        # Variant exposure states
        # Used to define variant exposure states such as low-risk state.
        'variantState' => {
          'valid_codes'=>{
            'http://terminology.hl7.org/CodeSystem/evidence-variant-state'=>[ 'low-risk', 'medium-risk', 'high-risk' ]
          },
          'type'=>'CodeableConcept',
          'path'=>'ResultsByExposure.variantState',
          'min'=>0,
          'max'=>1,
          'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variant-state'}
        },
        ##
        # Risk evidence synthesis
        # Reference to a RiskEvidenceSynthesis resource.
        'riskEvidenceSynthesis' => {
          'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis'],
          'type'=>'Reference',
          'path'=>'ResultsByExposure.riskEvidenceSynthesis',
          'min'=>1,
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
      # Description of results by exposure
      # Human-readable summary of results by exposure state.
      attr_accessor :description                    # 0-1 string
      ##
      # exposure | exposure-alternative
      # Whether these results are for the exposure state or alternative exposure state.
      attr_accessor :exposureState                  # 0-1 code
      ##
      # Variant exposure states
      # Used to define variant exposure states such as low-risk state.
      attr_accessor :variantState                   # 0-1 CodeableConcept
      ##
      # Risk evidence synthesis
      # Reference to a RiskEvidenceSynthesis resource.
      attr_accessor :riskEvidenceSynthesis          # 1-1 Reference(http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis)
    end

    ##
    # What was the estimated effect
    # The estimated effect of the exposure variant.
    class EffectEstimate < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'EffectEstimate.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'EffectEstimate.extension',
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
          'path'=>'EffectEstimate.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Description of effect estimate
        # Human-readable summary of effect estimate.
        'description' => {
          'type'=>'string',
          'path'=>'EffectEstimate.description',
          'min'=>0,
          'max'=>1
        },
        ##
        # Type of efffect estimate
        # Examples include relative risk and mean difference.
        'type' => {
          'valid_codes'=>{
            'http://terminology.hl7.org/CodeSystem/effect-estimate-type'=>[ 'relative-RR', 'relative-OR', 'relative-HR', 'absolute-ARD', 'absolute-MeanDiff', 'absolute-SMD', 'absolute-MedianDiff' ]
          },
          'type'=>'CodeableConcept',
          'path'=>'EffectEstimate.type',
          'min'=>0,
          'max'=>1,
          'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/effect-estimate-type'}
        },
        ##
        # Variant exposure states
        # Used to define variant exposure states such as low-risk state.
        'variantState' => {
          'valid_codes'=>{
            'http://terminology.hl7.org/CodeSystem/evidence-variant-state'=>[ 'low-risk', 'medium-risk', 'high-risk' ]
          },
          'type'=>'CodeableConcept',
          'path'=>'EffectEstimate.variantState',
          'min'=>0,
          'max'=>1,
          'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variant-state'}
        },
        ##
        # Point estimate
        # The point estimate of the effect estimate.
        'value' => {
          'type'=>'decimal',
          'path'=>'EffectEstimate.value',
          'min'=>0,
          'max'=>1
        },
        ##
        # What unit is the outcome described in?
        # Specifies the UCUM unit for the outcome.
        'unitOfMeasure' => {
          'type'=>'CodeableConcept',
          'path'=>'EffectEstimate.unitOfMeasure',
          'min'=>0,
          'max'=>1
        },
        ##
        # How precise the estimate is
        # A description of the precision of the estimate for the effect.
        'precisionEstimate' => {
          'type'=>'EffectEvidenceSynthesis::EffectEstimate::PrecisionEstimate',
          'path'=>'EffectEstimate.precisionEstimate',
          'min'=>0,
          'max'=>Float::INFINITY
        }
      }

      ##
      # How precise the estimate is
      # A description of the precision of the estimate for the effect.
      class PrecisionEstimate < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          ##
          # Unique id for inter-element referencing
          # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
          'id' => {
            'type'=>'id',
            'path'=>'PrecisionEstimate.id',
            'min'=>0,
            'max'=>1
          },
          ##
          # Additional content defined by implementations
          # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
          # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
          'extension' => {
            'type'=>'Extension',
            'path'=>'PrecisionEstimate.extension',
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
            'path'=>'PrecisionEstimate.modifierExtension',
            'min'=>0,
            'max'=>Float::INFINITY
          },
          ##
          # Type of precision estimate
          # Examples include confidence interval and interquartile range.
          'type' => {
            'valid_codes'=>{
              'http://terminology.hl7.org/CodeSystem/precision-estimate-type'=>[ 'CI', 'IQR', 'SD', 'SE' ]
            },
            'type'=>'CodeableConcept',
            'path'=>'PrecisionEstimate.type',
            'min'=>0,
            'max'=>1,
            'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/precision-estimate-type'}
          },
          ##
          # Level of confidence interval
          # Use 95 for a 95% confidence interval.
          'level' => {
            'type'=>'decimal',
            'path'=>'PrecisionEstimate.level',
            'min'=>0,
            'max'=>1
          },
          ##
          # Lower bound of confidence interval.
          'from' => {
            'type'=>'decimal',
            'path'=>'PrecisionEstimate.from',
            'min'=>0,
            'max'=>1
          },
          ##
          # Upper bound of confidence interval.
          'to' => {
            'type'=>'decimal',
            'path'=>'PrecisionEstimate.to',
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
        # Type of precision estimate
        # Examples include confidence interval and interquartile range.
        attr_accessor :type                           # 0-1 CodeableConcept
        ##
        # Level of confidence interval
        # Use 95 for a 95% confidence interval.
        attr_accessor :level                          # 0-1 decimal
        ##
        # Lower bound of confidence interval.
        attr_accessor :from                           # 0-1 decimal
        ##
        # Upper bound of confidence interval.
        attr_accessor :to                             # 0-1 decimal
      end
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
      # Description of effect estimate
      # Human-readable summary of effect estimate.
      attr_accessor :description                    # 0-1 string
      ##
      # Type of efffect estimate
      # Examples include relative risk and mean difference.
      attr_accessor :type                           # 0-1 CodeableConcept
      ##
      # Variant exposure states
      # Used to define variant exposure states such as low-risk state.
      attr_accessor :variantState                   # 0-1 CodeableConcept
      ##
      # Point estimate
      # The point estimate of the effect estimate.
      attr_accessor :value                          # 0-1 decimal
      ##
      # What unit is the outcome described in?
      # Specifies the UCUM unit for the outcome.
      attr_accessor :unitOfMeasure                  # 0-1 CodeableConcept
      ##
      # How precise the estimate is
      # A description of the precision of the estimate for the effect.
      attr_accessor :precisionEstimate              # 0-* [ EffectEvidenceSynthesis::EffectEstimate::PrecisionEstimate ]
    end

    ##
    # How certain is the effect
    # A description of the certainty of the effect estimate.
    class Certainty < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        ##
        # Unique id for inter-element referencing
        # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
        'id' => {
          'type'=>'id',
          'path'=>'Certainty.id',
          'min'=>0,
          'max'=>1
        },
        ##
        # Additional content defined by implementations
        # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
        # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
        'extension' => {
          'type'=>'Extension',
          'path'=>'Certainty.extension',
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
          'path'=>'Certainty.modifierExtension',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # Certainty rating
        # A rating of the certainty of the effect estimate.
        'rating' => {
          'valid_codes'=>{
            'http://terminology.hl7.org/CodeSystem/evidence-quality'=>[ 'high', 'moderate', 'low', 'very-low' ]
          },
          'type'=>'CodeableConcept',
          'path'=>'Certainty.rating',
          'min'=>0,
          'max'=>Float::INFINITY,
          'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-quality'}
        },
        ##
        # Used for footnotes or explanatory notes
        # A human-readable string to clarify or explain concepts about the resource.
        'note' => {
          'type'=>'Annotation',
          'path'=>'Certainty.note',
          'min'=>0,
          'max'=>Float::INFINITY
        },
        ##
        # A component that contributes to the overall certainty
        # A description of a component of the overall certainty.
        'certaintySubcomponent' => {
          'type'=>'EffectEvidenceSynthesis::Certainty::CertaintySubcomponent',
          'path'=>'Certainty.certaintySubcomponent',
          'min'=>0,
          'max'=>Float::INFINITY
        }
      }

      ##
      # A component that contributes to the overall certainty
      # A description of a component of the overall certainty.
      class CertaintySubcomponent < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          ##
          # Unique id for inter-element referencing
          # Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
          'id' => {
            'type'=>'id',
            'path'=>'CertaintySubcomponent.id',
            'min'=>0,
            'max'=>1
          },
          ##
          # Additional content defined by implementations
          # May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
          # There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
          'extension' => {
            'type'=>'Extension',
            'path'=>'CertaintySubcomponent.extension',
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
            'path'=>'CertaintySubcomponent.modifierExtension',
            'min'=>0,
            'max'=>Float::INFINITY
          },
          ##
          # Type of subcomponent of certainty rating.
          'type' => {
            'valid_codes'=>{
              'http://terminology.hl7.org/CodeSystem/certainty-subcomponent-type'=>[ 'RiskOfBias', 'Inconsistency', 'Indirectness', 'Imprecision', 'PublicationBias', 'DoseResponseGradient', 'PlausibleConfounding', 'LargeEffect' ]
            },
            'type'=>'CodeableConcept',
            'path'=>'CertaintySubcomponent.type',
            'min'=>0,
            'max'=>1,
            'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-subcomponent-type'}
          },
          ##
          # Subcomponent certainty rating
          # A rating of a subcomponent of rating certainty.
          'rating' => {
            'valid_codes'=>{
              'http://terminology.hl7.org/CodeSystem/certainty-subcomponent-rating'=>[ 'no-change', 'downcode1', 'downcode2', 'downcode3', 'upcode1', 'upcode2', 'no-concern', 'serious-concern', 'critical-concern', 'present', 'absent' ]
            },
            'type'=>'CodeableConcept',
            'path'=>'CertaintySubcomponent.rating',
            'min'=>0,
            'max'=>Float::INFINITY,
            'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-subcomponent-rating'}
          },
          ##
          # Used for footnotes or explanatory notes
          # A human-readable string to clarify or explain concepts about the resource.
          'note' => {
            'type'=>'Annotation',
            'path'=>'CertaintySubcomponent.note',
            'min'=>0,
            'max'=>Float::INFINITY
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
        # Type of subcomponent of certainty rating.
        attr_accessor :type                           # 0-1 CodeableConcept
        ##
        # Subcomponent certainty rating
        # A rating of a subcomponent of rating certainty.
        attr_accessor :rating                         # 0-* [ CodeableConcept ]
        ##
        # Used for footnotes or explanatory notes
        # A human-readable string to clarify or explain concepts about the resource.
        attr_accessor :note                           # 0-* [ Annotation ]
      end
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
      # Certainty rating
      # A rating of the certainty of the effect estimate.
      attr_accessor :rating                         # 0-* [ CodeableConcept ]
      ##
      # Used for footnotes or explanatory notes
      # A human-readable string to clarify or explain concepts about the resource.
      attr_accessor :note                           # 0-* [ Annotation ]
      ##
      # A component that contributes to the overall certainty
      # A description of a component of the overall certainty.
      attr_accessor :certaintySubcomponent          # 0-* [ EffectEvidenceSynthesis::Certainty::CertaintySubcomponent ]
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
    # Canonical identifier for this effect evidence synthesis, represented as a URI (globally unique)
    # An absolute URI that is used to identify this effect evidence synthesis when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this effect evidence synthesis is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the effect evidence synthesis is stored on different servers.
    # Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.
    # 
    # The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). 
    # 
    # In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found.
    attr_accessor :url                            # 0-1 uri
    ##
    # Additional identifier for the effect evidence synthesis
    # A formal identifier that is used to identify this effect evidence synthesis when it is represented in other formats, or referenced in a specification, model, design or an instance.
    # Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this effect evidence synthesis outside of FHIR, where it is not possible to use the logical URI.
    attr_accessor :identifier                     # 0-* [ Identifier ]
    ##
    # Business version of the effect evidence synthesis
    # The identifier that is used to identify this version of the effect evidence synthesis when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the effect evidence synthesis author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.
    # There may be different effect evidence synthesis instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the effect evidence synthesis with the format [url]|[version].
    attr_accessor :version                        # 0-1 string
    ##
    # Name for this effect evidence synthesis (computer friendly)
    # A natural language name identifying the effect evidence synthesis. This name should be usable as an identifier for the module by machine processing applications such as code generation.
    # The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly.
    attr_accessor :name                           # 0-1 string
    ##
    # Name for this effect evidence synthesis (human friendly)
    # A short, descriptive, user-friendly title for the effect evidence synthesis.
    # This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc.
    attr_accessor :title                          # 0-1 string
    ##
    # draft | active | retired | unknown
    # The status of this effect evidence synthesis. Enables tracking the life-cycle of the content.
    # Allows filtering of effect evidence synthesiss that are appropriate for use versus not.
    attr_accessor :status                         # 1-1 code
    ##
    # Date last changed
    # The date  (and optionally time) when the effect evidence synthesis was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the effect evidence synthesis changes.
    # Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the effect evidence synthesis. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.
    attr_accessor :date                           # 0-1 dateTime
    ##
    # Name of the publisher (organization or individual)
    # The name of the organization or individual that published the effect evidence synthesis.
    # Usually an organization but may be an individual. The publisher (or steward) of the effect evidence synthesis is the organization or individual primarily responsible for the maintenance and upkeep of the effect evidence synthesis. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the effect evidence synthesis. This item SHOULD be populated unless the information is available from context.
    attr_accessor :publisher                      # 0-1 string
    ##
    # Contact details for the publisher
    # Contact details to assist a user in finding and communicating with the publisher.
    # May be a web site, an email address, a telephone number, etc.
    attr_accessor :contact                        # 0-* [ ContactDetail ]
    ##
    # Natural language description of the effect evidence synthesis
    # A free text natural language description of the effect evidence synthesis from a consumer's perspective.
    # This description can be used to capture details such as why the effect evidence synthesis was built, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the effect evidence synthesis as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the effect evidence synthesis is presumed to be the predominant language in the place the effect evidence synthesis was created).
    attr_accessor :description                    # 0-1 markdown
    ##
    # Used for footnotes or explanatory notes
    # A human-readable string to clarify or explain concepts about the resource.
    attr_accessor :note                           # 0-* [ Annotation ]
    ##
    # The context that the content is intended to support
    # The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate effect evidence synthesis instances.
    # When multiple useContexts are specified, there is no expectation that all or any of the contexts apply.
    attr_accessor :useContext                     # 0-* [ UsageContext ]
    ##
    # Intended jurisdiction for effect evidence synthesis (if applicable)
    # A legal or geographic region in which the effect evidence synthesis is intended to be used.
    # It may be possible for the effect evidence synthesis to be used in jurisdictions other than those for which it was originally designed or intended.
    attr_accessor :jurisdiction                   # 0-* [ CodeableConcept ]
    ##
    # Use and/or publishing restrictions
    # A copyright statement relating to the effect evidence synthesis and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the effect evidence synthesis.
    attr_accessor :copyright                      # 0-1 markdown
    ##
    # When the effect evidence synthesis was approved by publisher
    # The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.
    # The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.
    attr_accessor :approvalDate                   # 0-1 date
    ##
    # When the effect evidence synthesis was last reviewed
    # The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.
    # If specified, this date follows the original approval date.
    attr_accessor :lastReviewDate                 # 0-1 date
    ##
    # When the effect evidence synthesis is expected to be used
    # The period during which the effect evidence synthesis content was or is planned to be in active use.
    # The effective period for a effect evidence synthesis  determines when the content is applicable for usage and is independent of publication and review dates. For example, a measure intended to be used for the year 2016 might be published in 2015.
    attr_accessor :effectivePeriod                # 0-1 Period
    ##
    # The category of the EffectEvidenceSynthesis, such as Education, Treatment, Assessment, etc.
    # Descriptive topics related to the content of the EffectEvidenceSynthesis. Topics provide a high-level categorization grouping types of EffectEvidenceSynthesiss that can be useful for filtering and searching.
    attr_accessor :topic                          # 0-* [ CodeableConcept ]
    ##
    # Who authored the content
    # An individiual or organization primarily involved in the creation and maintenance of the content.
    attr_accessor :author                         # 0-* [ ContactDetail ]
    ##
    # Who edited the content
    # An individual or organization primarily responsible for internal coherence of the content.
    attr_accessor :editor                         # 0-* [ ContactDetail ]
    ##
    # Who reviewed the content
    # An individual or organization primarily responsible for review of some aspect of the content.
    attr_accessor :reviewer                       # 0-* [ ContactDetail ]
    ##
    # Who endorsed the content
    # An individual or organization responsible for officially endorsing the content for use in some setting.
    attr_accessor :endorser                       # 0-* [ ContactDetail ]
    ##
    # Additional documentation, citations, etc.
    # Related artifacts such as additional documentation, justification, or bibliographic references.
    # Each related artifact is either an attachment, or a reference to another resource, but not both.
    attr_accessor :relatedArtifact                # 0-* [ RelatedArtifact ]
    ##
    # Type of synthesis eg meta-analysis.
    attr_accessor :synthesisType                  # 0-1 CodeableConcept
    ##
    # Type of study eg randomized trial.
    attr_accessor :studyType                      # 0-1 CodeableConcept
    ##
    # What population?
    # A reference to a EvidenceVariable resource that defines the population for the research.
    attr_accessor :population                     # 1-1 Reference(http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
    ##
    # What exposure?
    # A reference to a EvidenceVariable resource that defines the exposure for the research.
    attr_accessor :exposure                       # 1-1 Reference(http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
    ##
    # What comparison exposure?
    # A reference to a EvidenceVariable resource that defines the comparison exposure for the research.
    attr_accessor :exposureAlternative            # 1-1 Reference(http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
    ##
    # What outcome?
    # A reference to a EvidenceVariable resomece that defines the outcome for the research.
    attr_accessor :outcome                        # 1-1 Reference(http://hl7.org/fhir/StructureDefinition/EvidenceVariable)
    ##
    # What sample size was involved?
    # A description of the size of the sample involved in the synthesis.
    attr_accessor :sampleSize                     # 0-1 EffectEvidenceSynthesis::SampleSize
    ##
    # What was the result per exposure?
    # A description of the results for each exposure considered in the effect estimate.
    attr_accessor :resultsByExposure              # 0-* [ EffectEvidenceSynthesis::ResultsByExposure ]
    ##
    # What was the estimated effect
    # The estimated effect of the exposure variant.
    attr_accessor :effectEstimate                 # 0-* [ EffectEvidenceSynthesis::EffectEstimate ]
    ##
    # How certain is the effect
    # A description of the certainty of the effect estimate.
    attr_accessor :certainty                      # 0-* [ EffectEvidenceSynthesis::Certainty ]

    def resourceType
      'EffectEvidenceSynthesis'
    end
  end
end
