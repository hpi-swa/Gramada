initialize-release
initializeColorMap: stretchCollections

	| allStretches startColor |
	self colorMap: Dictionary new.
	allStretches := ((stretchCollections gather: [:c | c]) collect: [:s | { s interval length . s} ]) asGroups.

	startColor := Color orange muchDarker.
	(allStretches
		sorted: [:a :b | a first <= b first]) reversed
		withIndexDo: [:g :index | | factor |
				factor := index.
				self colorMap at: g first put: (startColor adjustSaturation: factor negated * (0.7 / allStretches size) brightness: factor * (1 / allStretches size)) ].