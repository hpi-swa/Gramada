evaluation
clear
	| text |
	text := self ohmRule isInlineRule
		ifFalse: [ self ohmRule textualRepresentation ]
		ifTrue: [	self ohmRule enclosingRule textualRepresentation ].

	text
		ifNotNilDo: [:t | self theText: text withBlanksTrimmed , Character cr ]