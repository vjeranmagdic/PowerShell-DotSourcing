# PowerShell Dot Sourcing

This repository demonstrates how to use dot sourcing in PowerShell to reuse functions and configuration variables across multiple scripts.

The example shows how to organize a PowerShell project into separate configuration and function files while keeping the main script clean and maintainable.

Project Structure

DotSourcing/
│
├── Main.ps1
│
├── Config/
│   └── Variables.ps1
│
└── Functions/
    └── CommonFunctions.ps1

How It Works

1. Configuration Variables

Config/Variables.ps1 contains configuration variables:

$Environment = 'Production'
$Application = 'ERP'

2. Common Functions

Functions/CommonFunctions.ps1 contains reusable functions:

function Get-StandardPrefix {
    return 'DotSourcing'
}

function Get-EnvironmentInfo {
    param (
        [string]$Environment
    )

    $Prefix = Get-StandardPrefix

    Write-Output "Environment: $Prefix$Environment"
}

Write-Host "Common functions are loaded" -ForegroundColor Green

3. Main Script

Main.ps1 loads configuration variables and common functions using dot sourcing:

# Load configuration variables
. "$PSScriptRoot/Config/Variables.ps1"

# Load common functions
. "$PSScriptRoot/Functions/CommonFunctions.ps1"

# Execute function
Get-EnvironmentInfo $Environment

Execution

Run the main script from the project directory:

./Main.ps1

Expected Output

Common functions are loaded
Environment: DotSourcingProduction

Key Concepts

Dot sourcing: Executes a script in the current scope.

Code reusability: Allows functions to be shared across scripts.

Configuration management: Keeps configuration variables separate from application logic.

Maintainability: Organizes scripts into reusable components.

Requirements

PowerShell 5.1 or PowerShell 7+

Related Article

Read the accompanying blog post:

[\[PowerShell Dot Sourcing Blog\]](https://vjeran-magdic.weebly.com/tech-blog/powershell-dot-sourcing)

Author:
Vjeran Magdić