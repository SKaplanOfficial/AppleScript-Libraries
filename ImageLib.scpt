#@osa-lang:AppleScript
use framework "Foundation"
use framework "AppKit"
use framework "Quartz"
use scripting additions

property NSImage : class "NSImage"

property X_AXIS : 1
property Y_AXIS : 0

(*
	Initializes an ILImage script object.

	Params:
		theTarget (String) - The file path or remote URL to an image.

	Returns:
		(ILImage) - The newly created image object.
*)
on Image(theTarget)
	script ILImage
		property target : theTarget
		property width : missing value
		property height : missing value
		property base64data : missing value
		property modified : false

		(*
			Gets the NSImage object representation of the image.
		*)
		on _getNSImage()
			set _NSImage to current application's NSClassFromString("NSImage")
			set theImage to missing value

			if my modified is true then
				set theImageData to current application's NSData's alloc()'s initWithBase64EncodedString:(my base64data) options:0
				return current application's NSImage's alloc()'s initWithData:theImageData
			end if

			if my target starts with "/" then
				-- The target is an image file on the disk
				return current application's NSImage's alloc()'s initWithContentsOfFile:(my target)
			else if my target contains ":" then
				-- The target is a remote URL
				set theURL to current application's NSURL's URLWithString:(my target)
				return current application's NSImage's alloc()'s initWithContentsOfURL:theURL
			else if my target is "---" then
				return (missing value)
			else
				error "Cannot create image from " & (my target)
			end if
		end _getNSImage

		(*
			Flips the image vertically or horizontally.

			Params:
				axis (Number) - The axis to flip the image across. One of X_AXIS, Y_AXIS, 0, or 1.
		*)
		on flip over axis
			set theImage to my _getNSImage()
			set flippedImage to (current application's NSImage's alloc()'s initWithSize:(theImage's |size|()))

			flippedImage's lockFocus()
			set transform to current application's NSAffineTransform's alloc()'s init()
			if axis is 0 then
				(transform's scaleXBy:-1 yBy:1)
				(transform's translateXBy:(0 - (my width)) yBy:0)
			else if axis is 1 then
				(transform's scaleXBy:1 yBy:-1)
				(transform's translateXBy:0 yBy:(0 - (my height)))
			else
				error "Invalid axis."
			end if
			transform's concat()

			set theRect to current application's NSMakeRect(0, 0, my width, my height)
			theImage's drawInRect:theRect
			flippedImage's unlockFocus()

			set flippedImageData to flippedImage's TIFFRepresentation()
			set my base64data to (flippedImageData's base64EncodedStringWithOptions:0) as string
			set my modified to true
		end flip

		(*
			Rotates the image clockwise by the specified number of degrees.

			Informed by https://stackoverflow.com/a/31702419.

			Params:
				degrees (Number) - The amount to rotate the image.
		*)
		on rotate by degrees
			set theImage to my _getNSImage()

			set imageBounds to current application's NSMakeRect(0, 0, my width, my height)
			set pathBounds to current application's NSBezierPath's bezierPathWithRect:imageBounds

			set theTransform to current application's NSAffineTransform's transform()
			theTransform's rotateByDegrees:-degrees
			pathBounds's transformUsingAffineTransform:theTransform

			set rotatedBounds to current application's NSMakeRect(0, 0, item 1 of item 2 of pathBounds's |bounds|(), item 2 of item 2 of pathBounds's |bounds|())
			set rotatedImage to current application's NSImage's alloc()'s initWithSize:(item 2 of rotatedBounds)

			set item 1 of imageBounds to {(current application's NSMidX(rotatedBounds)) - (current application's NSWidth(imageBounds)) / 2, (current application's NSMidY(rotatedBounds)) - (current application's NSHeight(imageBounds)) / 2}

			set transform to current application's NSAffineTransform's transform()
			transform's translateXBy:((item 1 of item 2 of rotatedBounds) / 2) yBy:((item 2 of item 2 of rotatedBounds) / 2)
			transform's rotateByDegrees:-degrees
			transform's translateXBy:((item 1 of item 2 of rotatedBounds) / -2) yBy:((item 2 of item 2 of rotatedBounds) / -2)

			rotatedImage's lockFocus()
			transform's concat()
			theImage's drawInRect:imageBounds fromRect:(current application's CGRectZero) operation:(current application's NSCompositingOperationCopy) fraction:1.0
			rotatedImage's unlockFocus()

			set rotatedImageData to rotatedImage's TIFFRepresentation()
			set my base64data to (rotatedImageData's base64EncodedStringWithOptions:0) as string
			set my width to current application's NSWidth(rotatedBounds)
			set my height to current application's NSHeight(rotatedBounds)
			set my modified to true
		end rotate

		(*
			Extracts text from the image.

			Returns:
				({String}) - The list of text items found in the image.
		*)
		on extractText()
			set theImage to my _getNSImage()
			set requestHandler to current application's VNImageRequestHandler's alloc()'s initWithData:(theImage's TIFFRepresentation()) options:(current application's NSDictionary's alloc()'s init())
			set textRequest to current application's VNRecognizeTextRequest's alloc()'s init()
			requestHandler's performRequests:{textRequest} |error|:(missing value)
			set textResults to textRequest's results()
			set textItems to {}
			repeat with observation in textResults
				copy (first item in (observation's topCandidates:1))'s |string|() as text to end of textItems
			end repeat
			return textItems
		end extractText

		(*
			Gets a list of possible classifications for objects in the image.

			Params:
				confidenceThreshold (Real) - The minimum confidence level of each returned classification.

			Returns:
				({{identifier: String, confidence: Real}}) - The list of classifications.
		*)
		on classifications above confidenceThreshold
			set theImage to my _getNSImage()
			set requestHandler to current application's VNImageRequestHandler's alloc()'s initWithData:(theImage's TIFFRepresentation()) options:(current application's NSDictionary's alloc()'s init())
			set classificationRequest to current application's VNClassifyImageRequest's alloc()'s init()
			requestHandler's performRequests:{classificationRequest} |error|:(missing value)

			set classificationResults to classificationRequest's results()
			set classifications to {}
			repeat with observation in classificationResults
				if observation's confidence() > confidenceThreshold then
					copy {identifier:observation's identifier() as text, confidence:observation's confidence() as real} to end of classifications
				end if
			end repeat
			return classifications
		end classifications

		(*
			Gets the payload text of all barcodes, QR codes, etc. in the image.

			Returns:
				({String}) - The list of payload texts.
		*)
		on extractPayloads()
			set theImage to my _getNSImage()
			set requestHandler to current application's VNImageRequestHandler's alloc()'s initWithData:(theImage's TIFFRepresentation()) options:(current application's NSDictionary's alloc()'s init())
			set barcodeRequest to current application's VNDetectBarcodesRequest's alloc()'s init()
			requestHandler's performRequests:{barcodeRequest} |error|:(missing value)

			set barcodeResults to barcodeRequest's results()
			set payloads to {}
			repeat with observation in barcodeResults
				copy (observation's payloadStringValue() as text) to end of payloads
			end repeat
			return payloads
		end extractPayloads

		(*
			Counts the number of human faces in the image.

			Returns:
				(Integer) - The number of faces observed in the image.
		*)
		on countFaces()
			set theImage to my _getNSImage()
			set requestHandler to current application's VNImageRequestHandler's alloc()'s initWithData:(theImage's TIFFRepresentation()) options:(current application's NSDictionary's alloc()'s init())
			set faceRequest to current application's VNDetectFaceRectanglesRequest's alloc()'s init()
			requestHandler's performRequests:{faceRequest} |error|:(missing value)

			set faceResults to faceRequest's results()
			return count of faceResults
		end countFaces

		(*
			Saves the image at the provided file path.

			Params:
				filePath (String) - The path to save the image at.
				fileType (String) - The image type / file extension. One of "png", "jpg", "jpeg", "gif", "bmp", or "tiff".

			Returns:
				(Boolean) - True if the image was saved successfully.
		*)
		on save in filePath : (missing value) as fileType : "png"
			set theImageData to missing value
			if my modified is true then
				set theImageData to current application's NSData's alloc()'s initWithBase64EncodedString:(my base64data) options:0
			else
				set theImage to my _getNSImage()
				set theImageData to theImage's TIFFRepresentation()
			end if

			set theBitmap to current application's NSBitmapImageRep's imageRepWithData:theImageData

			if filePath is missing value then
				if my target starts with "/" then
					set filePath to my target
				else
					error "Must provide an output destination."
				end if
			end if

			set theType to current application's NSBitmapImageFileTypePNG
			ignoring case
				if fileType is "jpg" or fileType is "jpeg" then
					set theType to current application's NSBitmapImageFileTypeJPEG
				else if fileType is "gif" then
					set theType to current application's NSBitmapImageFileTypeGIF
				else if fileType is "bmp" then
					set theType to current application's NSBitmapImageFileTypeBMP
				else if fileType is "tiff" then
					set theType to current application's NSBitmapImageFileTypeTIFF
				end if
			end ignoring

			set theData to theBitmap's representationUsingType:theType |properties|:(missing value)

			set theURL to current application's |NSURL|'s fileURLWithPath:filePath
			theData's writeToURL:theURL atomically:true
		end save

		(*
			Opens the image, accounting for any modifications.

			Returns:
				(Boolean) - True if the image was opened successfully.
		*)
		on open
			set theImageData to missing value
			if my modified is true then
				set theImageData to current application's NSData's alloc()'s initWithBase64EncodedString:(my base64data) options:0
			else
				set theImage to my _getNSImage()
				set theImageData to theImage's TIFFRepresentation()
			end if

			set theBitmap to current application's NSBitmapImageRep's imageRepWithData:theImageData
			set theData to theBitmap's representationUsingType:(current application's NSBitmapImageFileTypePNG) |properties|:(missing value)

			set theTempFile to POSIX path of (current application's NSTemporaryDirectory() as string) & "Image.png"
			set theURL to current application's |NSURL|'s fileURLWithPath:theTempFile
			theData's writeToURL:theURL atomically:true
			set theWorkspace to current application's NSWorkspace's sharedWorkspace()
			theWorkspace's openURL:theURL
		end open
	end script

	set theImage to ILImage's _getNSImage()

	if theImage is not missing value then
		set ILImage's base64data to (theImage's TIFFRepresentation()'s base64EncodedStringWithOptions:0) as string
		set ILImage's width to theImage's |size|()'s width()
		set ILImage's height to theImage's |size|()'s height()
	end if

	return ILImage
end Image

(*
	Extract texts from an image.

	Syn. ILImage's extractText()

	Params:
		theImage (ILImage) - The image to extract text from.

	Returns:
		({String}) - The list of text items found in the image.

*)
on extractText from theImage
	return theImage's extractText()
end extractText

(*
	Gets a list of possible classifications for objects in an image.

	Syn. ILImage's classifications above confidenceThreshold

	Params:
		theImage (ILImage) - The image to get classifications for.
		confidenceThreshold (Real) - The minimum confidence level of each returned classification.

	Returns:
		({{identifier: String, confidence: Real}}) - The list of classifications.
*)
on classifications for theImage above confidenceLevel
	return theImage's (classifications above confidenceLevel)
end classifications

(*
	Gets the payload text of all barcodes, QR codes, etc. in an image.

	Syn. ILImage's extractPayloads()

	Params:
		theImage (ILImage) - The image to extract payloads from.

	Returns:
		({String}) - The list of payload texts.
*)
on extractPayloads from theImage
	return theImage's extractPayloads()
end extractPayloads

(*
	Initializes an ILImage script object from a system symbol.

	Params:
		symbolName (String) - The name the target system symbol.
		pointSize (Number) - The font size of the symbol.

	Returns:
		(ILImage) - The newly created image object.
*)
on Symbol(symbolName, pointSize)
	set imageObj to Image("---")

	set theConfig to current application's NSImageSymbolConfiguration's configurationWithPointSize:pointSize weight:(current application's NSFontWeightRegular)
	set theImage to current application's NSImage's imageWithSystemSymbolName:symbolName accessibilityDescription:(missing value)
	set theImage to theImage's imageWithSymbolConfiguration:theConfig

	set imageObj's base64data to (theImage's TIFFRepresentation()'s base64EncodedStringWithOptions:0) as string
	set imageObj's width to theImage's |size|()'s width()
	set imageObj's height to theImage's |size|()'s height()
	set imageObj's modified to true

	return imageObj
end Symbol

(*
	Creates an ILImage object from data.

	Syn. imageFromData:theData

	Params:
		theData («data», String, NSData) - The data of an image, as an AppleScript or Objective-C data class, or as a base 64 encoded string.

	Returns:
		(ILImage) - The new image object.
*)
on createImage from theData
	if theData is missing value then
		error "Data is missing value"
	end if

	set imageObj to Image("---")
	set theImage to missing value

	if class of theData is text then
		-- The data is a base64 string
		set imageObj's base64data to theData
		set base64data to current application's NSData's alloc()'s initWithBase64EncodedString:theData options:0
		set theImage to current application's NSImage's alloc()'s initWithData:base64data
	else
		try
			if (class of theData as text) contains "picture" then
				-- The data is an AppleScript picture
				set theTempFile to POSIX path of (current application's NSTemporaryDirectory() as string) & "tmp.data"
				set fileRef to open for access theTempFile with write permission
				try
					write theData to fileRef
					close access fileRef
				on error
					close access fileRef
				end try

				set theURL to current application's |NSURL|'s fileURLWithPath:theTempFile
				set theImage to current application's NSImage's alloc()'s initWithContentsOfFile:theTempFile
				set imageObj's base64data to (theImage's TIFFRepresentation()'s base64EncodedStringWithOptions:0) as string
			end if
		on error err
			-- The data is (probably) an NSData object
			try
				set imageObj's base64data to (theData's base64EncodedStringWithOptions:0) as string
				set theImage to current application's NSImage's alloc()'s initWithData:theData
			end try
		end try
	end if

	if theImage is missing value then
		error "Could not convert data to base 64 string."
	end if

	set imageObj's modified to true
	set imageObj's width to theImage's |size|()'s width()
	set imageObj's height to theImage's |size|()'s height()

	return imageObj
end createImage

on imageFromData:theData
	return my (createImage from theData)
end imageFromData:

(*
	Rotates an image clockwise by the specifies number of degrees.

	Syn. rotate(theImage, degrees), ILImage's rotate by degrees

	Params:
		theImage (ILImage) - The image object to rotate.
		degrees (Number) - The amount to rotate the image.
*)
on rotatation of theImage by degrees
	theImage's (rotate by degrees)
end rotatation

(*
	Rotates an image clockwise by the specifies number of degrees.

	Syn. rotation of theImage by degrees, ILImage's rotate by degrees

	Params:
		theImage (ILImage) - The image object to rotate.
		degrees (Number) - The amount to rotate the image.
*)
on rotate(theImage, degrees)
	theImage's (rotate by degrees)
end rotate