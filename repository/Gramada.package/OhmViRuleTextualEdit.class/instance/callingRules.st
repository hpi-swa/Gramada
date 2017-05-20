as yet unclassified
callingRules
	
	| rawSelector rule callers |
	rawSelector := self textMorph 
		selection asString withBlanksTrimmed asSymbol.
	
	[rule := self ohmRule boundGrammar ruleDeclarations at: rawSelector.
	callers := rule callersToMe collect: [:r | r enclosingRule ].
	^ callers asSet asArray]
		on: OhmUndeclaredRuleError 
		do: [^ #()]