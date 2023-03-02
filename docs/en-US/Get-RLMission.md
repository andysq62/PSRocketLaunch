---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Get-RLMission

## SYNOPSIS
Returns mission data.

## SYNTAX

### ByName (Default)
```
Get-RLMission [-Name <String>] [-Page <String>] [<CommonParameters>]
```

### ByID
```
Get-RLMission [-ID <Int32[]>] [-Page <String>] [<CommonParameters>]
```

## DESCRIPTION
Returns mission data. 
Fields returned are id, name, description, launch, company

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-RLMission -Name 'starlink'
```

Returns data with name matching substring 'starlink'.

## PARAMETERS

### -ID
Unique numeric identifier for a mission.

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
Substring match for mission name.

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
Parameter Sets: (All)
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

### System.Int32[]

## OUTPUTS

### System.Object

## NOTES

Data provided by RocketLaunch.Live

## RELATED LINKS

[RocketLaunch API](https://rocketlaunch.live)
[PSRocketLaunch on Github](https://github.com/andysq62/PSRocketLaunch.git)

