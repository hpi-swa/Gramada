layout
allignTextMorphs: textMorphs andStretches: stretchBlocks

	| width |
	width := (textMorphs collect: [:sm | sm contents size * self characterWidth]) max.

	textMorphs with: stretchBlocks do: [ :tm :stretchBlock | 
		self addAndPositionMorph: tm.
		tm width: width.
		tm height: tm defaultLineHeight.

		self addAndPositionMorph: stretchBlock.
		stretchBlock width: width.

		"Separator morph"
		self addAndPositionMorph: 
			(RectangleMorph new 
				width: width; 
				borderWidth: 0; 
				color: Color white; 
				height: self distanceBetweenLines; 
				yourself).].
	

		