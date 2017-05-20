evaluation
openIt
	
	[self artifactRequested: (self ohmRule boundGrammar ruleDeclarationNamed:
		self textMorph selection asString withBlanksTrimmed asSymbol)]
		on: OhmUndeclaredRuleError 
		do: [ ]