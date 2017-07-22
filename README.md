# PSClassHelpExample

This repo is a short example of native support for Classes in the PowerShell help system.

## Description

The module included in this repository has a class and a external help file. The external help file contains all of the information from the class, including properties and methods. This file was created by hand, as far as I know there is no existing tool that will generate it.  It's important to note everything used in this example is there by default, I did not write anything that allowed this.  This is just **existing native help support for classes in 5.1**.

I have not seen any other examples, documentation, or even mention of this existing, so I thought I'd share.

## See for yourself

Clone the repo, add it to your `PSModulePath` (you could also clone directly into it) and get the help info.

```powershell
git clone https://github.com/SeeminglyScience/PSClassHelpExample
$env:PSModulePath += ";$pwd\PSClassHelpExample"
Get-Help MyClass -Full
```

Returns the following help output.

```txt
NAME
    MyClass

SYNOPSIS
    This is the synopsis of a test class.

PROPERTIES
    [String] $Test
    This is a description of a test property.

    [FileInfo] $SecondTest
    This is another description of a different test property.


METHODS

    [FileInfo] GetMyFile([string] $someValue)
    This method gets the SecondTest property from this instance.

EXAMPLES
    -------------------------- EXAMPLE 1 ---------------------------
    $myClass = [MyClass]::new()
    $myClass.SecondTest = Get-Item .\test.txt
    $myClass.GetMyFile('Unused text')

    Uses the useless test class.
RELATED LINKS
    Online Version: https://github.com/SeeminglyScience
    System.IO.FileInfo: https://msdn.microsoft.com/en-us/library/system.io.fileinfo(v=vs.110).aspx

REMARKS
    To see the examples, type: "get-help  -examples".
    For more information, type: "get-help  -detailed".
    For technical information, type: "get-help  -full".
    For online help, type: "get-help  -online"
```