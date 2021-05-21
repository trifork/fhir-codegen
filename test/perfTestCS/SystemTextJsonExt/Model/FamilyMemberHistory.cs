// <auto-generated/>
// Contents of: hl7.fhir.r4.core version: 4.0.1

using System;
using System.Buffers;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using Hl7.Fhir.Model;
using Hl7.Fhir.Model.JsonExtensions;
using Hl7.Fhir.Serialization;

/*
  Copyright (c) 2011+, HL7, Inc.
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification, 
  are permitted provided that the following conditions are met:
  
   * Redistributions of source code must retain the above copyright notice, this 
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to 
     endorse or promote products derived from this software without specific 
     prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
  POSSIBILITY OF SUCH DAMAGE.
  
*/

namespace Hl7.Fhir.Model.JsonExtensions
{
  /// <summary>
  /// JSON Serialization Extensions for FamilyMemberHistory
  /// </summary>
  public static class FamilyMemberHistoryJsonExtensions
  {
    /// <summary>
    /// Serialize a FHIR FamilyMemberHistory into JSON
    /// </summary>
    public static void SerializeJson(this FamilyMemberHistory current, Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject) { writer.WriteStartObject(); }
      writer.WriteString("resourceType","FamilyMemberHistory");
      // Complex: FamilyMemberHistory, Export: FamilyMemberHistory, Base: DomainResource (DomainResource)
      ((Hl7.Fhir.Model.DomainResource)current).SerializeJson(writer, options, false);

      if ((current.Identifier != null) && (current.Identifier.Count != 0))
      {
        writer.WritePropertyName("identifier");
        writer.WriteStartArray();
        foreach (Identifier val in current.Identifier)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if ((current.InstantiatesCanonicalElement != null) && (current.InstantiatesCanonicalElement.Count != 0))
      {
        writer.WritePropertyName("instantiatesCanonical");
        writer.WriteStartArray();
        foreach (Canonical val in current.InstantiatesCanonicalElement)
        {
          writer.WriteStringValue(val.Value);
        }
        writer.WriteEndArray();
      }

      if ((current.InstantiatesUriElement != null) && (current.InstantiatesUriElement.Count != 0))
      {
        writer.WritePropertyName("instantiatesUri");
        writer.WriteStartArray();
        foreach (FhirUri val in current.InstantiatesUriElement)
        {
          writer.WriteStringValue(val.Value);
        }
        writer.WriteEndArray();
      }

      writer.WriteString("status",Hl7.Fhir.Utility.EnumUtility.GetLiteral(current.StatusElement.Value));

      if (current.DataAbsentReason != null)
      {
        writer.WritePropertyName("dataAbsentReason");
        current.DataAbsentReason.SerializeJson(writer, options);
      }

      writer.WritePropertyName("patient");
      current.Patient.SerializeJson(writer, options);

      if ((current.DateElement != null) && (current.DateElement.Value != null))
      {
        writer.WriteString("date",current.DateElement.Value);
      }

      if ((current.NameElement != null) && (current.NameElement.Value != null))
      {
        writer.WriteString("name",current.NameElement.Value);
      }

      writer.WritePropertyName("relationship");
      current.Relationship.SerializeJson(writer, options);

      if (current.Sex != null)
      {
        writer.WritePropertyName("sex");
        current.Sex.SerializeJson(writer, options);
      }

      if (current.Born != null)
      {
        switch (current.Born)
        {
          case Period v_Period:
            writer.WritePropertyName("bornPeriod");
            v_Period.SerializeJson(writer, options);
            break;
          case Date v_Date:
            writer.WriteString("bornDate",v_Date.Value);
            break;
          case FhirString v_FhirString:
            writer.WriteString("bornString",v_FhirString.Value);
            break;
        }
      }
      if (current.Age != null)
      {
        switch (current.Age)
        {
          case Age v_Age:
            writer.WritePropertyName("ageAge");
            v_Age.SerializeJson(writer, options);
            break;
          case Range v_Range:
            writer.WritePropertyName("ageRange");
            v_Range.SerializeJson(writer, options);
            break;
          case FhirString v_FhirString:
            writer.WriteString("ageString",v_FhirString.Value);
            break;
        }
      }
      if ((current.EstimatedAgeElement != null) && (current.EstimatedAgeElement.Value != null))
      {
        writer.WriteBoolean("estimatedAge",(bool)current.EstimatedAgeElement.Value);
      }

      if (current.Deceased != null)
      {
        switch (current.Deceased)
        {
          case FhirBoolean v_FhirBoolean:
            writer.WriteBoolean("deceasedBoolean", (bool)v_FhirBoolean.Value);
            break;
          case Age v_Age:
            writer.WritePropertyName("deceasedAge");
            v_Age.SerializeJson(writer, options);
            break;
          case Range v_Range:
            writer.WritePropertyName("deceasedRange");
            v_Range.SerializeJson(writer, options);
            break;
          case Date v_Date:
            writer.WriteString("deceasedDate",v_Date.Value);
            break;
          case FhirString v_FhirString:
            writer.WriteString("deceasedString",v_FhirString.Value);
            break;
        }
      }
      if ((current.ReasonCode != null) && (current.ReasonCode.Count != 0))
      {
        writer.WritePropertyName("reasonCode");
        writer.WriteStartArray();
        foreach (CodeableConcept val in current.ReasonCode)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if ((current.ReasonReference != null) && (current.ReasonReference.Count != 0))
      {
        writer.WritePropertyName("reasonReference");
        writer.WriteStartArray();
        foreach (ResourceReference val in current.ReasonReference)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if ((current.Note != null) && (current.Note.Count != 0))
      {
        writer.WritePropertyName("note");
        writer.WriteStartArray();
        foreach (Annotation val in current.Note)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if ((current.Condition != null) && (current.Condition.Count != 0))
      {
        writer.WritePropertyName("condition");
        writer.WriteStartArray();
        foreach (FamilyMemberHistory.ConditionComponent val in current.Condition)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if (includeStartObject) { writer.WriteEndObject(); }
    }

    /// <summary>
    /// Deserialize JSON into a FHIR FamilyMemberHistory
    /// </summary>
    public static void DeserializeJson(this FamilyMemberHistory current, ref Utf8JsonReader reader, JsonSerializerOptions options)
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
          current.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }

    /// <summary>
    /// Deserialize JSON into a FHIR FamilyMemberHistory
    /// </summary>
    public static void DeserializeJsonProperty(this FamilyMemberHistory current, ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "identifier":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.Identifier = new List<Identifier>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.Identifier v_Identifier = new Hl7.Fhir.Model.Identifier();
            v_Identifier.DeserializeJson(ref reader, options);
            current.Identifier.Add(v_Identifier);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.Identifier.Count == 0)
          {
            current.Identifier = null;
          }
          break;

        case "instantiatesCanonical":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.InstantiatesCanonicalElement = new List<Canonical>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            current.InstantiatesCanonicalElement.Add(new Canonical(reader.GetString()));

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.InstantiatesCanonicalElement.Count == 0)
          {
            current.InstantiatesCanonicalElement = null;
          }
          break;

        case "_instantiatesCanonical":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          int i_instantiatesCanonical = 0;

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            ((Hl7.Fhir.Model.Element)current.InstantiatesCanonicalElement[i_instantiatesCanonical++]).DeserializeJson(ref reader, options);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }
          break;

        case "instantiatesUri":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.InstantiatesUriElement = new List<FhirUri>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            current.InstantiatesUriElement.Add(new FhirUri(reader.GetString()));

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.InstantiatesUriElement.Count == 0)
          {
            current.InstantiatesUriElement = null;
          }
          break;

        case "status":
          current.StatusElement =new Code<Hl7.Fhir.Model.FamilyMemberHistory.FamilyHistoryStatus>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<Hl7.Fhir.Model.FamilyMemberHistory.FamilyHistoryStatus>(reader.GetString()));
          break;

        case "dataAbsentReason":
          current.DataAbsentReason = new Hl7.Fhir.Model.CodeableConcept();
          current.DataAbsentReason.DeserializeJson(ref reader, options);
          break;

        case "patient":
          current.Patient = new Hl7.Fhir.Model.ResourceReference();
          current.Patient.DeserializeJson(ref reader, options);
          break;

        case "date":
          current.DateElement = new FhirDateTime(reader.GetString());
          break;

        case "name":
          current.NameElement = new FhirString(reader.GetString());
          break;

        case "relationship":
          current.Relationship = new Hl7.Fhir.Model.CodeableConcept();
          current.Relationship.DeserializeJson(ref reader, options);
          break;

        case "sex":
          current.Sex = new Hl7.Fhir.Model.CodeableConcept();
          current.Sex.DeserializeJson(ref reader, options);
          break;

        case "bornPeriod":
          current.Born = new Hl7.Fhir.Model.Period();
          current.Born.DeserializeJson(ref reader, options);
          break;

        case "bornDate":
          current.Born = new Date(reader.GetString());
          break;

        case "bornString":
          current.Born = new FhirString(reader.GetString());
          break;

        case "ageAge":
          current.Age = new Hl7.Fhir.Model.Age();
          current.Age.DeserializeJson(ref reader, options);
          break;

        case "ageRange":
          current.Age = new Hl7.Fhir.Model.Range();
          current.Age.DeserializeJson(ref reader, options);
          break;

        case "ageString":
          current.Age = new FhirString(reader.GetString());
          break;

        case "estimatedAge":
          current.EstimatedAgeElement = new FhirBoolean(reader.GetBoolean());
          break;

        case "deceasedBoolean":
          current.Deceased = new FhirBoolean(reader.GetBoolean());
          break;

        case "deceasedAge":
          current.Deceased = new Hl7.Fhir.Model.Age();
          current.Deceased.DeserializeJson(ref reader, options);
          break;

        case "deceasedRange":
          current.Deceased = new Hl7.Fhir.Model.Range();
          current.Deceased.DeserializeJson(ref reader, options);
          break;

        case "deceasedDate":
          current.Deceased = new Date(reader.GetString());
          break;

        case "deceasedString":
          current.Deceased = new FhirString(reader.GetString());
          break;

        case "reasonCode":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.ReasonCode = new List<CodeableConcept>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.CodeableConcept v_ReasonCode = new Hl7.Fhir.Model.CodeableConcept();
            v_ReasonCode.DeserializeJson(ref reader, options);
            current.ReasonCode.Add(v_ReasonCode);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.ReasonCode.Count == 0)
          {
            current.ReasonCode = null;
          }
          break;

        case "reasonReference":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.ReasonReference = new List<ResourceReference>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.ResourceReference v_ReasonReference = new Hl7.Fhir.Model.ResourceReference();
            v_ReasonReference.DeserializeJson(ref reader, options);
            current.ReasonReference.Add(v_ReasonReference);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.ReasonReference.Count == 0)
          {
            current.ReasonReference = null;
          }
          break;

        case "note":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.Note = new List<Annotation>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.Annotation v_Note = new Hl7.Fhir.Model.Annotation();
            v_Note.DeserializeJson(ref reader, options);
            current.Note.Add(v_Note);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.Note.Count == 0)
          {
            current.Note = null;
          }
          break;

        case "condition":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.Condition = new List<FamilyMemberHistory.ConditionComponent>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.FamilyMemberHistory.ConditionComponent v_Condition = new Hl7.Fhir.Model.FamilyMemberHistory.ConditionComponent();
            v_Condition.DeserializeJson(ref reader, options);
            current.Condition.Add(v_Condition);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.Condition.Count == 0)
          {
            current.Condition = null;
          }
          break;

        // Complex: FamilyMemberHistory, Export: FamilyMemberHistory, Base: DomainResource
        default:
          ((Hl7.Fhir.Model.DomainResource)current).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Serialize a FHIR FamilyMemberHistory#Condition into JSON
    /// </summary>
    public static void SerializeJson(this FamilyMemberHistory.ConditionComponent current, Utf8JsonWriter writer, JsonSerializerOptions options, bool includeStartObject = true)
    {
      if (includeStartObject) { writer.WriteStartObject(); }
      // Component: FamilyMemberHistory#Condition, Export: ConditionComponent, Base: BackboneElement (BackboneElement)
      ((Hl7.Fhir.Model.BackboneElement)current).SerializeJson(writer, options, false);

      writer.WritePropertyName("code");
      current.Code.SerializeJson(writer, options);

      if (current.Outcome != null)
      {
        writer.WritePropertyName("outcome");
        current.Outcome.SerializeJson(writer, options);
      }

      if ((current.ContributedToDeathElement != null) && (current.ContributedToDeathElement.Value != null))
      {
        writer.WriteBoolean("contributedToDeath",(bool)current.ContributedToDeathElement.Value);
      }

      if (current.Onset != null)
      {
        switch (current.Onset)
        {
          case Age v_Age:
            writer.WritePropertyName("onsetAge");
            v_Age.SerializeJson(writer, options);
            break;
          case Range v_Range:
            writer.WritePropertyName("onsetRange");
            v_Range.SerializeJson(writer, options);
            break;
          case Period v_Period:
            writer.WritePropertyName("onsetPeriod");
            v_Period.SerializeJson(writer, options);
            break;
          case FhirString v_FhirString:
            writer.WriteString("onsetString",v_FhirString.Value);
            break;
        }
      }
      if ((current.Note != null) && (current.Note.Count != 0))
      {
        writer.WritePropertyName("note");
        writer.WriteStartArray();
        foreach (Annotation val in current.Note)
        {
          val.SerializeJson(writer, options, true);
        }
        writer.WriteEndArray();
      }

      if (includeStartObject) { writer.WriteEndObject(); }
    }

    /// <summary>
    /// Deserialize JSON into a FHIR FamilyMemberHistory#Condition
    /// </summary>
    public static void DeserializeJson(this FamilyMemberHistory.ConditionComponent current, ref Utf8JsonReader reader, JsonSerializerOptions options)
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
          current.DeserializeJsonProperty(ref reader, options, propertyName);
        }
      }

      throw new JsonException();
    }

    /// <summary>
    /// Deserialize JSON into a FHIR FamilyMemberHistory#Condition
    /// </summary>
    public static void DeserializeJsonProperty(this FamilyMemberHistory.ConditionComponent current, ref Utf8JsonReader reader, JsonSerializerOptions options, string propertyName)
    {
      switch (propertyName)
      {
        case "code":
          current.Code = new Hl7.Fhir.Model.CodeableConcept();
          current.Code.DeserializeJson(ref reader, options);
          break;

        case "outcome":
          current.Outcome = new Hl7.Fhir.Model.CodeableConcept();
          current.Outcome.DeserializeJson(ref reader, options);
          break;

        case "contributedToDeath":
          current.ContributedToDeathElement = new FhirBoolean(reader.GetBoolean());
          break;

        case "onsetAge":
          current.Onset = new Hl7.Fhir.Model.Age();
          current.Onset.DeserializeJson(ref reader, options);
          break;

        case "onsetRange":
          current.Onset = new Hl7.Fhir.Model.Range();
          current.Onset.DeserializeJson(ref reader, options);
          break;

        case "onsetPeriod":
          current.Onset = new Hl7.Fhir.Model.Period();
          current.Onset.DeserializeJson(ref reader, options);
          break;

        case "onsetString":
          current.Onset = new FhirString(reader.GetString());
          break;

        case "note":
          if ((reader.TokenType != JsonTokenType.StartArray) || (!reader.Read()))
          {
            throw new JsonException();
          }

          current.Note = new List<Annotation>();

          while (reader.TokenType != JsonTokenType.EndArray)
          {
            Hl7.Fhir.Model.Annotation v_Note = new Hl7.Fhir.Model.Annotation();
            v_Note.DeserializeJson(ref reader, options);
            current.Note.Add(v_Note);

            if (!reader.Read())
            {
              throw new JsonException();
            }
            if (reader.TokenType == JsonTokenType.EndObject) { reader.Read(); }
          }

          if (current.Note.Count == 0)
          {
            current.Note = null;
          }
          break;

        // Complex: condition, Export: ConditionComponent, Base: BackboneElement
        default:
          ((Hl7.Fhir.Model.BackboneElement)current).DeserializeJsonProperty(ref reader, options, propertyName);
          break;
      }
    }

    /// <summary>
    /// Resource converter to support Sytem.Text.Json interop.
    /// </summary>
    public class FamilyMemberHistoryJsonConverter : JsonConverter<FamilyMemberHistory>
    {
      /// <summary>
      /// Determines whether the specified type can be converted.
      /// </summary>
      public override bool CanConvert(Type objectType) =>
        typeof(FamilyMemberHistory).IsAssignableFrom(objectType);

      /// <summary>
      /// Writes a specified value as JSON.
      /// </summary>
      public override void Write(Utf8JsonWriter writer, FamilyMemberHistory value, JsonSerializerOptions options)
      {
        value.SerializeJson(writer, options, true);
        writer.Flush();
      }
      /// <summary>
      /// Reads and converts the JSON to a typed object.
      /// </summary>
      public override FamilyMemberHistory Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
      {
        FamilyMemberHistory target = new FamilyMemberHistory();
        target.DeserializeJson(ref reader, options);
        return target;
      }
    }
  }

}

// end of file