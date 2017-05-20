creation
newStretchLineFor: aStretch on: textMorph

	^ OhmStretchLineMorph new
		ohmNode: aStretch;
		textMorph: textMorph;
		color: (self colorMap at: aStretch interval length)
		yourself