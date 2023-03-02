---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Invoke-RLMethod

## SYNOPSIS
Makes a REST request to RocketLaunch.live.

## SYNTAX

```
Invoke-RLMethod [[-Entity] <String>] [[-query] <String>] [<CommonParameters>]
```

## DESCRIPTION
Makes a REST request to the RocketLaunch.live API. You must get an API key from the Web site.  
Function expects the key to be stored in $Env:RocketLaunchKey.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-RLMethod -Entity 'companies' -Query 'name=spacex'
```

Returns data for substring match to name of company.

## PARAMETERS

### -Entity
API entity requested, such as companies, missions, launches, pads, locations, and vehicles.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -query
The URI query string.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

Data provided by RocketLaunch.Live

## RELATED LINKS

[RocketLaunch API](https://rocketlaunch.live)
[PSRocketLaunch on Github](https://github.com/andysq62/PSRocketLaunch.git)
