﻿// <copyright file="LanguageManager.cs" company="Microsoft Corporation">
//     Copyright (c) Microsoft Corporation. All rights reserved.
//     Licensed under the MIT License (MIT). See LICENSE in the repo root for license information.
// </copyright>


using System.Reflection;

namespace Microsoft.Health.Fhir.CodeGen.Lanugage;

public static class LanguageManager
{
    private static Dictionary<string, ILanguage> _languagesByName = new(StringComparer.OrdinalIgnoreCase);
    private static Dictionary<string, Type> _languageConfigTypes = new(StringComparer.OrdinalIgnoreCase);

    /// <summary>Initializes static members of the <see cref="LanguageManager"/> class.</summary>
    static LanguageManager()
    {
        LoadLanguages();
    }

    /// <summary>Gets the languages in this collection.</summary>
    /// <returns>
    /// An enumerator that allows foreach to be used to process the languages in this collection.
    /// </returns>
    public static IEnumerable<ILanguage> GetLanguages()
    {
        return _languagesByName.Values;
    }

    /// <summary>Configuration type for language.</summary>
    /// <exception cref="Exception">Thrown when an exception error condition occurs.</exception>
    /// <param name="languageName">Name of the language.</param>
    /// <returns>A Type.</returns>
    public static Type ConfigTypeForLanguage(string languageName)
    {
        if (_languageConfigTypes.TryGetValue(languageName, out Type? configType))
        {
            return configType;
        }

        throw new Exception($"Language {languageName} not found");
    }

    /// <summary>Loads the languages.</summary>
    /// <exception cref="Exception">Thrown when an exception error condition occurs.</exception>
    public static void LoadLanguages()
    {
        // only load once
        if (_languagesByName.Any())
        {
            return;
        }

        Type ilt = typeof(ILanguage);
        Type ilgt = typeof(ILanguage<>);

        IEnumerable<Type> lTypes;

        // start with local assembly, union in the running assembly in case it is different
        lTypes = ilt.Assembly.GetTypes()
            .Where(t => t.GetInterfaces().Contains(ilt) && (t.IsAbstract == false))
            .Union(Assembly.GetExecutingAssembly().GetTypes()
                .Where(t => t.GetInterfaces().Contains(ilt) && (t.IsAbstract == false)));

        foreach (Type localType in lTypes)
        {
            // check for the implmented interface to get the type information
            IEnumerable<Type> iis = localType.GetInterfaces()
                .Where(t => t.IsGenericType && t.GetGenericTypeDefinition() == ilgt);

            if (!iis.Any())
            {
                throw new Exception($"Invalid language definition {localType.Name} - missing configuration type");
            }

            Type iType = iis.First();

            ILanguage? language = null;

            Type configType = iType.GetGenericArguments().First();

            try
            {
                language = (ILanguage?)Activator.CreateInstance(localType);
            }
            catch (Exception ex)
            {
                throw new Exception($"Could not create instance of {localType.Name} - {ex.Message}");
            }

            if (language == null)
            {
                throw new Exception($"Could not create instance of {localType.Name}");
            }

            if (_languagesByName.ContainsKey(language.Name))
            {
                continue;
            }

            _languagesByName.Add(language.Name, language);
            _languageConfigTypes.Add(language.Name, configType);
        }
    }
}
