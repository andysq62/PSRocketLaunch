---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Get-RLLocation

## SYNOPSIS
Returns location data.

## SYNTAX

### ByName (Default)
```
Get-RLLocation [-Name <String>] [-CountryCode <String>] [-Page <String>] [<CommonParameters>]
```

### ByID
```
Get-RLLocation [-ID <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns location data.
Fields returned are id, name, latitude, longitude, country, state, utc_offset

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-RLLocation -CountryCode 'US'
```

Returns data for all locations in the United States.

## PARAMETERS

### -CountryCode
Two letter code identifying the country.

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
Unique numeric identifier for each location.

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
Substring match for name of the location.

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
