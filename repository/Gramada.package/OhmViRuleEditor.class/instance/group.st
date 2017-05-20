accessing - object
group

	^ self ohmRule boundGrammar
		ifNil: ['No grammar']
		ifNotNilDo: [:g | g grammarName]