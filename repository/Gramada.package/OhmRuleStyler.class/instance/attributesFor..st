private
attributesFor: aSymbol

	^ (self class themeProperties detect: [:tuple | tuple first = aSymbol ]) second collect: [:property |
		property isColor 
			ifTrue: [TextColor color: property]
			ifFalse: [property]]