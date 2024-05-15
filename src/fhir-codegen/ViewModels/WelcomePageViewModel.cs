﻿// <copyright file="WelcomePageViewModel.cs" company="Microsoft Corporation">
//     Copyright (c) Microsoft Corporation. All rights reserved.
//     Licensed under the MIT License (MIT). See LICENSE in the repo root for license information.
// </copyright>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;

namespace fhir_codegen.ViewModels;

public partial class WelcomePageViewModel : ViewModelBase
{
    [ObservableProperty]
    private string _header = "Welcome to the FHIR Codegen";
}