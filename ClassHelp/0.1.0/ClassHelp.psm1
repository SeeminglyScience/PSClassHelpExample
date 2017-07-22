<#
.EXTERNALHELP ClassHelp-help.xml
#>

# The above CBH is for the **file** not for the class.  The help provider looks at the ScriptBlockAst
# of the file, not of the type definition.

class MyClass {
    [string]$Test;
    [System.IO.FileInfo]$SecondTest;
    
    [System.IO.FileInfo] GetMyFile([string] $someValue) {
        return $this.SecondTest
    }
}