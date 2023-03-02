---
external help file: PSRocketLaunch-help.xml
Module Name: PSRocketLaunch
online version:
schema: 2.0.0
---

# Get-RLLaunch

## SYNOPSIS
Returns data for a given launch.

## SYNTAX

### BySearch (Default)
```
Get-RLLaunch [-Search <String>] [-AfterDate <DateTime>] [-BeforeDate <DateTime>] [-LocationID <Int32>]
 [-PadID <Int32>] [-ProviderID <Int32>] [-VehicleID <Int32>] [-Page <String>] [<CommonParameters>]
```

### ByID
```
Get-RLLaunch [-AfterDate <DateTime>] [-BeforeDate <DateTime>] [-LocationID <Int32>] [-PadID <Int32>]
 [-ProviderID <Int32>] [-VehicleID <Int32>] [-Page <String>] [-ID <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns data for a given launch. Fields returned are:

- sort_date	A Unix timestamp of the launch date for sorting, taking into account "estimated" launch dates
- name	The name of the launch, generally derived from the primary mission's name
- provider	An object with launch provider information
- vehicle	An object with launch vehicle information
- pad	An object with launch pad information
- missions	An array of objects with mission information
- launch_description	A standardized one sentence description of the launch
- win_open	The date and time of the opening of the launch window in ISO 8601 format
- t0	The date and time of the planned launch time (T-0) in ISO 8601 format
- win_close	The date and time of the closing of the launch window in ISO 8601 format
- est_date	The known or estimated elements of the launch date, if an exact date/time is not known
- date_str	The same date string on the front page of RocketLaunch.Live
- tags	An array of tag objects assigned to the launch
- slug	The canonical URL slug of the launch, used in launch page URLs (i.e. https://www.rocketlaunch.live/launch/<slug>)
- weather_summary	A summary of the weather forecast for launch time (provided by darksky.net)
- weather_temp	The forecasted temperature at launch time (currently in Fahrenheit only)
- weather_icon	The appropriate icon code for the forecasted weather at launch time (https://erikflowers.github.io/weather-icons/)
- weather_updated	The date and time of when the weather was last updated (currently every 8 hours)
- quicktext	Standardized text showing the vehicle, mission name, launch time, and a link to the stream
- media	The media associated with this launch (Premium only)
    - ldfeatured	Featured on launch day
    - featured	Featured when it's not launch day
- result	One of the following values as the result of the launch:
    - -1	Not Set
    - 0	Failure
    - 1	Success
    - 2	Partial Failure
    - 3	In-Flight Abort (Crewed)
- modified	The date and time when the launch or its associated entities were modified

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-RLLaunch -Search 'space'
```

Returns data with partial string match with 'space' on Mission name, Vehicle name, Pad name, Company name, Location name, Country name, State name, or Tag text.

### Example 2
```powershell
PS C:\> Get-RLLaunch -BeforeDate '02/28/2023' -AfterDate '01/01/2023'
```

Returns data for launches between January 1, 2023 and February 28, 2023.

## PARAMETERS

### -AfterDate
Returns launch data after a given date, use format in mm/dd/yyyy.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BeforeDate
Returns launch data before a given date, use format in mm/dd/yyyy.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ID
Unique numeric identifier for a launch.

```yaml
Type: Int32[]
Parameter Sets: ByID
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocationID
Unique identifier for launch site location.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PadID
Unique identifier for launch pad.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -ProviderID
Unique identifier for launch provider.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Partial string match on Mission name, Vehicle name, Pad name, Company name, Location name, Country name, State name, or Tag text

```yaml
Type: String
Parameter Sets: BySearch
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VehicleID
Unique identifier for launch vehicle.

```yaml
Type: Int32
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

### None

## OUTPUTS

### System.Object

## NOTES

Data provided by RocketLaunch.Live

## RELATED LINKS

[RocketLaunch API](https://rocketlaunch.live)
[PSRocketLaunch on Github](https://github.com/andysq62/PSRocketLaunch.git)

