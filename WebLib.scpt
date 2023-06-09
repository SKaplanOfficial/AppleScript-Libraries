#@osa-lang:AppleScript
use framework "AppKit"
use framework "Foundation"
use framework "PDFKit"
use framework "WebKit"
use framework "CoreWLAN"
use scripting additions

property NSURL : class "NSURL"
property NSImage : class "NSImage"
property NSURLComponents : class "NSURLComponents"
property NSString : class "NSString"
property NSMutableString : class "NSMutableString"
property NSRegularExpression : class "NSRegularExpression"
property NSDataDetector : class "NSDataDetector"
property NSSet : class "NSSet"

property monthNames : {January, February, March, April, May, June, July, August, September, October, November, December}

-- Filetypes
property PNG : "PNG"
property JPG : "JPG"
property HTML : "HTML"
property TXT : "TXT"
property PDF : "PDF"

script WiFiManager
	use framework "CoreWLAN"

	(*
		Disconnects from the current WiFi network.
	*)
	on disconnect()
		set interface to current application's CWWiFiClient's sharedWiFiClient()'s interface()
		interface's disassociate()
	end disconnect

	(*
		Disables the WiFi interface.
	*)
	on disable()
		set interface to current application's CWWiFiClient's sharedWiFiClient()'s interface()
		my (interface's setPower:false |error|:(missing value))
	end disable

	(*
		Enables the WiFi interface.
	*)
	on enable()
		set interface to current application's CWWiFiClient's sharedWiFiClient()'s interface()
		my (interface's setPower:true |error|:(missing value))
	end enable

	(*
		Gets the MAC address of the WiFi interface.
	*)
	on getMACAddress()
		return current application's CWWiFiClient's sharedWiFiClient()'s interface()'s hardwareAddress() as text
	end getMACAddress

	(*
		Gets the current aggregate RSSI measurement for the WiFi interface.
	*)
	on getRSSI()
		return current application's CWWiFiClient's sharedWiFiClient()'s interface()'s rssiValue()
	end getRSSI

	(*
		Gets the SSID of the current WiFi network.
	*)
	on getSSID()
		return current application's CWWiFiClient's sharedWiFiClient()'s interface()'s ssid() as text
	end getSSID

	(*
		Attempts to connect to the network with the given name, using the provided password.

		Params:
			networkName (String) - The name of the WiFi network to connect to.
			thePassword (String) - The password to authenticate the connection with.

		Returns:
			(Boolean) - True if the network was connected to successfully, false otherwise.
	*)
	on connectToNetwork:networkName usingPassword:thePassword
		set theWiFiInterface to current application's CWWiFiClient's sharedWiFiClient()'s interface()
		set theNetworks to (theWiFiInterface's scanForNetworksWithSSID:(missing value) |error|:(missing value))'s allObjects()
		repeat with theNetwork in theNetworks
			if theNetwork's ssid() as text is networkName then
				log "hi"
				(theWiFiInterface's associateToNetwork:theNetwork |password|:thePassword |error|:(missing value))
				return true
			end if
		end repeat
		return false
	end connectToNetwork:usingPassword:

	(*
		Scans for available WiFi networks and returns the list of network SSIDs.
	*)
	on getAvailableNetworks()
		set theWiFiInterface to current application's CWWiFiClient's sharedWiFiClient()'s interface()
		set theNetworks to (theWiFiInterface's scanForNetworksWithSSID:(missing value) |error|:(missing value))'s allObjects()

		set theSSIDs to {}
		repeat with theNetwork in theNetworks
			copy theNetwork's ssid() as text to end of theSSIDs
		end repeat
		return theSSIDs
	end getAvailableNetworks
end script

(*
	Initializes a new Website instance.

	Returns:
		(Website) - The newly created website instance.

	Example:
		set mySite to WebLib's WLWebsite()
		set mySite's URLString to "https://apple.com"
		return mySite
*)
on WLWebsite()
	script Website
		use framework "Foundation"

		property title : missing value
		property «class dscr» : missing value
		property URLString : missing value
		property HTML : missing value
		property visibleText : missing value
		property favicon : missing value

		property host : missing value
		property scheme : missing value
		property pathString : missing value
		property query : missing value
		property queryItems : missing value
		property port : missing value

		(*
			Pings the site's host the speciifed number of times, returning the average.

			Params:
				numAttempts (Number) - The number of times to ping the website host.

			Returns:
				(Number) - The average ms per ping.
		*)
		on ping over numAttempts : 1
			set hostname to my host
			set pingCommand to "/sbin/ping -c " & numAttempts & " " & quoted form of hostname & " | tail -1| awk '{print $4}' | cut -d '/' -f 2"
			set pingOutput to do shell script pingCommand
			return pingOutput as number
		end ping

		(*
			Saves the website as a text file, HTML file, PDF, PNG, or JPG.

			Params:
				filePath (String) - The path to save the site to.
				fileType (String) - The filetype to save the site as; TXT, HTML, PDF, PNG, or JPG.

			Returns:
				(Boolean) - True if the file was saved successfully false otherwise.
		*)
		on save in filePath as filetype : "txt"
			set _NSURL to current application's NSClassFromString("NSURL")
			set theURL to NSURL's URLWithString:(my URLString)
			set theData to current application's NSData's dataWithContentsOfURL:theURL
			try
				ignoring case
					if filetype is TXT or filetype is HTML then
						tell application "System Events"
							set homedir to current user's home directory as text
							set theFile to open for access filePath with write permission
							write my HTML to theFile
							close access theFile
						end tell
					else if filetype is PDF then
						try
							do shell script "/usr/local/bin/wkhtmltopdf \"" & (my URLString) & "\" \"" & filePath & "\"" user name "steven"
						on error err
							log err
							display alert "Install wkhtmltopdf from wkhtmltopdf.org."
						end try
					else if filetype is PNG then
						try
							do shell script "/usr/local/bin/wkhtmltoimage --format \"PNG\" \"" & (my URLString) & "\" \"" & filePath & "\"" user name "steven"
						on error err
							log err
							display alert "Install wkhtmltoimage from wkhtmltopdf.org."
						end try
					else if filetype is JPG then
						try
							do shell script "/usr/local/bin/wkhtmltoimage --format \"JPG\" \"" & (my URLString) & "\" \"" & filePath & "\"" user name "steven"
						on error err
							log err
							display alert "Install wkhtmltoimage from wkhtmltopdf.org."
						end try
					end if
				end ignoring
			on error
				return false
			end try
			return true
		end save

		(*
			Opens the website in the default browser.
		*)
		on open
			open location URLString
		end open
	end script
end WLWebsite

(*
	Gets the average ping to a website over the specified number of attempts.

	Params:
		site (Website or String) - The Website script object or URL string to get the ping to.
		numAttempts (Number) - The total number of times to ping the site.

	Returns:
		(Number) - The average ping time.

	Example:
		set mySite to WebLib's websiteWithURLString:"https://apple.com"
		return WebLib's (ping for mySite over 3)
*)
on ping for site over numAttempts : 1
	if class of site is script then
		return site's (ping over numAttempts)
	else if class of site is text then
		set theURL to NSURL's URLWithString:site
		set hostname to theURL's |host|() as text
		set pingCommand to "/sbin/ping -c " & numAttempts & " " & quoted form of hostname & " | tail -1| awk '{print $4}' | cut -d '/' -f 2"
		set pingOutput to do shell script pingCommand
		return pingOutput as number
	end if
end ping

(*
	Creates a new Website script object for the given URL.

	Params:
		URLString (String) - The URL of the target website.

	Returns:
		(Website) - A new Website script object configured for the target URL.

	Example:
		set mySite to WebLib's websiteWithURLString:"https://apple.com"
*)
on websiteWithURLString:URLString
	set newWebsite to WLWebsite()
	set newWebsite's URLString to URLString

	set theURL to NSURL's URLWithString:URLString
	set newWebsite's host to (theURL's |host|()) as text
	set newWebsite's scheme to (theURL's |scheme|()) as text
	set newWebsite's pathString to (theURL's |path|()) as text
	set newWebsite's query to (theURL's query()) as text
	set newWebsite's port to (theURL's |port|()) as text

	set faviconURL to NSURL's URLWithString:("http://" & newWebsite's host & "/favicon.ico")
	try
		set faviconImg to NSImage's alloc()'s initWithContentsOfURL:faviconURL
		set newWebsite's favicon to faviconImg
	on error err
		log err
	end try

	set URLComponents to NSURLComponents's componentsWithString:URLString
	set theQueryItems to {} as record
	if URLComponents's queryItems() is not missing value then
		repeat with theComponent in URLComponents's queryItems()
			set theQueryItems to theQueryItems & {name:theComponent's |name|() as text, value:theComponent's value() as text}
		end repeat
	end if
	set newWebsite's queryItems to theQueryItems

	set theHTML to NSString's alloc()'s initWithContentsOfURL:theURL
	if theHTML is missing value then
		return newWebsite
	end if

	set newWebsite's HTML to theHTML as text

	-- Extract the website's title
	set titleRegex to NSRegularExpression's regularExpressionWithPattern:"<title>(.*?)</title>" options:0 |error|:(missing value)
	set titleMatch to titleRegex's firstMatchInString:theHTML options:0 range:{0, theHTML's |length|()}
	if titleMatch is not (missing value) then
		set titleRange to titleMatch's rangeAtIndex:1
		set newWebsite's title to (theHTML's substringWithRange:titleRange) as text
	end if

	-- Extract the website's visible text
	set theVisibleText to NSMutableString's stringWithCapacity:(theHTML's |length|())
	theVisibleText's setString:theHTML
	set htmlTagsRegex to NSRegularExpression's regularExpressionWithPattern:"(<head>[\\S\\s\\n\\r]*?<\\/head>|<script[\\s\\S\\n\\r]+?<\\/script>|<style[\\s\\S\\n\\r]+?<\\/style>|<a [\\s\\S\\n\\r]+?<\\/a>|<nav[\\s\\S\\n\\r]+?<\\/nav>|<link[\\s\\S\\n\\r]+?<\\/link>|<form[\\s\\S\\n\\r]+?<\\/form>|<button[\\s\\S\\n\\r]+?<\\/button>|<!--[\\s\\S\\n\\r]+?-->|<select[\\s\\S\\n\\r]+?<\\/select>|<[\\s\\n\\r\\S]+?>|&.*?;)" options:0 |error|:(missing value)
	htmlTagsRegex's replaceMatchesInString:theVisibleText options:0 range:{0, theHTML's |length|()} withTemplate:""

	set excessSpaceRefex to NSRegularExpression's regularExpressionWithPattern:"[\\s\\n\\r]+" options:0 |error|:(missing value)
	excessSpaceRefex's replaceMatchesInString:theVisibleText options:0 range:{0, length of (theVisibleText as text)} withTemplate:" "
	set newWebsite's visibleText to (theVisibleText as text)

	return newWebsite
end websiteWithURLString:

(*
	Creates a new Website script object for the given URL.

	Params:
		URLString (String) - The URL of the target website.

	Returns:
		(Website) - A new Website script object configured for the target URL.

	Example:
		set mySite to WebLib's (website for "https://apple.com")
*)
on Website for URLString
	return my websiteWithURLString:URLString
end Website

(*
	Initializes a new WebScraper instance.

	Returns:
		(WebScraper) - The newly created web scraper.

	Example:
		set newScraper to WebLib's WLWebScraper()
		set newScraper's target to "https://apple.com"
		return newScraper
*)
to WLWebScraper()
	script WebScraper
		use framework "Foundation"

		property target : missing value

		on itemsWithTypes:theTypes forKeyPath:theKeyPath
			if target is missing value then
				error "Must set target"
			end if

			set theURL to NSURL's alloc()'s initWithString:target
			set theHTML to NSString's stringWithContentsOfURL:theURL encoding:(current application's NSUTF8StringEncoding) |error|:(missing value)

			set theDetector to NSDataDetector's dataDetectorWithTypes:theTypes |error|:(missing value)
			set linkArray to theDetector's matchesInString:theHTML options:0 range:{location:0, |length|:theHTML's |length|()}
			set linkArray to (linkArray's valueForKeyPath:theKeyPath)

			set linkArray to NSSet's setWithArray:linkArray
			return linkArray's allObjects() as list
		end itemsWithTypes:forKeyPath:

		on extractLinks()
			return my itemsWithTypes:32 forKeyPath:"URL.absoluteString"
		end extractLinks

		on extractPhoneNumbers()
			return my itemsWithTypes:(current application's NSTextCheckingTypeLink) forKeyPath:"URL.absoluteString"
		end extractPhoneNumbers

		on extractTransitInfo()
			return my itemsWithTypes:(current application's NSTextCheckingTypeTransitInformation) forKeyPath:"transitComponents"
		end extractTransitInfo

		on extractDates()
			return my itemsWithTypes:(current application's NSTextCheckingTypeDate) forKeyPath:"date"
		end extractDates

		on extractAddresses()
			return my itemsWithTypes:(current application's NSTextCheckingTypeAddress) forKeyPath:"addressComponents"
		end extractAddresses
	end script
end WLWebScraper


(*
	Creates a new web scraper for a URL.

	Params:
		URLString (String) - The URL of a website to scrape.

	Returns:
		(WebScraper) - A new WebScraper script object configured for the target URL.

	Example:
		set mySite to "https://apple.com"
		set scraper to WebLib's webScraperForURLWithString: mySite
*)
on webScraperForURLWithString:URLString
	set newScraper to WLWebScraper()
	set newScraper's target to URLString
	return newScraper
end webScraperForURLWithString:

(*
	Creates a new web scraper for a website.

	Params:
		theWebsite (Website) - The website to scrape.

	Returns:
		(WebScraper) - A new WebScraper script object configured for the target website.

	Example:
		set mySite to WebLib's (website for "https://apple.com")
		set scraper to WebLib's (WebScraper for mySite)
*)
on WebScraper for theWebsite
	return my webScraperForURLWithString:(theWebsite's URLString)
end WebScraper

(*
	Percent-encodes a text string.

	Params:
		theString (String) - The string to encode.

	Returns:
		(String) - The percent-encoded string.

	Example:
		set urlComponent to WebLib's (percentEncoding for "Tim Cook & Friends")
		--> "Tim%20Cook%20%26%20Friends"
*)
on percentEncoding for theString
	set the theNSString to current application's NSString's stringWithString:theString
	set allowedCharacterSet to current application's NSCharacterSet's alphanumericCharacterSet
	return (theNSString's stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet) as text
end percentEncoding

(*
	Decodes a percent-encoded text string.

	Params:
		theString (String) - The string to decode.

	Returns:
		(String) - The percent-decoded string.

	Example:
		set urlComponent to WebLib's (percentDecoding for "Tim%20Cook%20%26%20Friends")
		--> "Tim Cook & Friends"
*)
on percentDecoding for theString
	set theNSString to current application's NSString's stringWithString:theString
	return (theNSString's stringByRemovingPercentEncoding()) as text
end percentDecoding