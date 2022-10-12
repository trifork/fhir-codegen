// <auto-generated />
// Built from: hl7.fhir.r2.core version: 1.0.2
  // Option: "NAMESPACE" = "fhirCsR2"

using System;
using System.Buffers;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using fhirCsR2.Models;

namespace fhirCsR2.Serialization
{
  /// <summary>
  /// Default JsonSerializerOptions to format JSON serialization as expected.
  /// </summary>
  public static class FhirSerializerOptions
  {
#pragma warning disable CA1810 // Initialize reference type static fields inline

    /// <summary>
    /// Compact format internal variable.
    /// </summary>
    private static readonly JsonSerializerOptions _compactFormat;

    /// <summary>
    /// Pretty print format internal variable.
    /// </summary>
    private static readonly JsonSerializerOptions _prettyFormat;

    /// <summary>
    /// Initializes static members of the &lt;see cref="FhirSerializerOptions"/&gt; class.
    /// </summary>
    static FhirSerializerOptions()
    {
      _prettyFormat = new JsonSerializerOptions();
      _prettyFormat.Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping;
      _prettyFormat.WriteIndented = true;

      _compactFormat = new JsonSerializerOptions();
      _compactFormat.Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping;
      _compactFormat.WriteIndented = true;
    }

#pragma warning restore CA1810 // Initialize reference type static fields inline

    /// <summary>
    /// Compact (no extra whitespace) format.
    /// </summary>
    public static JsonSerializerOptions Compact => _compactFormat;

    /// <summary>
    /// Pretty-printed (newlines and indentation) format.
    /// </summary>
    public static JsonSerializerOptions Pretty => _prettyFormat;
  }
}
