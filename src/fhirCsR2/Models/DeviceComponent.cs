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
  /// Describes the production specification such as component revision, serial number, etc.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DeviceComponentProductionSpecification>))]
  public class DeviceComponentProductionSpecification : BackboneElement,  IFhirJsonSerializable {
    /// <summary>
    /// Describes the internal component unique identification. This is a provision for manufacture specific standard components using a private OID. 11073-10101 has a partition for private OID semantic that the manufacture can make use of.
    /// </summary>
    public Identifier ComponentId { get; set; }
    /// <summary>
    /// Describes the printable string defining the component.
    /// </summary>
    public string ProductionSpec { get; set; }
    /// <summary>
    /// Extension container element for ProductionSpec
    /// </summary>
    public Element _ProductionSpec { get; set; }
    /// <summary>
    /// Describes the specification type, such as, serial number, part number, hardware revision, software revision, etc.
    /// </summary>
    public CodeableConcept SpecType { get; set; }
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

      if (SpecType != null)
      {
        writer.WritePropertyName("specType");
        SpecType.SerializeJson(writer, options);
      }

      if (ComponentId != null)
      {
        writer.WritePropertyName("componentId");
        ComponentId.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(ProductionSpec))
      {
        writer.WriteString("productionSpec", (string)ProductionSpec!);
      }

      if (_ProductionSpec != null)
      {
        writer.WritePropertyName("_productionSpec");
        _ProductionSpec.SerializeJson(writer, options);
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
        case "componentId":
          ComponentId = new fhirCsR2.Models.Identifier();
          ComponentId.DeserializeJson(ref reader, options);
          break;

        case "productionSpec":
          ProductionSpec = reader.GetString();
          break;

        case "_productionSpec":
          _ProductionSpec = new fhirCsR2.Models.Element();
          _ProductionSpec.DeserializeJson(ref reader, options);
          break;

        case "specType":
          SpecType = new fhirCsR2.Models.CodeableConcept();
          SpecType.DeserializeJson(ref reader, options);
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
  /// Describes the characteristics, operational status and capabilities of a medical-related component of a medical device.
  /// </summary>
  [JsonConverter(typeof(fhirCsR2.Serialization.JsonStreamComponentConverter<DeviceComponent>))]
  public class DeviceComponent : DomainResource,  IFhirJsonSerializable {
    /// <summary>
    /// Resource Type Name
    /// </summary>
    public override string ResourceType => "DeviceComponent";
    /// <summary>
    /// Describes the local assigned unique identification by the software. For example: handle ID.
    /// </summary>
    public Identifier Identifier { get; set; }
    /// <summary>
    /// Describes the language code for the human-readable text string produced by the device. This language code will follow the IETF language tag. Example: en-US.
    /// </summary>
    public CodeableConcept LanguageCode { get; set; }
    /// <summary>
    /// Describes the timestamp for the most recent system change which includes device configuration or setting change.
    /// </summary>
    public string LastSystemChange { get; set; }
    /// <summary>
    /// Extension container element for LastSystemChange
    /// </summary>
    public Element _LastSystemChange { get; set; }
    /// <summary>
    /// Describes the physical principle of the measurement. For example: thermal, chemical, acoustical, etc.
    /// </summary>
    public string MeasurementPrinciple { get; set; }
    /// <summary>
    /// Extension container element for MeasurementPrinciple
    /// </summary>
    public Element _MeasurementPrinciple { get; set; }
    /// <summary>
    /// Indicates current operational status of the device. For example: On, Off, Standby, etc.
    /// </summary>
    public List<CodeableConcept> OperationalStatus { get; set; }
    /// <summary>
    /// Describes the parameter group supported by the current device component that is based on some nomenclature, e.g. cardiovascular.
    /// </summary>
    public CodeableConcept ParameterGroup { get; set; }
    /// <summary>
    /// Describes the link to the parent resource. For example: Channel is linked to its VMD parent.
    /// </summary>
    public Reference Parent { get; set; }
    /// <summary>
    /// Describes the production specification such as component revision, serial number, etc.
    /// </summary>
    public List<DeviceComponentProductionSpecification> ProductionSpecification { get; set; }
    /// <summary>
    /// Describes the link to the source Device that contains administrative device information such as manufacture, serial number, etc.
    /// </summary>
    public Reference Source { get; set; }
    /// <summary>
    /// Describes the specific component type as defined in the object-oriented or metric nomenclature partition.
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

      if (Type != null)
      {
        writer.WritePropertyName("type");
        Type.SerializeJson(writer, options);
      }

      if (Identifier != null)
      {
        writer.WritePropertyName("identifier");
        Identifier.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(LastSystemChange))
      {
        writer.WriteString("lastSystemChange", (string)LastSystemChange!);
      }

      if (_LastSystemChange != null)
      {
        writer.WritePropertyName("_lastSystemChange");
        _LastSystemChange.SerializeJson(writer, options);
      }

      if (Source != null)
      {
        writer.WritePropertyName("source");
        Source.SerializeJson(writer, options);
      }

      if (Parent != null)
      {
        writer.WritePropertyName("parent");
        Parent.SerializeJson(writer, options);
      }

      if ((OperationalStatus != null) && (OperationalStatus.Count != 0))
      {
        writer.WritePropertyName("operationalStatus");
        writer.WriteStartArray();

        foreach (CodeableConcept valOperationalStatus in OperationalStatus)
        {
          valOperationalStatus.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (ParameterGroup != null)
      {
        writer.WritePropertyName("parameterGroup");
        ParameterGroup.SerializeJson(writer, options);
      }

      if (!string.IsNullOrEmpty(MeasurementPrinciple))
      {
        writer.WriteString("measurementPrinciple", (string)MeasurementPrinciple!);
      }

      if (_MeasurementPrinciple != null)
      {
        writer.WritePropertyName("_measurementPrinciple");
        _MeasurementPrinciple.SerializeJson(writer, options);
      }

      if ((ProductionSpecification != null) && (ProductionSpecification.Count != 0))
      {
        writer.WritePropertyName("productionSpecification");
        writer.WriteStartArray();

        foreach (DeviceComponentProductionSpecification valProductionSpecification in ProductionSpecification)
        {
          valProductionSpecification.SerializeJson(writer, options, true);
        }

        writer.WriteEndArray();
      }

      if (LanguageCode != null)
      {
        writer.WritePropertyName("languageCode");
        LanguageCode.SerializeJson(writer, options);
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

        case "languageCode":
          LanguageCode = new fhirCsR2.Models.CodeableConcept();
          LanguageCode.DeserializeJson(ref reader, options);
          break;

        case "lastSystemChange":
          LastSystemChange = reader.GetString();
          break;

        case "_lastSystemChange":
          _LastSystemChange = new fhirCsR2.Models.Element();
          _LastSystemChange.DeserializeJson(ref reader, options);
          break;

        case "measurementPrinciple":
          MeasurementPrinciple = reader.GetString();
          break;

        case "_measurementPrinciple":
          _MeasurementPrinciple = new fhirCsR2.Models.Element();
          _MeasurementPrinciple.DeserializeJson(ref reader, options);
          break;

        case "operationalStatus":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          OperationalStatus = new List<CodeableConcept>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.CodeableConcept objOperationalStatus = new fhirCsR2.Models.CodeableConcept();
            objOperationalStatus.DeserializeJson(ref reader, options);
            OperationalStatus.Add(objOperationalStatus);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (OperationalStatus.Count == 0)
          {
            OperationalStatus = null;
          }

          break;

        case "parameterGroup":
          ParameterGroup = new fhirCsR2.Models.CodeableConcept();
          ParameterGroup.DeserializeJson(ref reader, options);
          break;

        case "parent":
          Parent = new fhirCsR2.Models.Reference();
          Parent.DeserializeJson(ref reader, options);
          break;

        case "productionSpecification":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          ProductionSpecification = new List<DeviceComponentProductionSpecification>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            fhirCsR2.Models.DeviceComponentProductionSpecification objProductionSpecification = new fhirCsR2.Models.DeviceComponentProductionSpecification();
            objProductionSpecification.DeserializeJson(ref reader, options);
            ProductionSpecification.Add(objProductionSpecification);

            if (!reader.Read())
            {
              throw new JsonException();
            }
          }

          if (ProductionSpecification.Count == 0)
          {
            ProductionSpecification = null;
          }

          break;

        case "source":
          Source = new fhirCsR2.Models.Reference();
          Source.DeserializeJson(ref reader, options);
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
  /// Code Values for the DeviceComponent.measurementPrinciple field
  /// </summary>
  public static class DeviceComponentMeasurementPrincipleCodes {
    public const string OTHER = "other";
    public const string CHEMICAL = "chemical";
    public const string ELECTRICAL = "electrical";
    public const string IMPEDANCE = "impedance";
    public const string NUCLEAR = "nuclear";
    public const string OPTICAL = "optical";
    public const string THERMAL = "thermal";
    public const string BIOLOGICAL = "biological";
    public const string MECHANICAL = "mechanical";
    public const string ACOUSTICAL = "acoustical";
    public const string MANUAL = "manual";
    public static HashSet<string> Values = new HashSet<string>() {
      "other",
      "chemical",
      "electrical",
      "impedance",
      "nuclear",
      "optical",
      "thermal",
      "biological",
      "mechanical",
      "acoustical",
      "manual",
    };
  }
}
