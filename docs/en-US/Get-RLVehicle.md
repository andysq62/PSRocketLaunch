---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Get-RLVehicle

## SYNOPSIS
Returns data for launch vehicles.

## SYNTAX

### ByName (Default)
```
Get-RLVehicle [-Name <String>] [-Page <String>] [<CommonParameters>]
```

### ByID
```
Get-RLVehicle [-ID <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns launch vehicle data. Fields returned are id, name, company.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-RLVehicle -Name 'Falcon'
```

Returns data for launch vehicle names matching substring 'Falcon'.

## PARAMETERS

### -ID
Unique numeric identifier for launch vehicles.

```yaml
Type: Int32[]
Parameter Sets: ByID
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Substring match of launch vehicle name.

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
Page number of results.

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

[RocketLaunch API](https://rocketlaunch.live)
[PSRocketLaunch on Github](https://github.com/andysq62/PSRocketLaunch.git)

