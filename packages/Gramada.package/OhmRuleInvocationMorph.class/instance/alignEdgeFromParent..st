layout
alignEdgeFromParent: aMorph
	
	| source target vertices color |
	aMorph ifNil: [^self].
	
	source := aMorph bottomCenter.
	target := self topCenter.
	vertices := ((source - target) x abs < 2) 
		ifTrue: [ "Smoothing for straight lines --pre" {source . (source x)@(target y) } ]
		ifFalse: [ Array 
					with: source
					with: source + (0@((target y - source y) / 2)) floor
					with: target - (0@((target y - source y) / 2)) floor
					with: target ].
		
	color := Color gray darker. 

	self lineToParent 
		ifNotNilDo: [ :line |
			line setVertices: vertices.]
		ifNil: [
			self lineToParent: ((PolygonMorph 
				vertices: vertices
				color: (Color transparent )
				borderWidth: 1
				borderColor: color)
					makeOpen;
					openInWorld;
					yourself).
			self addMorph: self lineToParent. ]