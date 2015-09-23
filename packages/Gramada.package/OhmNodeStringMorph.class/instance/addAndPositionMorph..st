layout
addAndPositionMorph: aMorph

	| position |
	position := self submorphs inject: 0 
		into: [:overallHeight :morph | overallHeight + morph height].
	self addMorph: aMorph.
	aMorph topLeftInOwner: 0@position.