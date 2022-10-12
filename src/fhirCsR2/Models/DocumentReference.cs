// <auto-generated />
// Built from: hl7.fhir.r2.core version: 1.0.2
  // Option: "NAMESPACE" = "fhirCsR2"

using System;
using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Serialization;
using fhirCsR2.Serialization;

namespace fhirCsR2.Models
{
  /// <summary>
  /// Relationships that this document has with other document references that already exist.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DocumentReferenceRelatesTo>))]
  public class DocumentReferenceRelatesTo : BackboneElement,  IFhirJsonSerializable {
    /// <summary>
    /// The type of relationship that this document has with anther document.
    /// </summary>
    public string Code { get; set; }
    /// <summary>
    /// Extension container element for Code
    /// </summary>
    public Element _Code { get; set; }
    /// <summary>
    /// The target document of this relationship.
    /// </summary>
    public Reference Target { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      ((fhirCsR2.Models.BackboneElement)this).SerializeJson(writer, options, false);

      if (!string.IsNullOrEmpty(Code))
      {
        writer.WriteString("code", (string)Code!);
      }

      if (_Code != null)
      {
        writer.WritePropertyName("_code");
        _Code.SerializeJson(writer, options);
      }

      if (Target != null)
      {
        writer.WritePropertyName("target");
        Target.SerializeJson(writer, options);
      }

      if (includeStartObject)
      {
        writer.WriteEndObject();
      }
    }
    /// <summary>
    /// Deserialize a JSON property
    /// </summary>
    public new void DeserializeJsonProperty(ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "code":
          Code = reader.GetString();
          break;

        case "_code":
          _Code = new fhirCsR2.Models.Element();
          _Code.DeserializeJson(ref reader, options);
          break;

        case "target":
          Target = new fhirCsR2.Models.Reference();
          Target.DeserializeJson(ref reader, options);
          break;

        default:
          ((fhirCsR2.Models.BackboneElement)this).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Deserialize a JSON object
    /// </summary>
    public new void DeserializeJson(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
      string propertyName;

      while (reader.Read())
      {
        if (reader.TokenType == JsonTokenType.EndObject)
        {
          return;
        }

        if (reader.TokenType == JsonTokenType.PropertyName)
        {
          propertyName = reader.GetString();
          reader.Read();
          this.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }
  }
  /// <summary>
  /// Code Values for the DocumentReference.relatesTo.code field
  /// </summary>
  public static class DocumentReferenceRelatesToCodeCodes {
    public const string REPLACES = "replaces";
    public const string TRANSFORMS = "transforms";
    public const string SIGNS = "signs";
    public const string APPENDS = "appends";
    public static HashSet<string> Values = new HashSet<string>() {
      "replaces",
      "transforms",
      "signs",
      "appends",
    };
  }
  /// <summary>
  /// The document and format referenced. There may be multiple content element repetitions, each with a different format.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DocumentReferenceContent>))]
  public class DocumentReferenceContent : BackboneElement,  IFhirJsonSerializable {
    /// <summary>
    /// The document or url of the document along with critical metadata to prove content has integrity.
    /// </summary>
    public Attachment Attachment { get; set; }
    /// <summary>
    /// An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.
    /// </summary>
    public List<Coding> Format { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      ((fhirCsR2.Models.BackboneElement)this).SerializeJson(writer, options, false);

      if (Attachment != null)
      {
        writer.WritePropertyName("attachment");
        Attachment.SerializeJson(writer, options);
      }

      if ((Format != null) && (Format.Count != 0))
      {
        writer.WritePropertyName("format");
        writer.WriteStartArray();

        foreach (Coding valFormat in Format)
        {
          valFormat.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (includeStartObject)
      {
        writer.WriteEndObject();
      }
    }
    /// <summary>
    /// Deserialize a JSON property
    /// </summary>
    public new void DeserializeJsonProperty(ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "attachment":
          Attachment = new fhirCsR2.Models.Attachment();
          Attachment.DeserializeJson(ref reader, options);
          break;

        case "format":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Format = new List<Coding>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.Coding objFormat = new fhirCsR2.Models.Coding();
            objFormat.DeserializeJson(ref reader, options);
            Format.Add(objFormat);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Format.Count == 0)
          {
            Format = null;
          }

          break;

        default:
          ((fhirCsR2.Models.BackboneElement)this).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Deserialize a JSON object
    /// </summary>
    public new void DeserializeJson(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
      string propertyName;

      while (reader.Read())
      {
        if (reader.TokenType == JsonTokenType.EndObject)
        {
          return;
        }

        if (reader.TokenType == JsonTokenType.PropertyName)
        {
          propertyName = reader.GetString();
          reader.Read();
          this.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }
  }
  /// <summary>
  /// Related identifiers or resources associated with the DocumentReference.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DocumentReferenceContextRelated>))]
  public class DocumentReferenceContextRelated : BackboneElement,  IFhirJsonSerializable {
    /// <summary>
    /// Related identifier to this DocumentReference. If both id and ref are present they shall refer to the same thing.
    /// </summary>
    public Identifier Identifier { get; set; }
    /// <summary>
    /// Related Resource to this DocumentReference. If both id and ref are present they shall refer to the same thing.
    /// </summary>
    public Reference Ref { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      ((fhirCsR2.Models.BackboneElement)this).SerializeJson(writer, options, false);

      if (Identifier != null)
      {
        writer.WritePropertyName("identifier");
        Identifier.SerializeJson(writer, options);
      }

      if (Ref != null)
      {
        writer.WritePropertyName("ref");
        Ref.SerializeJson(writer, options);
      }

      if (includeStartObject)
      {
        writer.WriteEndObject();
      }
    }
    /// <summary>
    /// Deserialize a JSON property
    /// </summary>
    public new void DeserializeJsonProperty(ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "identifier":
          Identifier = new fhirCsR2.Models.Identifier();
          Identifier.DeserializeJson(ref reader, options);
          break;

        case "ref":
          Ref = new fhirCsR2.Models.Reference();
          Ref.DeserializeJson(ref reader, options);
          break;

        default:
          ((fhirCsR2.Models.BackboneElement)this).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Deserialize a JSON object
    /// </summary>
    public new void DeserializeJson(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
      string propertyName;

      while (reader.Read())
      {
        if (reader.TokenType == JsonTokenType.EndObject)
        {
          return;
        }

        if (reader.TokenType == JsonTokenType.PropertyName)
        {
          propertyName = reader.GetString();
          reader.Read();
          this.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }
  }
  /// <summary>
  /// The clinical context in which the document was prepared.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DocumentReferenceContext>))]
  public class DocumentReferenceContext : BackboneElement,  IFhirJsonSerializable {
    /// <summary>
    /// Describes the clinical encounter or type of care that the document content is associated with.
    /// </summary>
    public Reference Encounter { get; set; }
    /// <summary>
    /// This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the typeCode, such as a "History and Physical Report" in which the procedure being documented is necessarily a "History and Physical" act.
    /// </summary>
    public List<CodeableConcept> Event { get; set; }
    /// <summary>
    /// The kind of facility where the patient was seen.
    /// </summary>
    public CodeableConcept FacilityType { get; set; }
    /// <summary>
    /// The time period over which the service that is described by the document was provided.
    /// </summary>
    public Period Period { get; set; }
    /// <summary>
    /// This is an important piece of metadata that providers often rely upon to quickly sort and/or filter out to find specific content.
    /// </summary>
    public CodeableConcept PracticeSetting { get; set; }
    /// <summary>
    /// Related identifiers or resources associated with the DocumentReference.
    /// </summary>
    public List<DocumentReferenceContextRelated> Related { get; set; }
    /// <summary>
    /// The Patient Information as known when the document was published. May be a reference to a version specific, or contained.
    /// </summary>
    public Reference SourcePatientInfo { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      ((fhirCsR2.Models.BackboneElement)this).SerializeJson(writer, options, false);

      if (Encounter != null)
      {
        writer.WritePropertyName("encounter");
        Encounter.SerializeJson(writer, options);
      }

      if ((Event != null) && (Event.Count != 0))
      {
        writer.WritePropertyName("event");
        writer.WriteStartArray();

        foreach (CodeableConcept valEvent in Event)
        {
          valEvent.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (Period != null)
      {
        writer.WritePropertyName("period");
        Period.SerializeJson(writer, options);
      }

      if (FacilityType != null)
      {
        writer.WritePropertyName("facilityType");
        FacilityType.SerializeJson(writer, options);
      }

      if (PracticeSetting != null)
      {
        writer.WritePropertyName("practiceSetting");
        PracticeSetting.SerializeJson(writer, options);
      }

      if (SourcePatientInfo != null)
      {
        writer.WritePropertyName("sourcePatientInfo");
        SourcePatientInfo.SerializeJson(writer, options);
      }

      if ((Related != null) && (Related.Count != 0))
      {
        writer.WritePropertyName("related");
        writer.WriteStartArray();

        foreach (DocumentReferenceContextRelated valRelated in Related)
        {
          valRelated.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (includeStartObject)
      {
        writer.WriteEndObject();
      }
    }
    /// <summary>
    /// Deserialize a JSON property
    /// </summary>
    public new void DeserializeJsonProperty(ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "encounter":
          Encounter = new fhirCsR2.Models.Reference();
          Encounter.DeserializeJson(ref reader, options);
          break;

        case "event":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Event = new List<CodeableConcept>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.CodeableConcept objEvent = new fhirCsR2.Models.CodeableConcept();
            objEvent.DeserializeJson(ref reader, options);
            Event.Add(objEvent);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Event.Count == 0)
          {
            Event = null;
          }

          break;

        case "facilityType":
          FacilityType = new fhirCsR2.Models.CodeableConcept();
          FacilityType.DeserializeJson(ref reader, options);
          break;

        case "period":
          Period = new fhirCsR2.Models.Period();
          Period.DeserializeJson(ref reader, options);
          break;

        case "practiceSetting":
          PracticeSetting = new fhirCsR2.Models.CodeableConcept();
          PracticeSetting.DeserializeJson(ref reader, options);
          break;

        case "related":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Related = new List<DocumentReferenceContextRelated>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.DocumentReferenceContextRelated objRelated = new fhirCsR2.Models.DocumentReferenceContextRelated();
            objRelated.DeserializeJson(ref reader, options);
            Related.Add(objRelated);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Related.Count == 0)
          {
            Related = null;
          }

          break;

        case "sourcePatientInfo":
          SourcePatientInfo = new fhirCsR2.Models.Reference();
          SourcePatientInfo.DeserializeJson(ref reader, options);
          break;

        default:
          ((fhirCsR2.Models.BackboneElement)this).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Deserialize a JSON object
    /// </summary>
    public new void DeserializeJson(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
      string propertyName;

      while (reader.Read())
      {
        if (reader.TokenType == JsonTokenType.EndObject)
        {
          return;
        }

        if (reader.TokenType == JsonTokenType.PropertyName)
        {
          propertyName = reader.GetString();
          reader.Read();
          this.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }
  }
  /// <summary>
  /// A reference to a document .
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DocumentReference>))]
  public class DocumentReference : DomainResource,  IFhirJsonSerializable {
    /// <summary>
    /// Resource Type Name
    /// </summary>
    public override string ResourceType => "DocumentReference";
    /// <summary>
    /// Which person or organization authenticates that this document is valid.
    /// </summary>
    public Reference Authenticator { get; set; }
    /// <summary>
    /// Identifies who is responsible for adding the information to the document.
    /// </summary>
    public List<Reference> Author { get; set; }
    /// <summary>
    /// Helps humans to assess whether the document is of interest when viewing a list of documents.
    /// </summary>
    public CodeableConcept Class { get; set; }
    /// <summary>
    /// The document and format referenced. There may be multiple content element repetitions, each with a different format.
    /// </summary>
    public List<DocumentReferenceContent> Content { get; set; }
    /// <summary>
    /// The clinical context in which the document was prepared.
    /// </summary>
    public DocumentReferenceContext Context { get; set; }
    /// <summary>
    /// When the document was created.
    /// </summary>
    public string Created { get; set; }
    /// <summary>
    /// Extension container element for Created
    /// </summary>
    public Element _Created { get; set; }
    /// <summary>
    /// Identifies the organization or group who is responsible for ongoing maintenance of and access to the document.
    /// </summary>
    public Reference Custodian { get; set; }
    /// <summary>
    /// Helps humans to assess whether the document is of interest.
    /// </summary>
    public string Description { get; set; }
    /// <summary>
    /// Extension container element for Description
    /// </summary>
    public Element _Description { get; set; }
    /// <summary>
    /// The status of the underlying document.
    /// </summary>
    public CodeableConcept DocStatus { get; set; }
    /// <summary>
    /// Other identifiers associated with the document, including version independent identifiers.
    /// </summary>
    public List<Identifier> Identifier { get; set; }
    /// <summary>
    /// When the document reference was created.
    /// </summary>
    public string Indexed { get; set; }
    /// <summary>
    /// Extension container element for Indexed
    /// </summary>
    public Element _Indexed { get; set; }
    /// <summary>
    /// The structure and format of this Id shall be consistent with the specification corresponding to the formatCode attribute. (e.g. for a DICOM standard document a 64 character numeric UID, for an HL7 CDA format a serialization of the CDA Document Id extension and root in the form "oid^extension", where OID is a 64 digits max, and the Id is a 16 UTF-8 char max. If the OID is coded without the extension then the '^' character shall not be included.).
    /// </summary>
    public Identifier MasterIdentifier { get; set; }
    /// <summary>
    /// Relationships that this document has with other document references that already exist.
    /// </summary>
    public List<DocumentReferenceRelatesTo> RelatesTo { get; set; }
    /// <summary>
    /// Use of the Health Care Privacy/Security Classification (HCS) system of security-tag use is recommended.
    /// </summary>
    public List<CodeableConcept> SecurityLabel { get; set; }
    /// <summary>
    /// The status of this document reference.
    /// </summary>
    public string Status { get; set; }
    /// <summary>
    /// Extension container element for Status
    /// </summary>
    public Element _Status { get; set; }
    /// <summary>
    /// Who or what the document is about. The document can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of farm animals, or a set of patients that share a common exposure).
    /// </summary>
    public Reference Subject { get; set; }
    /// <summary>
    /// Specifies the particular kind of document referenced  (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.
    /// </summary>
    public CodeableConcept Type { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      if (!string.IsNullOrEmpty(ResourceType))
      {
        writer.WriteString("resourceType", (string)ResourceType!);
      }


      ((fhirCsR2.Models.DomainResource)this).SerializeJson(writer, options, false);

      if (MasterIdentifier != null)
      {
        writer.WritePropertyName("masterIdentifier");
        MasterIdentifier.SerializeJson(writer, options);
      }

      if ((Identifier != null) && (Identifier.Count != 0))
      {
        writer.WritePropertyName("identifier");
        writer.WriteStartArray();

        foreach (Identifier valIdentifier in Identifier)
        {
          valIdentifier.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (Subject != null)
      {
        writer.WritePropertyName("subject");
        Subject.SerializeJson(writer, options);
      }

      if (Type != null)
      {
        writer.WritePropertyName("type");
        Type.SerializeJson(writer, options);
      }

      if (Class != null)
      {
        writer.WritePropertyName("class");
        Class.SerializeJson(writer, options);
      }

      if ((Author != null) && (Author.Count != 0))
      {
        writer.WritePropertyName("author");
        writer.WriteStartArray();

        foreach (Reference valAuthor in Author)
        {
          valAuthor.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (Custodian != null)
      {
        writer.WritePropertyName("custodian");
        Custodian.SerializeJson(writer, options);
      }

      if (Authenticator != null)
      {
        writer.WritePropertyName("authenticator");
        Authenticator.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(Created))
      {
        writer.WriteString("created", (string)Created!);
      }

      if (_Created != null)
      {
        writer.WritePropertyName("_created");
        _Created.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(Indexed))
      {
        writer.WriteString("indexed", (string)Indexed!);
      }

      if (_Indexed != null)
      {
        writer.WritePropertyName("_indexed");
        _Indexed.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(Status))
      {
        writer.WriteString("status", (string)Status!);
      }

      if (_Status != null)
      {
        writer.WritePropertyName("_status");
        _Status.SerializeJson(writer, options);
      }

      if (DocStatus != null)
      {
        writer.WritePropertyName("docStatus");
        DocStatus.SerializeJson(writer, options);
      }

      if ((RelatesTo != null) && (RelatesTo.Count != 0))
      {
        writer.WritePropertyName("relatesTo");
        writer.WriteStartArray();

        foreach (DocumentReferenceRelatesTo valRelatesTo in RelatesTo)
        {
          valRelatesTo.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (!string.IsNullOrEmpty(Description))
      {
        writer.WriteString("description", (string)Description!);
      }

      if (_Description != null)
      {
        writer.WritePropertyName("_description");
        _Description.SerializeJson(writer, options);
      }

      if ((SecurityLabel != null) && (SecurityLabel.Count != 0))
      {
        writer.WritePropertyName("securityLabel");
        writer.WriteStartArray();

        foreach (CodeableConcept valSecurityLabel in SecurityLabel)
        {
          valSecurityLabel.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if ((Content != null) && (Content.Count != 0))
      {
        writer.WritePropertyName("content");
        writer.WriteStartArray();

        foreach (DocumentReferenceContent valContent in Content)
        {
          valContent.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (Context != null)
      {
        writer.WritePropertyName("context");
        Context.SerializeJson(writer, options);
      }

      if (includeStartObject)
      {
        writer.WriteEndObject();
      }
    }
    /// <summary>
    /// Deserialize a JSON property
    /// </summary>
    public new void DeserializeJsonProperty(ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "authenticator":
          Authenticator = new fhirCsR2.Models.Reference();
          Authenticator.DeserializeJson(ref reader, options);
          break;

        case "author":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Author = new List<Reference>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.Reference objAuthor = new fhirCsR2.Models.Reference();
            objAuthor.DeserializeJson(ref reader, options);
            Author.Add(objAuthor);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Author.Count == 0)
          {
            Author = null;
          }

          break;

        case "class":
          Class = new fhirCsR2.Models.CodeableConcept();
          Class.DeserializeJson(ref reader, options);
          break;

        case "content":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Content = new List<DocumentReferenceContent>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.DocumentReferenceContent objContent = new fhirCsR2.Models.DocumentReferenceContent();
            objContent.DeserializeJson(ref reader, options);
            Content.Add(objContent);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Content.Count == 0)
          {
            Content = null;
          }

          break;

        case "context":
          Context = new fhirCsR2.Models.DocumentReferenceContext();
          Context.DeserializeJson(ref reader, options);
          break;

        case "created":
          Created = reader.GetString();
          break;

        case "_created":
          _Created = new fhirCsR2.Models.Element();
          _Created.DeserializeJson(ref reader, options);
          break;

        case "custodian":
          Custodian = new fhirCsR2.Models.Reference();
          Custodian.DeserializeJson(ref reader, options);
          break;

        case "description":
          Description = reader.GetString();
          break;

        case "_description":
          _Description = new fhirCsR2.Models.Element();
          _Description.DeserializeJson(ref reader, options);
          break;

        case "docStatus":
          DocStatus = new fhirCsR2.Models.CodeableConcept();
          DocStatus.DeserializeJson(ref reader, options);
          break;

        case "identifier":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          Identifier = new List<Identifier>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.Identifier objIdentifier = new fhirCsR2.Models.Identifier();
            objIdentifier.DeserializeJson(ref reader, options);
            Identifier.Add(objIdentifier);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (Identifier.Count == 0)
          {
            Identifier = null;
          }

          break;

        case "indexed":
          Indexed = reader.GetString();
          break;

        case "_indexed":
          _Indexed = new fhirCsR2.Models.Element();
          _Indexed.DeserializeJson(ref reader, options);
          break;

        case "masterIdentifier":
          MasterIdentifier = new fhirCsR2.Models.Identifier();
          MasterIdentifier.DeserializeJson(ref reader, options);
          break;

        case "relatesTo":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          RelatesTo = new List<DocumentReferenceRelatesTo>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.DocumentReferenceRelatesTo objRelatesTo = new fhirCsR2.Models.DocumentReferenceRelatesTo();
            objRelatesTo.DeserializeJson(ref reader, options);
            RelatesTo.Add(objRelatesTo);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (RelatesTo.Count == 0)
          {
            RelatesTo = null;
          }

          break;

        case "securityLabel":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          SecurityLabel = new List<CodeableConcept>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.CodeableConcept objSecurityLabel = new fhirCsR2.Models.CodeableConcept();
            objSecurityLabel.DeserializeJson(ref reader, options);
            SecurityLabel.Add(objSecurityLabel);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (SecurityLabel.Count == 0)
          {
            SecurityLabel = null;
          }

          break;

        case "status":
          Status = reader.GetString();
          break;

        case "_status":
          _Status = new fhirCsR2.Models.Element();
          _Status.DeserializeJson(ref reader, options);
          break;

        case "subject":
          Subject = new fhirCsR2.Models.Reference();
          Subject.DeserializeJson(ref reader, options);
          break;

        case "type":
          Type = new fhirCsR2.Models.CodeableConcept();
          Type.DeserializeJson(ref reader, options);
          break;

        default:
          ((fhirCsR2.Models.DomainResource)this).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Deserialize a JSON object
    /// </summary>
    public new void DeserializeJson(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
      string propertyName;

      while (reader.Read())
      {
        if (reader.TokenType == JsonTokenType.EndObject)
        {
          return;
        }

        if (reader.TokenType == JsonTokenType.PropertyName)
        {
          propertyName = reader.GetString();
          reader.Read();
          this.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }
  }
  /// <summary>
  /// Code Values for the DocumentReference.status field
  /// </summary>
  public static class DocumentReferenceStatusCodes {
    public const string CURRENT = "current";
    public const string SUPERSEDED = "superseded";
    public const string ENTERED_IN_ERROR = "entered-in-error";
    public static HashSet<string> Values = new HashSet<string>() {
      "current",
      "superseded",
      "entered-in-error",
    };
  }
}
