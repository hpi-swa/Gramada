initialization
updateSourceFromChangeEvent: modifiedEvent

	modifiedEvent oldRule ruleName = self ohmRule ruleName
		ifTrue: [ self object: modifiedEvent newRule.]