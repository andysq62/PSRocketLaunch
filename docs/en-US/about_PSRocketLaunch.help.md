# PSRocketLaunch

## about_PSRocketLaunch

# SHORT DESCRIPTION
Powershell wrapper for the RocketLaunch.Live API.

# LONG DESCRIPTION

From the RocketLaunch.Live web site:

The RocketLaunch.Live API provides read-only access to our growing database of rocket launch data. Our data is manually curated using many different sources and is accurate to the best of our ability. Data for upcoming launches is updated regularly throughout each day and historical data is regularly being added to the database. 
For questions about data sourcing and accuracy, please do not hesitate to contact the RocketLaunch API team at RocketLaunch.live!

## Disclaimer

The information and data provided by RocketLaunch.Live are for informational purposes only and comes with no guarantees or warranties with respect to accuracy. All information is subject to change. We do our best to find the most recent and accurate information, but you should always verify via other sources before taking action.

## Authentication

Authentication is via the http header. Function is currently coded to look for the API key in an environment
variable, $Env:RocketLaunchAPIKey.

# EXAMPLES

See help topics for each function

# NOTE

Each request only returns 25 entries at a time. To see more entries use the page parameter.

# TROUBLESHOOTING NOTE

Make sure API key is in an environment variable $Env:RocketLaunchAPIKey

Possible Future enhancements:

- Implement tags entity
- Improve handling of multiple pages of data
- Add functionality for slug exact matches
- Add format xml files for prettier output

# SEE ALSO

[RocketLaunch API](https://rocketlaunch.live)

[PSRocketLaunch on Github](https://github.com/andysq62/PSRocketLaunch.git)

# KEYWORDS

- Powershell
- API
- rocket
- space
- launch
