// <auto-generated />
// Built from: hl7.fhir.r4.core version: 4.0.1
  // Option: "NAMESPACE" = "fhirCsR4"

using fhirCsR4.Models;

namespace fhirCsR4.ValueSets
{
  /// <summary>
  /// The result if validation fails
  /// </summary>
  public static class VerificationresultFailureActionCodes
  {
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding Fatal = new Coding
    {
      Code = "fatal",
      Display = "Fatal",
      System = "http://terminology.hl7.org/CodeSystem/failure-action"
    };
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding None = new Coding
    {
      Code = "none",
      Display = "None",
      System = "http://terminology.hl7.org/CodeSystem/failure-action"
    };
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding RecordOnly = new Coding
    {
      Code = "rec-only",
      Display = "Record only",
      System = "http://terminology.hl7.org/CodeSystem/failure-action"
    };
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding Warning = new Coding
    {
      Code = "warn",
      Display = "Warning",
      System = "http://terminology.hl7.org/CodeSystem/failure-action"
    };
  };
}