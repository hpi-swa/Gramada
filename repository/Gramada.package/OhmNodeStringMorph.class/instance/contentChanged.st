layout
contentChanged

	| string textMorphs ohmNodeStretches stretchBlocks |
	self removeAllMorphs.
	(self ohmNode isNil
        or: [self ohmNode interval end = 0]) ifTrue: [^ self].
	string := self ohmNode interval contents.

	textMorphs := (self decomposeString: string) 
						collect: [:s | self newTextMorphWith: s.].
	self width: (textMorphs collect: [:sm | sm contents size * self characterWidth]) max.

	ohmNodeStretches := (ohmNode grammar semanticAction: (OhmCreateIntervalStretches new)) stretchesOf: ohmNode.

	ohmNodeStretches := self filterStretches: ohmNodeStretches.
	stretchBlocks := self drawStretches: ohmNodeStretches basedOn: textMorphs.

	self allignTextMorphs: textMorphs andStretches: stretchBlocks.

	self adjustOwnBounds.
	

		