private
internalGetText
	| list |
	list := method stamp substrings.
	list ifEmpty: [ ^ 'No information available' ].
	
	^ String streamContents:[ :s |
			s << 'Last Modification :' << Character cr.
			s << Character tab << 'date:' << Character tab << (list allButFirst joinUsing: ' ') asTimeStamp << Character cr.
 			s << Character tab << 'by:' << Character tab << Character tab << list first ]