accessing
filter
	
	^ [:object :event | 
		{ OhmChangeNotifier ruleKind 
			-> [ event item boundGrammar = object] . 
		   OhmChangeNotifier grammarKind 
			-> [ event oldGrammar grammarName = object grammarName ] }
			anySatisfy: [ :assoc | event itemKind = assoc key
									ifTrue: [ assoc value value]
									ifFalse: [false]]]