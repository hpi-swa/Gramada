creation
newStretchLineFor: aStretch

	^ OhmStretchLineMorph new
		ohmNode: aStretch;
		color: (self colorMap at: aStretch ruleName)
		yourself