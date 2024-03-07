// <copyright file="OperationDefinition.cs" company="Microsoft Corporation">
//     Copyright (c) Microsoft Corporation. All rights reserved.
//     Licensed under the MIT License (MIT). See LICENSE in the repo root for license information.
// </copyright>

using Hl7.Fhir.ElementModel;
using Hl7.Fhir.Model;

namespace Microsoft.Health.Fhir.CrossVersion.Convert_43_50;

public class OperationDefinition_43_50 : ICrossVersionProcessor<OperationDefinition>, ICrossVersionExtractor<OperationDefinition>
{
	private Converter_43_50 _converter;
	internal OperationDefinition_43_50(Converter_43_50 converter)
	{
		_converter = converter;
	}

	public OperationDefinition Extract(ISourceNode node)
	{
		OperationDefinition v = new();
		foreach (ISourceNode child in node.Children())
		{
			Process(child, v);
		}

		return v;
	}

	public void Process(ISourceNode node, OperationDefinition current)
	{
		switch (node.Name)
		{
			case "url":
				current.UrlElement = new FhirUri(node.Text);
				break;

			case "_url":
				_converter._element.Process(node, current.UrlElement);
				break;

			case "version":
				current.VersionElement = new FhirString(node.Text);
				break;

			case "_version":
				_converter._element.Process(node, current.VersionElement);
				break;

			case "name":
				current.NameElement = new FhirString(node.Text);
				break;

			case "_name":
				_converter._element.Process(node, current.NameElement);
				break;

			case "title":
				current.TitleElement = new FhirString(node.Text);
				break;

			case "_title":
				_converter._element.Process(node, current.TitleElement);
				break;

			case "status":
				current.StatusElement = new Code<PublicationStatus>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<PublicationStatus>(node.Text));
				break;

			case "_status":
				_converter._element.Process(node, current.StatusElement);
				break;

			case "kind":
				current.Kind = Hl7.Fhir.Utility.EnumUtility.ParseLiteral<OperationDefinition.OperationKind>(node.Text);
				break;

			case "_kind":
				_converter._element.Process(node, current.KindElement);
				break;

			case "experimental":
				current.ExperimentalElement = new FhirBoolean(_converter._primitive.GetBoolOpt(node));
				break;

			case "_experimental":
				_converter._element.Process(node, current.ExperimentalElement);
				break;

			case "date":
				current.DateElement = new FhirDateTime(node.Text);
				break;

			case "_date":
				_converter._element.Process(node, current.DateElement);
				break;

			case "publisher":
				current.PublisherElement = new FhirString(node.Text);
				break;

			case "_publisher":
				_converter._element.Process(node, current.PublisherElement);
				break;

			case "contact":
				current.Contact.Add(_converter._contactDetail.Extract(node));
				break;

			case "description":
				current.DescriptionElement = new Markdown(node.Text);
				break;

			case "_description":
				_converter._element.Process(node, current.DescriptionElement);
				break;

			case "useContext":
				current.UseContext.Add(_converter._usageContext.Extract(node));
				break;

			case "jurisdiction":
				current.Jurisdiction.Add(_converter._codeableConcept.Extract(node));
				break;

			case "purpose":
				current.PurposeElement = new Markdown(node.Text);
				break;

			case "_purpose":
				_converter._element.Process(node, current.PurposeElement);
				break;

			case "affectsState":
				current.AffectsStateElement = new FhirBoolean(_converter._primitive.GetBoolOpt(node));
				break;

			case "_affectsState":
				_converter._element.Process(node, current.AffectsStateElement);
				break;

			case "code":
				current.CodeElement = new Code(node.Text);
				break;

			case "_code":
				_converter._element.Process(node, current.CodeElement);
				break;

			case "comment":
				current.CommentElement = new Markdown(node.Text);
				break;

			case "_comment":
				_converter._element.Process(node, current.CommentElement);
				break;

			case "base":
				current.BaseElement = new Canonical(node.Text);
				break;

			case "_base":
				_converter._element.Process(node, current.BaseElement);
				break;

			case "resource":
				current.ResourceElement.Add(new Code<VersionIndependentResourceTypesAll>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<VersionIndependentResourceTypesAll>(node.Text)));
				break;

			case "system":
				current.SystemElement = new FhirBoolean(_converter._primitive.GetBool(node));
				break;

			case "_system":
				_converter._element.Process(node, current.SystemElement);
				break;

			case "type":
				current.TypeElement = new FhirBoolean(_converter._primitive.GetBool(node));
				break;

			case "_type":
				_converter._element.Process(node, current.TypeElement);
				break;

			case "instance":
				current.InstanceElement = new FhirBoolean(_converter._primitive.GetBool(node));
				break;

			case "_instance":
				_converter._element.Process(node, current.InstanceElement);
				break;

			case "inputProfile":
				current.InputProfileElement = new Canonical(node.Text);
				break;

			case "_inputProfile":
				_converter._element.Process(node, current.InputProfileElement);
				break;

			case "outputProfile":
				current.OutputProfileElement = new Canonical(node.Text);
				break;

			case "_outputProfile":
				_converter._element.Process(node, current.OutputProfileElement);
				break;

			case "parameter":
				current.Parameter.Add(Extract43OperationDefinitionParameterComponent(node));
				break;

			case "overload":
				current.Overload.Add(Extract43OperationDefinitionOverloadComponent(node));
				break;

			// process inherited elements
			default:
				_converter._domainResource.Process(node, current);
				break;

		}
	}

	private OperationDefinition.ParameterComponent Extract43OperationDefinitionParameterComponent(ISourceNode parent)
	{
		OperationDefinition.ParameterComponent current = new();

        foreach (ISourceNode node in parent.Children())
        {
            switch (node.Name)
            {
                case "name":
                    current.NameElement = new Code(node.Text);
                    break;

                case "_name":
                    _converter._element.Process(node, current.NameElement);
                    break;

                case "use":
                    current.UseElement = new Code<OperationParameterUse>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<OperationParameterUse>(node.Text));
                    break;

                case "_use":
                    _converter._element.Process(node, current.UseElement);
                    break;

                case "min":
                    current.MinElement = new Integer(_converter._primitive.GetInt(node));
                    break;

                case "_min":
                    _converter._element.Process(node, current.MinElement);
                    break;

                case "max":
                    current.MaxElement = new FhirString(node.Text);
                    break;

                case "_max":
                    _converter._element.Process(node, current.MaxElement);
                    break;

                case "documentation":
                    current.DocumentationElement = new Markdown(node.Text);
                    break;

                case "_documentation":
                    _converter._element.Process(node, current.DocumentationElement);
                    break;

                case "type":
                    current.TypeElement = new Code<FHIRAllTypes>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<FHIRAllTypes>(node.Text));
                    break;

                case "_type":
                    _converter._element.Process(node, current.TypeElement);
                    break;

                case "targetProfile":
                    current.TargetProfileElement.Add(new Canonical(node.Text));
                    break;

                case "searchType":
                    current.SearchTypeElement = new Code<SearchParamType>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<SearchParamType>(node.Text));
                    break;

                case "_searchType":
                    _converter._element.Process(node, current.SearchTypeElement);
                    break;

                case "binding":
                    current.Binding = Extract43OperationDefinitionBindingComponent(node);
                    break;

                case "referencedFrom":
                    current.ReferencedFrom.Add(Extract43OperationDefinitionReferencedFromComponent(node));
                    break;

                case "part":
                    current.Part.Add(Extract43OperationDefinitionParameterComponent(node));
                    break;

                // process inherited elements
                default:
                    _converter._backboneElement.Process(node, current);
                    break;
            }
		}

		return current;
	}

	private OperationDefinition.BindingComponent Extract43OperationDefinitionBindingComponent(ISourceNode parent)
	{
		OperationDefinition.BindingComponent current = new();

        foreach (ISourceNode node in parent.Children())
        {
            switch (node.Name)
            {
                case "strength":
                    current.StrengthElement = new Code<BindingStrength>(Hl7.Fhir.Utility.EnumUtility.ParseLiteral<BindingStrength>(node.Text));
                    break;

                case "_strength":
                    _converter._element.Process(node, current.StrengthElement);
                    break;

                case "valueSet":
                    current.ValueSetElement = new Canonical(node.Text);
                    break;

                case "_valueSet":
                    _converter._element.Process(node, current.ValueSetElement);
                    break;

                // process inherited elements
                default:
                    _converter._backboneElement.Process(node, current);
                    break;
            }
		}

		return current;
	}

	private OperationDefinition.ReferencedFromComponent Extract43OperationDefinitionReferencedFromComponent(ISourceNode parent)
	{
		OperationDefinition.ReferencedFromComponent current = new();

        foreach (ISourceNode node in parent.Children())
        {
            switch (node.Name)
            {
                case "source":
                    current.SourceElement = new FhirString(node.Text);
                    break;

                case "_source":
                    _converter._element.Process(node, current.SourceElement);
                    break;

                case "sourceId":
                    current.SourceIdElement = new FhirString(node.Text);
                    break;

                case "_sourceId":
                    _converter._element.Process(node, current.SourceIdElement);
                    break;

                // process inherited elements
                default:
                    _converter._backboneElement.Process(node, current);
                    break;
            }
		}

		return current;
	}

	private OperationDefinition.OverloadComponent Extract43OperationDefinitionOverloadComponent(ISourceNode parent)
	{
		OperationDefinition.OverloadComponent current = new();

        foreach (ISourceNode node in parent.Children())
        {
            switch (node.Name)
            {
                case "parameterName":
                    current.ParameterNameElement.Add(new FhirString(node.Text));
                    break;

                case "comment":
                    current.CommentElement = new FhirString(node.Text);
                    break;

                case "_comment":
                    _converter._element.Process(node, current.CommentElement);
                    break;

                // process inherited elements
                default:
                    _converter._backboneElement.Process(node, current);
                    break;
            }
		}

		return current;
	}
}