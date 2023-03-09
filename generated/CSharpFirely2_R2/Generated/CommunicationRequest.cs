// <auto-generated/>
// Contents of: hl7.fhir.r2.core version: 1.0.2

using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using Hl7.Fhir.Introspection;
using Hl7.Fhir.Serialization;
using Hl7.Fhir.Specification;
using Hl7.Fhir.Utility;
using Hl7.Fhir.Validation;

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

namespace Hl7.Fhir.Model
{
  /// <summary>
  /// A request for information to be sent to a receiver
  /// </summary>
  [Serializable]
  [DataContract]
  [FhirType("CommunicationRequest","http://hl7.org/fhir/StructureDefinition/CommunicationRequest", IsResource=true)]
  public partial class CommunicationRequest : Hl7.Fhir.Model.DomainResource
  {
    /// <summary>
    /// FHIR Type Name
    /// </summary>
    public override string TypeName { get { return "CommunicationRequest"; } }

    /// <summary>
    /// The status of the communication.
    /// (url: http://hl7.org/fhir/ValueSet/communication-request-status)
    /// (system: http://hl7.org/fhir/communication-request-status)
    /// </summary>
    [FhirEnumeration("CommunicationRequestStatus")]
    public enum CommunicationRequestStatus
    {
      /// <summary>
      /// The request has been proposed.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("proposed", "http://hl7.org/fhir/communication-request-status"), Description("Proposed")]
      Proposed,
      /// <summary>
      /// The request has been planned.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("planned", "http://hl7.org/fhir/communication-request-status"), Description("Planned")]
      Planned,
      /// <summary>
      /// The request has been placed.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("requested", "http://hl7.org/fhir/communication-request-status"), Description("Requested")]
      Requested,
      /// <summary>
      /// The receiving system has received the request but not yet decided whether it will be performed.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("received", "http://hl7.org/fhir/communication-request-status"), Description("Received")]
      Received,
      /// <summary>
      /// The receiving system has accepted the order, but work has not yet commenced.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("accepted", "http://hl7.org/fhir/communication-request-status"), Description("Accepted")]
      Accepted,
      /// <summary>
      /// The work to fulfill the order is happening.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("in-progress", "http://hl7.org/fhir/communication-request-status"), Description("In Progress")]
      InProgress,
      /// <summary>
      /// The work has been complete, the report(s) released, and no further work is planned.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("completed", "http://hl7.org/fhir/communication-request-status"), Description("Completed")]
      Completed,
      /// <summary>
      /// The request has been held by originating system/user request.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("suspended", "http://hl7.org/fhir/communication-request-status"), Description("Suspended")]
      Suspended,
      /// <summary>
      /// The receiving system has declined to fulfill the request
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("rejected", "http://hl7.org/fhir/communication-request-status"), Description("Rejected")]
      Rejected,
      /// <summary>
      /// The communication was attempted, but due to some procedural error, it could not be completed.
      /// (system: http://hl7.org/fhir/communication-request-status)
      /// </summary>
      [EnumLiteral("failed", "http://hl7.org/fhir/communication-request-status"), Description("Failed")]
      Failed,
    }

    /// <summary>
    /// Message payload
    /// </summary>
    [Serializable]
    [DataContract]
    [FhirType("CommunicationRequest#Payload", IsNestedType=true)]
    public partial class PayloadComponent : Hl7.Fhir.Model.BackboneElement
    {
      /// <summary>
      /// FHIR Type Name
      /// </summary>
      public override string TypeName { get { return "CommunicationRequest#Payload"; } }

      /// <summary>
      /// Message part content
      /// </summary>
      [FhirElement("content", InSummary=true, Order=40, Choice=ChoiceType.DatatypeChoice)]
      [CLSCompliant(false)]
      [References("Resource")]
      [AllowedTypes(typeof(Hl7.Fhir.Model.FhirString),typeof(Hl7.Fhir.Model.Attachment),typeof(Hl7.Fhir.Model.ResourceReference))]
      [Cardinality(Min=1,Max=1)]
      [DataMember]
      public Hl7.Fhir.Model.DataType Content
      {
        get { return _Content; }
        set { _Content = value; OnPropertyChanged("Content"); }
      }

      private Hl7.Fhir.Model.DataType _Content;

      public override IDeepCopyable CopyTo(IDeepCopyable other)
      {
        var dest = other as PayloadComponent;

        if (dest == null)
        {
          throw new ArgumentException("Can only copy to an object of the same type", "other");
        }

        base.CopyTo(dest);
        if(Content != null) dest.Content = (Hl7.Fhir.Model.DataType)Content.DeepCopy();
        return dest;
      }

      public override IDeepCopyable DeepCopy()
      {
        return CopyTo(new PayloadComponent());
      }

      ///<inheritdoc />
      public override bool Matches(IDeepComparable other)
      {
        var otherT = other as PayloadComponent;
        if(otherT == null) return false;

        if(!base.Matches(otherT)) return false;
        if( !DeepComparable.Matches(Content, otherT.Content)) return false;

        return true;
      }

      public override bool IsExactly(IDeepComparable other)
      {
        var otherT = other as PayloadComponent;
        if(otherT == null) return false;

        if(!base.IsExactly(otherT)) return false;
        if( !DeepComparable.IsExactly(Content, otherT.Content)) return false;

        return true;
      }

      [IgnoreDataMember]
      public override IEnumerable<Base> Children
      {
        get
        {
          foreach (var item in base.Children) yield return item;
          if (Content != null) yield return Content;
        }
      }

      [IgnoreDataMember]
      public override IEnumerable<ElementValue> NamedChildren
      {
        get
        {
          foreach (var item in base.NamedChildren) yield return item;
          if (Content != null) yield return new ElementValue("content", Content);
        }
      }

      protected override bool TryGetValue(string key, out object value)
      {
        switch (key)
        {
          case "content":
            value = Content;
            return Content is not null;
          default:
            return base.TryGetValue(key, out value);
        };

      }

      protected override IEnumerable<KeyValuePair<string, object>> GetElementPairs()
      {
        foreach (var kvp in base.GetElementPairs()) yield return kvp;
        if (Content is not null) yield return new KeyValuePair<string,object>("content",Content);
      }

    }

    /// <summary>
    /// Unique identifier
    /// </summary>
    [FhirElement("identifier", InSummary=true, Order=90)]
    [Cardinality(Min=0,Max=-1)]
    [DataMember]
    public List<Hl7.Fhir.Model.Identifier> Identifier
    {
      get { if(_Identifier==null) _Identifier = new List<Hl7.Fhir.Model.Identifier>(); return _Identifier; }
      set { _Identifier = value; OnPropertyChanged("Identifier"); }
    }

    private List<Hl7.Fhir.Model.Identifier> _Identifier;

    /// <summary>
    /// Message category
    /// </summary>
    [FhirElement("category", InSummary=true, Order=100)]
    [DataMember]
    public Hl7.Fhir.Model.CodeableConcept Category
    {
      get { return _Category; }
      set { _Category = value; OnPropertyChanged("Category"); }
    }

    private Hl7.Fhir.Model.CodeableConcept _Category;

    /// <summary>
    /// Message sender
    /// </summary>
    [FhirElement("sender", InSummary=true, Order=110)]
    [CLSCompliant(false)]
    [References("Device","Organization","Patient","Practitioner","RelatedPerson")]
    [DataMember]
    public Hl7.Fhir.Model.ResourceReference Sender
    {
      get { return _Sender; }
      set { _Sender = value; OnPropertyChanged("Sender"); }
    }

    private Hl7.Fhir.Model.ResourceReference _Sender;

    /// <summary>
    /// Message recipient
    /// </summary>
    [FhirElement("recipient", InSummary=true, Order=120)]
    [CLSCompliant(false)]
    [References("Device","Organization","Patient","Practitioner","RelatedPerson")]
    [Cardinality(Min=0,Max=-1)]
    [DataMember]
    public List<Hl7.Fhir.Model.ResourceReference> Recipient
    {
      get { if(_Recipient==null) _Recipient = new List<Hl7.Fhir.Model.ResourceReference>(); return _Recipient; }
      set { _Recipient = value; OnPropertyChanged("Recipient"); }
    }

    private List<Hl7.Fhir.Model.ResourceReference> _Recipient;

    /// <summary>
    /// Message payload
    /// </summary>
    [FhirElement("payload", InSummary=true, Order=130)]
    [Cardinality(Min=0,Max=-1)]
    [DataMember]
    public List<Hl7.Fhir.Model.CommunicationRequest.PayloadComponent> Payload
    {
      get { if(_Payload==null) _Payload = new List<Hl7.Fhir.Model.CommunicationRequest.PayloadComponent>(); return _Payload; }
      set { _Payload = value; OnPropertyChanged("Payload"); }
    }

    private List<Hl7.Fhir.Model.CommunicationRequest.PayloadComponent> _Payload;

    /// <summary>
    /// A channel of communication
    /// </summary>
    [FhirElement("medium", InSummary=true, Order=140)]
    [Cardinality(Min=0,Max=-1)]
    [DataMember]
    public List<Hl7.Fhir.Model.CodeableConcept> Medium
    {
      get { if(_Medium==null) _Medium = new List<Hl7.Fhir.Model.CodeableConcept>(); return _Medium; }
      set { _Medium = value; OnPropertyChanged("Medium"); }
    }

    private List<Hl7.Fhir.Model.CodeableConcept> _Medium;

    /// <summary>
    /// An individual who requested a communication
    /// </summary>
    [FhirElement("requester", InSummary=true, Order=150)]
    [CLSCompliant(false)]
    [References("Practitioner","Patient","RelatedPerson")]
    [DataMember]
    public Hl7.Fhir.Model.ResourceReference Requester
    {
      get { return _Requester; }
      set { _Requester = value; OnPropertyChanged("Requester"); }
    }

    private Hl7.Fhir.Model.ResourceReference _Requester;

    /// <summary>
    /// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed
    /// </summary>
    [FhirElement("status", InSummary=true, IsModifier=true, Order=160)]
    [DeclaredType(Type = typeof(Code))]
    [DataMember]
    public Code<Hl7.Fhir.Model.CommunicationRequest.CommunicationRequestStatus> StatusElement
    {
      get { return _StatusElement; }
      set { _StatusElement = value; OnPropertyChanged("StatusElement"); }
    }

    private Code<Hl7.Fhir.Model.CommunicationRequest.CommunicationRequestStatus> _StatusElement;

    /// <summary>
    /// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed
    /// </summary>
    /// <remarks>This uses the native .NET datatype, rather than the FHIR equivalent</remarks>
    [IgnoreDataMember]
    public Hl7.Fhir.Model.CommunicationRequest.CommunicationRequestStatus? Status
    {
      get { return StatusElement != null ? StatusElement.Value : null; }
      set
      {
        if (value == null)
          StatusElement = null;
        else
          StatusElement = new Code<Hl7.Fhir.Model.CommunicationRequest.CommunicationRequestStatus>(value);
        OnPropertyChanged("Status");
      }
    }

    /// <summary>
    /// Encounter leading to message
    /// </summary>
    [FhirElement("encounter", InSummary=true, Order=170)]
    [CLSCompliant(false)]
    [References("Encounter")]
    [DataMember]
    public Hl7.Fhir.Model.ResourceReference Encounter
    {
      get { return _Encounter; }
      set { _Encounter = value; OnPropertyChanged("Encounter"); }
    }

    private Hl7.Fhir.Model.ResourceReference _Encounter;

    /// <summary>
    /// When scheduled
    /// </summary>
    [FhirElement("scheduled", InSummary=true, Order=180, Choice=ChoiceType.DatatypeChoice)]
    [CLSCompliant(false)]
    [AllowedTypes(typeof(Hl7.Fhir.Model.FhirDateTime),typeof(Hl7.Fhir.Model.Period))]
    [DataMember]
    public Hl7.Fhir.Model.DataType Scheduled
    {
      get { return _Scheduled; }
      set { _Scheduled = value; OnPropertyChanged("Scheduled"); }
    }

    private Hl7.Fhir.Model.DataType _Scheduled;

    /// <summary>
    /// Indication for message
    /// </summary>
    [FhirElement("reason", InSummary=true, Order=190)]
    [Cardinality(Min=0,Max=-1)]
    [DataMember]
    public List<Hl7.Fhir.Model.CodeableConcept> Reason
    {
      get { if(_Reason==null) _Reason = new List<Hl7.Fhir.Model.CodeableConcept>(); return _Reason; }
      set { _Reason = value; OnPropertyChanged("Reason"); }
    }

    private List<Hl7.Fhir.Model.CodeableConcept> _Reason;

    /// <summary>
    /// When ordered or proposed
    /// </summary>
    [FhirElement("requestedOn", InSummary=true, Order=200)]
    [DataMember]
    public Hl7.Fhir.Model.FhirDateTime RequestedOnElement
    {
      get { return _RequestedOnElement; }
      set { _RequestedOnElement = value; OnPropertyChanged("RequestedOnElement"); }
    }

    private Hl7.Fhir.Model.FhirDateTime _RequestedOnElement;

    /// <summary>
    /// When ordered or proposed
    /// </summary>
    /// <remarks>This uses the native .NET datatype, rather than the FHIR equivalent</remarks>
    [IgnoreDataMember]
    public string RequestedOn
    {
      get { return RequestedOnElement != null ? RequestedOnElement.Value : null; }
      set
      {
        if (value == null)
          RequestedOnElement = null;
        else
          RequestedOnElement = new Hl7.Fhir.Model.FhirDateTime(value);
        OnPropertyChanged("RequestedOn");
      }
    }

    /// <summary>
    /// Focus of message
    /// </summary>
    [FhirElement("subject", InSummary=true, Order=210)]
    [CLSCompliant(false)]
    [References("Patient")]
    [DataMember]
    public Hl7.Fhir.Model.ResourceReference Subject
    {
      get { return _Subject; }
      set { _Subject = value; OnPropertyChanged("Subject"); }
    }

    private Hl7.Fhir.Model.ResourceReference _Subject;

    /// <summary>
    /// Message urgency
    /// </summary>
    [FhirElement("priority", InSummary=true, Order=220)]
    [DataMember]
    public Hl7.Fhir.Model.CodeableConcept Priority
    {
      get { return _Priority; }
      set { _Priority = value; OnPropertyChanged("Priority"); }
    }

    private Hl7.Fhir.Model.CodeableConcept _Priority;

    public override IDeepCopyable CopyTo(IDeepCopyable other)
    {
      var dest = other as CommunicationRequest;

      if (dest == null)
      {
        throw new ArgumentException("Can only copy to an object of the same type", "other");
      }

      base.CopyTo(dest);
      if(Identifier != null) dest.Identifier = new List<Hl7.Fhir.Model.Identifier>(Identifier.DeepCopy());
      if(Category != null) dest.Category = (Hl7.Fhir.Model.CodeableConcept)Category.DeepCopy();
      if(Sender != null) dest.Sender = (Hl7.Fhir.Model.ResourceReference)Sender.DeepCopy();
      if(Recipient != null) dest.Recipient = new List<Hl7.Fhir.Model.ResourceReference>(Recipient.DeepCopy());
      if(Payload != null) dest.Payload = new List<Hl7.Fhir.Model.CommunicationRequest.PayloadComponent>(Payload.DeepCopy());
      if(Medium != null) dest.Medium = new List<Hl7.Fhir.Model.CodeableConcept>(Medium.DeepCopy());
      if(Requester != null) dest.Requester = (Hl7.Fhir.Model.ResourceReference)Requester.DeepCopy();
      if(StatusElement != null) dest.StatusElement = (Code<Hl7.Fhir.Model.CommunicationRequest.CommunicationRequestStatus>)StatusElement.DeepCopy();
      if(Encounter != null) dest.Encounter = (Hl7.Fhir.Model.ResourceReference)Encounter.DeepCopy();
      if(Scheduled != null) dest.Scheduled = (Hl7.Fhir.Model.DataType)Scheduled.DeepCopy();
      if(Reason != null) dest.Reason = new List<Hl7.Fhir.Model.CodeableConcept>(Reason.DeepCopy());
      if(RequestedOnElement != null) dest.RequestedOnElement = (Hl7.Fhir.Model.FhirDateTime)RequestedOnElement.DeepCopy();
      if(Subject != null) dest.Subject = (Hl7.Fhir.Model.ResourceReference)Subject.DeepCopy();
      if(Priority != null) dest.Priority = (Hl7.Fhir.Model.CodeableConcept)Priority.DeepCopy();
      return dest;
    }

    public override IDeepCopyable DeepCopy()
    {
      return CopyTo(new CommunicationRequest());
    }

    ///<inheritdoc />
    public override bool Matches(IDeepComparable other)
    {
      var otherT = other as CommunicationRequest;
      if(otherT == null) return false;

      if(!base.Matches(otherT)) return false;
      if( !DeepComparable.Matches(Identifier, otherT.Identifier)) return false;
      if( !DeepComparable.Matches(Category, otherT.Category)) return false;
      if( !DeepComparable.Matches(Sender, otherT.Sender)) return false;
      if( !DeepComparable.Matches(Recipient, otherT.Recipient)) return false;
      if( !DeepComparable.Matches(Payload, otherT.Payload)) return false;
      if( !DeepComparable.Matches(Medium, otherT.Medium)) return false;
      if( !DeepComparable.Matches(Requester, otherT.Requester)) return false;
      if( !DeepComparable.Matches(StatusElement, otherT.StatusElement)) return false;
      if( !DeepComparable.Matches(Encounter, otherT.Encounter)) return false;
      if( !DeepComparable.Matches(Scheduled, otherT.Scheduled)) return false;
      if( !DeepComparable.Matches(Reason, otherT.Reason)) return false;
      if( !DeepComparable.Matches(RequestedOnElement, otherT.RequestedOnElement)) return false;
      if( !DeepComparable.Matches(Subject, otherT.Subject)) return false;
      if( !DeepComparable.Matches(Priority, otherT.Priority)) return false;

      return true;
    }

    public override bool IsExactly(IDeepComparable other)
    {
      var otherT = other as CommunicationRequest;
      if(otherT == null) return false;

      if(!base.IsExactly(otherT)) return false;
      if( !DeepComparable.IsExactly(Identifier, otherT.Identifier)) return false;
      if( !DeepComparable.IsExactly(Category, otherT.Category)) return false;
      if( !DeepComparable.IsExactly(Sender, otherT.Sender)) return false;
      if( !DeepComparable.IsExactly(Recipient, otherT.Recipient)) return false;
      if( !DeepComparable.IsExactly(Payload, otherT.Payload)) return false;
      if( !DeepComparable.IsExactly(Medium, otherT.Medium)) return false;
      if( !DeepComparable.IsExactly(Requester, otherT.Requester)) return false;
      if( !DeepComparable.IsExactly(StatusElement, otherT.StatusElement)) return false;
      if( !DeepComparable.IsExactly(Encounter, otherT.Encounter)) return false;
      if( !DeepComparable.IsExactly(Scheduled, otherT.Scheduled)) return false;
      if( !DeepComparable.IsExactly(Reason, otherT.Reason)) return false;
      if( !DeepComparable.IsExactly(RequestedOnElement, otherT.RequestedOnElement)) return false;
      if( !DeepComparable.IsExactly(Subject, otherT.Subject)) return false;
      if( !DeepComparable.IsExactly(Priority, otherT.Priority)) return false;

      return true;
    }

    [IgnoreDataMember]
    public override IEnumerable<Base> Children
    {
      get
      {
        foreach (var item in base.Children) yield return item;
        foreach (var elem in Identifier) { if (elem != null) yield return elem; }
        if (Category != null) yield return Category;
        if (Sender != null) yield return Sender;
        foreach (var elem in Recipient) { if (elem != null) yield return elem; }
        foreach (var elem in Payload) { if (elem != null) yield return elem; }
        foreach (var elem in Medium) { if (elem != null) yield return elem; }
        if (Requester != null) yield return Requester;
        if (StatusElement != null) yield return StatusElement;
        if (Encounter != null) yield return Encounter;
        if (Scheduled != null) yield return Scheduled;
        foreach (var elem in Reason) { if (elem != null) yield return elem; }
        if (RequestedOnElement != null) yield return RequestedOnElement;
        if (Subject != null) yield return Subject;
        if (Priority != null) yield return Priority;
      }
    }

    [IgnoreDataMember]
    public override IEnumerable<ElementValue> NamedChildren
    {
      get
      {
        foreach (var item in base.NamedChildren) yield return item;
        foreach (var elem in Identifier) { if (elem != null) yield return new ElementValue("identifier", elem); }
        if (Category != null) yield return new ElementValue("category", Category);
        if (Sender != null) yield return new ElementValue("sender", Sender);
        foreach (var elem in Recipient) { if (elem != null) yield return new ElementValue("recipient", elem); }
        foreach (var elem in Payload) { if (elem != null) yield return new ElementValue("payload", elem); }
        foreach (var elem in Medium) { if (elem != null) yield return new ElementValue("medium", elem); }
        if (Requester != null) yield return new ElementValue("requester", Requester);
        if (StatusElement != null) yield return new ElementValue("status", StatusElement);
        if (Encounter != null) yield return new ElementValue("encounter", Encounter);
        if (Scheduled != null) yield return new ElementValue("scheduled", Scheduled);
        foreach (var elem in Reason) { if (elem != null) yield return new ElementValue("reason", elem); }
        if (RequestedOnElement != null) yield return new ElementValue("requestedOn", RequestedOnElement);
        if (Subject != null) yield return new ElementValue("subject", Subject);
        if (Priority != null) yield return new ElementValue("priority", Priority);
      }
    }

    protected override bool TryGetValue(string key, out object value)
    {
      switch (key)
      {
        case "identifier":
          value = Identifier;
          return Identifier?.Any() == true;
        case "category":
          value = Category;
          return Category is not null;
        case "sender":
          value = Sender;
          return Sender is not null;
        case "recipient":
          value = Recipient;
          return Recipient?.Any() == true;
        case "payload":
          value = Payload;
          return Payload?.Any() == true;
        case "medium":
          value = Medium;
          return Medium?.Any() == true;
        case "requester":
          value = Requester;
          return Requester is not null;
        case "status":
          value = StatusElement;
          return StatusElement is not null;
        case "encounter":
          value = Encounter;
          return Encounter is not null;
        case "scheduled":
          value = Scheduled;
          return Scheduled is not null;
        case "reason":
          value = Reason;
          return Reason?.Any() == true;
        case "requestedOn":
          value = RequestedOnElement;
          return RequestedOnElement is not null;
        case "subject":
          value = Subject;
          return Subject is not null;
        case "priority":
          value = Priority;
          return Priority is not null;
        default:
          return base.TryGetValue(key, out value);
      };

    }

    protected override IEnumerable<KeyValuePair<string, object>> GetElementPairs()
    {
      foreach (var kvp in base.GetElementPairs()) yield return kvp;
      if (Identifier?.Any() == true) yield return new KeyValuePair<string,object>("identifier",Identifier);
      if (Category is not null) yield return new KeyValuePair<string,object>("category",Category);
      if (Sender is not null) yield return new KeyValuePair<string,object>("sender",Sender);
      if (Recipient?.Any() == true) yield return new KeyValuePair<string,object>("recipient",Recipient);
      if (Payload?.Any() == true) yield return new KeyValuePair<string,object>("payload",Payload);
      if (Medium?.Any() == true) yield return new KeyValuePair<string,object>("medium",Medium);
      if (Requester is not null) yield return new KeyValuePair<string,object>("requester",Requester);
      if (StatusElement is not null) yield return new KeyValuePair<string,object>("status",StatusElement);
      if (Encounter is not null) yield return new KeyValuePair<string,object>("encounter",Encounter);
      if (Scheduled is not null) yield return new KeyValuePair<string,object>("scheduled",Scheduled);
      if (Reason?.Any() == true) yield return new KeyValuePair<string,object>("reason",Reason);
      if (RequestedOnElement is not null) yield return new KeyValuePair<string,object>("requestedOn",RequestedOnElement);
      if (Subject is not null) yield return new KeyValuePair<string,object>("subject",Subject);
      if (Priority is not null) yield return new KeyValuePair<string,object>("priority",Priority);
    }

  }

}

// end of file
