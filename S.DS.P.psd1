#
# Module manifest for module 'S.DS.P' (System.DirectoryServices.Protocols)
#
# Generated by: Jiri Formacek
#
# Generated on: 30.5.2012
#
# Version history
# 30.5.2012,  1.0, Jiri Formacek, Initial version
# 23.7.2012,  1.0.1, Jiri Formacek, Find-LdapObject: Added parameter for connection timeout (server and client side)
# 25.7.2012,  1.0.2, Jiri Formacek, Find-LdapObject: Added support for Kerberos Encryption (removed parameter UseSSL, added parameter EncryptionType)
#                                                    Added support for explicit credentials (Username and Password parameters)
# 2.10.2012,  1.0.3, Jiri Formacek, Find-LdapObject: Values of multivalued properties are now retrieved using ranged retrieval
# 24.10.2012, 1.0.4, Jiri Formacek, Find-LdapObject: Fixed bug causing infinite loop when retrieving special properties (such as tokenGroups)
# 29.10.2013, 1.1.0, Jiri Formacek, Find-LdapObject: Added support for Attribute-Scoped Queries (ASQ) - new parameter "ASQ"
#                                                    Returned object always contains distinguishedName so no need to add it explicitly to propertiesToLoad parameter
#                                                    Added support to pipelining to searchBase parameter so results from search can be used as search base further in pipeline
# 14.6.2014, 1.2.0, Jiri formacek, Find-LdapObject: Attributes with no value returned as $null instead of empty array
# 27.3.2015, 1.4.0, Jiri Formacek, Find-LDAPObject: Default value for PropertiesToLoad is OID 1.1, which means "do not return any props" - see RFC 4511, 4.5.1.8
#                                                   Default value for LDAP server is empty string, which means "closest DC"
#                                                   Get-RootDSE now exported from module
# 2.12.2015, 1.5.0, Jiri Formacek, Find-LDAPObject: Added parameter Domain. Username parameter shall be entered as sAMAccountName only - you may receive InvalidCredentials error when entering username as domain\sAMAccountName
# 4.2.2016, 1.6.0, Jiri Formacek, Find-LDAPObject, Get-RootDSE: Username, Password and Domain parameters replaced by Credential parameter
# 11.5.2016, 1.6.1, Jiri Formacek, Replaced ModuleToProcess by RootModule in module manifest
# 18.5.016, 1.6.2, Jiri Formacek, Fixed typo in Get-RootDSE
# 30.4.2017, 1.7, Jiri Formacek, Separated creation of LdapConnection to dedicated cmdlet Get-LdapConnection
#                                Added new cmdlets for adding, modifying and deleting Ldap object: Add-LdapObject, Edit-LdapObject and Remove-LdapObject
@{

# Script module or binary module file associated with this manifest
RootModule = '.\S.DS.P.psm1'

# Version number of this module.
ModuleVersion = '1.7.0'

# ID used to uniquely identify this module
GUID = '766cbbc0-85b9-4773-b4db-2fa86cd771ff'

# Author of this module
Author = 'Jiri Formacek'

# Company or vendor of this module
CompanyName = 'GreyCorbel'

# Copyright statement for this module
Copyright = ''

# Description of the functionality provided by this module
Description = 'Provides cmdlets that demostrate using System.DirectoryServices.Protocols in Powershell'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
PowerShellHostVersion = '3.0'

# Minimum version of the .NET Framework required by this module
DotNetFrameworkVersion = '2.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = ''

# Processor architecture (None, X86, Amd64, IA64) required by this module
ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @("System.DirectoryServices.Protocols")

# Script files (.ps1) that are run in the caller's environment prior to importing this module
ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @()

# Modules to import as nested modules of the module specified in ModuleToProcess
NestedModules = @()

# Functions to export from this module
FunctionsToExport = 'Find-LDAPObject','Get-RootDSE', 'Get-LdapConnection', 'Edit-LdapObject','Add-LdapObject','Remove-LdapObject'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module
ModuleList = @()

# List of all files packaged with this module
FileList = @()

# Private data to pass to the module specified in ModuleToProcess
PrivateData = ''

}

