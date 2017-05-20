layout
layoutUnder: aNodeMorph
	| width |
	
	self extent: self class size.
	self children 
		ifNotEmpty: [
			width := self alignSubmorphs 
						max: self class spacing]
		ifEmpty: [width := self class spacing].
	^width
	