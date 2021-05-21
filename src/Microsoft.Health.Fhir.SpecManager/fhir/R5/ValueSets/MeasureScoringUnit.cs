// <auto-generated />
// Built from: hl7.fhir.r5.core version: 4.6.0
  // Option: "NAMESPACE" = "fhirCsR5"

using fhirCsR5.Models;

namespace fhirCsR5.ValueSets
{
  /// <summary>
  /// This is an example value set illustrating some typical scoring units used in quality measure specifications.
  /// </summary>
  public static class MeasureScoringUnitCodes
  {
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding Per1000PatientDays = new Coding
    {
      Code = "/1000.d",
      Display = "per 1000 patient days",
      System = "http://unitsofmeasure.org"
    };
    /// <summary>
    /// 
    /// </summary>
    public static readonly Coding DefaultUnits = new Coding
    {
      Code = "1",
      Display = "Default units",
      System = "http://unitsofmeasure.org"
    };
  };
}