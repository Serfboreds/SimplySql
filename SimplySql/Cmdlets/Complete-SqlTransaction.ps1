<#
.Synopsis
    Complete a sql transaction.

.Description
    Complete (COMMIT) a sql transaction.

.Parameter ConnectionName
    User defined name for connection.

#>
Function Complete-SqlTransaction {
    [cmdletBinding()]
    Param([Parameter(Position=0)][Alias("cn")][string]$ConnectionName = "default")

    If(TestConnectionName -ConnectionName $ConnectionName) {
        $Script:Connections.$ConnectionName.CommitTransaction()
    }

}

Export-ModuleMember -Function Complete-SqlTransaction