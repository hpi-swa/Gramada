as yet unclassified
compileNewGrammar 

	| source cst |

	source := self theText asString withBlanksTrimmed , '{ firstRule = ''start'' }'.
	OhmGrammar makeAndInstallGrammar: source in: nil. 
	^ true