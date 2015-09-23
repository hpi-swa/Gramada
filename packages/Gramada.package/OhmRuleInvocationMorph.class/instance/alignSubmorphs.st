layout
alignSubmorphs

	| start size |
	self assert: children notEmpty.

	size := self children
		inject: 0
		into: [ :pos :morph | pos + (morph layoutUnder: self)] .
	start := self bottomCenter + (0@self class spacing).
	start := ((start x - (self children first width / 2))@start y).
	self children inject: start into: [:position :morph |
		morph 
			x: position x
			y: position y.
		position 
			+ (morph layoutWidth@0) 
			+ (self class horizontalSpacing@0)].
	
	self layoutWidth: size.

	self children 
			do: [:c | c alignEdgeFromParent: self].

	^ size