---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Get-RLCompany

## SYNOPSIS
Returns data for an aerospace company.

## SYNTAX

### ByName (Default)
```
Get-RLCompany [-Name <String>] [-CountryCode <String>] [-Page <String>] [<CommonParameters>]
```

### ByID
```
Get-RLCompany [-ID <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns data from RocketLaunch.live for an aerospace company.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-RLCompany -Name 'space'
```

Returns data for all company names matching substring 'space'.

## PARAMETERS

### -CountryCode
Country code where company resides.

```yaml
Type: String
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ID
Unique numeric identifier for a company.

```yaml
Type: String[]
Parameter Sets: ByID
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Substring matching name of company.

```yaml
Type: String
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Page
Page of output.

```yaml
Type: String
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

### System.String[]

## OUTPUTS

### System.Object
## NOTES

Data provided by RocketLaunch.Live

## RELATED LINKS

https://rocketlaunch.live
https://github.com/andysq62/PSRocketLaunch.git
