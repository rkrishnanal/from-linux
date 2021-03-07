function Get-Adversion{
    $PSVersionTable.PSVersion
    
    
    
}

function Get-Twonumber {
    param (
        [int]$number1,
        [int]$number2
        )
        $result=$number1 + $number2
        #Write-Output $number2.GetType()
        Write-Host "the result of Addition $result"
    
    
}

function Get-smallfiles {
    <#
    .SYNOPSIS
    For learninng
    .DESCRIPTION
    For the take smalll files 

    .PARAMETER Size
    This the parameter defines file size

    .PARAMETER Location
    This parament defines the locatio where the files have to search
    #>
    param (
         $Size,
         $Location
    )
    Get-ChildItem $Location | where {$_.Length -lt $Size}
}

function Get-disk {
    param (
        [string]$cname,
        [int]$drive = 2
        )
    Get-CimInstance -ClassName Win32_LogicalDisk -Filter $drive -ComputerName $cname
}

Send-MailMessage -To it@tcsqatar.com -From itasst@tcsqatar.com -SmtpServer mail.tcsqatar.com -Attachments 'C:\Users\IT Admin\Desktop\17 attendance sheet.xlsx' -Credential (Get-Credential)

<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notescls
    
#>