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
  /// A technical identifier - identifies some entity uniquely and unambiguously.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<Identifier>))]
  public class Identifier : Element,  IFhirJsonSerializable {
    /// <summary>
    /// Organization that issued/manages the identifier.
    /// </summary>
    public Reference Assigner { get; set; }
    /// <summary>
    /// Time period during which identifier is/was valid for use.
    /// </summary>
    public Period Period { get; set; }
    /// <summary>
    /// There are many sequences of identifiers.  To perform matching, we need to know what sequence we're dealing with. The system identifies a particular sequence or set of unique identifiers.
    /// </summary>
    public string System { get; set; }
    /// <summary>
    /// Extension container element for System
    /// </summary>
    public Element _System { get; set; }
    /// <summary>
    /// Allows users to make use of identifiers when the identifier system is not known.
    /// </summary>
    public CodeableConcept Type { get; set; }
    /// <summary>
    /// Allows the appropriate identifier for a particular context of use to be selected from among a set of identifiers.
    /// </summary>
    public string Use { get; set; }
    /// <summary>
    /// Extension container element for Use
    /// </summary>
    public Element _Use { get; set; }
    /// <summary>
    /// The portion of the identifier typically displayed to the user and which is unique within the context of the system.
    /// </summary>
    public string Value { get; set; }
    /// <summary>
    /// Extension container element for Value
    /// </summary>
    public Element _Value { get; set; }
    /// <summary>
    /// Serialize to a JSON object
    /// </summary>
    public new void SerializeJson(Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject)
      {
        writer.WriteStartObject();
      }
      ((fhirCsR2.Models.Element)this).SerializeJson(writer, options, false);

      if (!string.IsNullOrEmpty(Use))
      {
        writer.WriteString("use", (string)Use!);
      }

      if (_Use != null)
      {
        writer.WritePropertyName("_use");
        _Use.SerializeJson(writer, options);
      }

      if (Type != null)
      {
        writer.WritePropertyName("type");
        Type.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(System))
      {
        writer.WriteString("system", (string)System!);
      }

      if (_System != null)
      {
        writer.WritePropertyName("_system");
        _System.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(Value))
      {
        writer.WriteString("value", (string)Value!);
      }

      if (_Value != null)
      {
        writer.WritePropertyName("_value");
        _Value.SerializeJson(writer, options);
      }

      if (Period != null)
      {
        writer.WritePropertyName("period");
        Period.SerializeJson(writer, options);
      }

      if (Assigner != null)
      {
        writer.WritePropertyName("assigner");
        Assigner.SerializeJson(writer, options);
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
        case "assigner":
          Assigner = new fhirCsR2.Models.Reference();
          Assigner.DeserializeJson(ref reader, options);
          break;

        case "period":
          Period = new fhirCsR2.Models.Period();
          Period.DeserializeJson(ref reader, options);
          break;

        case "system":
          System = reader.GetString();
          break;

        case "_system":
          _System = new fhirCsR2.Models.Element();
          _System.DeserializeJson(ref reader, options);
          break;

        case "type":
          Type = new fhirCsR2.Models.CodeableConcept();
          Type.DeserializeJson(ref reader, options);
          break;

        case "use":
          Use = reader.GetString();
          break;

        case "_use":
          _Use = new fhirCsR2.Models.Element();
          _Use.DeserializeJson(ref reader, options);
          break;

        case "value":
          Value = reader.GetString();
          break;

        case "_value":
          _Value = new fhirCsR2.Models.Element();
          _Value.DeserializeJson(ref reader, options);
          break;

        default:
          ((fhirCsR2.Models.Element)this).DeserializeJsonProperty(ref reader, options, propertyName);
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
  /// Code Values for the Identifier.use field
  /// </summary>
  public static class IdentifierUseCodes {
    public const string USUAL = "usual";
    public const string OFFICIAL = "official";
    public const string TEMP = "temp";
    public const string SECONDARY = "secondary";
    public static HashSet<string> Values = new HashSet<string>() {
      "usual",
      "official",
      "temp",
      "secondary",
    };
  }
}
