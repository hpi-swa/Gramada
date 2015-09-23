as yet unclassified
unifiedAltSource: rule withMessageElement: argumentName

	| newSource |
	
	newSource := (rule boundGrammar synthesizedAttribute: ShortenInlineRuleDefinitions new)
		value: (OhmGrammarOfOhm matchContents: rule body textualRepresentation startingFrom: #Alt).
	^ '(' , newSource withBlanksTrimmed , '):' , argumentName