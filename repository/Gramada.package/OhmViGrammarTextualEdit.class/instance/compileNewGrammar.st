as yet unclassified
compileNewGrammar 

	| source |

	source := self theText asString withBlanksTrimmed , '{ firstRule = "start" }'.
	OhmGrammar makeAndInstallGrammar: source in: nil. 
	^ true