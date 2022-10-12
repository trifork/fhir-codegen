// <auto-generated />
// Built from: hl7.fhir.r2.core version: 1.0.2
  // Option: "NAMESPACE" = "fhirCsR2"

using fhirCsR2.Models;

namespace fhirCsR2.ValueSets
{
  /// <summary>
  /// How the issue affects the success of the action.
  /// </summary>
  public static class IssueSeverityCodes
  {
    /// <summary>
    /// The issue is sufficiently important to cause the action to fail.
    /// </summary>
    public static readonly Coding Error = new Coding
    {
      Code = "error",
      Display = "Error",
      System = "http://hl7.org/fhir/issue-severity"
    };
    /// <summary>
    /// The issue caused the action to fail, and no further checking could be performed.
    /// </summary>
    public static readonly Coding Fatal = new Coding
    {
      Code = "fatal",
      Display = "Fatal",
      System = "http://hl7.org/fhir/issue-severity"
    };
    /// <summary>
    /// The issue has no relation to the degree of success of the action.
    /// </summary>
    public static readonly Coding Information = new Coding
    {
      Code = "information",
      Display = "Information",
      System = "http://hl7.org/fhir/issue-severity"
    };
    /// <summary>
    /// The issue is not important enough to cause the action to fail, but may cause it to be performed suboptimally or in a way that is not as desired.
    /// </summary>
    public static readonly Coding Warning = new Coding
    {
      Code = "warning",
      Display = "Warning",
      System = "http://hl7.org/fhir/issue-severity"
    };

    /// <summary>
    /// Literal for code: Error
    /// </summary>
    public const string LiteralError = "error";

    /// <summary>
    /// Literal for code: IssueSeverityError
    /// </summary>
    public const string LiteralIssueSeverityError = "http://hl7.org/fhir/issue-severity#error";

    /// <summary>
    /// Literal for code: Fatal
    /// </summary>
    public const string LiteralFatal = "fatal";

    /// <summary>
    /// Literal for code: IssueSeverityFatal
    /// </summary>
    public const string LiteralIssueSeverityFatal = "http://hl7.org/fhir/issue-severity#fatal";

    /// <summary>
    /// Literal for code: Information
    /// </summary>
    public const string LiteralInformation = "information";

    /// <summary>
    /// Literal for code: IssueSeverityInformation
    /// </summary>
    public const string LiteralIssueSeverityInformation = "http://hl7.org/fhir/issue-severity#information";

    /// <summary>
    /// Literal for code: Warning
    /// </summary>
    public const string LiteralWarning = "warning";

    /// <summary>
    /// Literal for code: IssueSeverityWarning
    /// </summary>
    public const string LiteralIssueSeverityWarning = "http://hl7.org/fhir/issue-severity#warning";

    /// <summary>
    /// Dictionary for looking up IssueSeverity Codings based on Codes
    /// </summary>
    public static Dictionary<string, Coding> Values = new Dictionary<string, Coding>() {
      { "error", Error }, 
      { "http://hl7.org/fhir/issue-severity#error", Error }, 
      { "fatal", Fatal }, 
      { "http://hl7.org/fhir/issue-severity#fatal", Fatal }, 
      { "information", Information }, 
      { "http://hl7.org/fhir/issue-severity#information", Information }, 
      { "warning", Warning }, 
      { "http://hl7.org/fhir/issue-severity#warning", Warning }, 
    };
  };
}
