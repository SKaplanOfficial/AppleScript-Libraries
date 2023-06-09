#@osa-lang:AppleScript
use framework "Foundation"
use framework "PDFKit"
use scripting additions

property X_AXIS : 1
property Y_AXIS : 0

(*
	Initializes a PLPDF script object.

	Params:
		theTarget (String) - The file path or remote URL of a PDF document.

	Returns
		(PLPDF) - The newly created PDF object.
*)
on PDF(theTarget)
	script PLPDF
		property target : theTarget
		property pageCount : missing value
		property metadata : missing value

		(*
			Gets the PDFKit PDFDocument object representation of the PDF.
		*)
		on _getPDFDocument()
			set fileURL to missing value
			if my target starts with "/" then
				-- The target is a file on the disk
				set fileURL to current application's NSURL's fileURLWithPath:(my target)
			else
				-- The target is a remote PDF
				set fileURL to current application's NSURL's URLWithString:(my target)
			end if

			return current application's PDFDocument's alloc()'s initWithURL:fileURL
		end _getPDFDocument

		on extractText()
			set theDocument to my _getPDFDocument()
			return theDocument's |string|() as text
		end extractText

		(*
			Flips each page of the PDF vertically or horizontally.

			Params:
				axis (Number) - The axis to flip each page across. One of X_AXIS, Y_AXIS, 0, or 1.
				filePath (String) - The path to save the resulting PDF in.
		*)
		on flip over axis into filePath : (missing value)
			set pdfDoc to my _getPDFDocument()

			if filePath is missing value then
				if my target starts with "/" then
					set filePath to my target
				else
					error "Must provide an output destination."
				end if
			end if

			repeat with i from 0 to ((pdfDoc's pageCount()) - 1)
				set thePDFPage to (pdfDoc's pageAtIndex:i)
				set pdfRect to (thePDFPage's boundsForBox:(current application's kPDFDisplayBoxMediaBox))
				set flippedPdfImage to (current application's NSImage's alloc()'s initWithSize:(item 2 of pdfRect))

				flippedPdfImage's lockFocus()
				set transform to current application's NSAffineTransform's alloc()'s init()

				if axis is 0 then
					(transform's scaleXBy:-1 yBy:1)
					(transform's translateXBy:(-(item 1 of item 2 of pdfRect)) yBy:0)
				else if axis is 1 then
					(transform's scaleXBy:1 yBy:-1)
					(transform's translateXBy:0 yBy:(-(item 2 of item 2 of pdfRect)))
				else
					error "Invalid axis."
				end if
				transform's concat()
				(thePDFPage's drawWithBox:(current application's kPDFDisplayBoxMediaBox))
				flippedPdfImage's unlockFocus()

				set newPage to (current application's PDFPage's alloc()'s initWithImage:flippedPdfImage)

				(pdfDoc's removePageAtIndex:i)
				(pdfDoc's insertPage:newPage atIndex:i)
			end repeat

			-- Write the modified PDF data to the disk
			set flippedPdfData to pdfDoc's dataRepresentation()
			flippedPdfData's writeToFile:filePath atomically:true
		end flip

		(*
			Rotates each page of the PDF by the specified number of degrees.

			Params:
				degrees (Number) - The amount to rotate the pages by.
				filePath (String) - The path to save the resulting PDF in.
		*)
		on rotate by degrees into filePath : (missing value)
			set pdfDoc to my _getPDFDocument()

			if filePath is missing value then
				if my target starts with "/" then
					set filePath to my target
				else
					error "Must provide an output destination."
				end if
			end if

			-- Loop through the pages and rotate each one
			repeat with i from 0 to ((pdfDoc's pageCount()) - 1)
				set PDFPage to (pdfDoc's pageAtIndex:i)
				(PDFPage's setRotation:((PDFPage's |rotation|()) + degrees))
			end repeat

			-- Write the modified PDF data to a new file
			set rotatedPdfData to pdfDoc's dataRepresentation()
			rotatedPdfData's writeToFile:filePath atomically:true
		end rotate

		(*
			Saves the PDF at the specified path.

			Params:
				filePath (String) - The path to save the PDF at. Optional.
		*)
		on save in filePath : (missing value)
			set theDocument to my _getPDFDocument()

			if filePath is missing value then
				if my target starts with "/" then
					set filePath to my target
				else
					error "Must provide an output destination."
				end if
			end if

			theDocument's writeToFile:filePath
		end save

		(*
			Opens the PDF.
		*)
		on open
			if my target starts with "/" then
				tell application "Preview"
					activate
					open target
				end tell
			else
				open location target
			end if
		end open
	end script

	if theTarget does not end with ".pdf" then
		error theTarget & " is not a PDF file."
	end if

	set theDocument to PLPDF's _getPDFDocument()
	set PLPDF's pageCount to theDocument's pageCount() as number
	set PLPDF's metadata to theDocument's documentAttributes() as record

	return PLPDF
end PDF
