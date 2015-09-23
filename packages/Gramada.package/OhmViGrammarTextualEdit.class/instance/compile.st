as yet unclassified
compile

	| source cst tempGrammar |
	[source := self theText asString withBlanksTrimmed.
	cst := OhmGrammarOfOhm matchContents: source startingFrom: #GrammarHeader failureAsException: true.
	tempGrammar := (OhmGrammarOfOhm synthesizedAttribute: OhmCompileGrammarHeader new)
		value: cst.

	tempGrammar grammarName ~= self ohmGrammar grammarName
		ifTrue: [^ self compileNewGrammar ].

	tempGrammar namespace ~= self ohmGrammar namespace
		ifTrue: [self ohmGrammar namespace: tempGrammar namespace].

	tempGrammar superGrammar ~= self ohmGrammar superGrammar
		ifTrue: [self ohmGrammar superGrammar: tempGrammar superGrammar].

	^ true]
		on: OhmMatchFailure
		do: [:failure | self warningSent: 'Parsing failed.'.
					  self textMorph editor notify: failure expectedText at: failure position in: self theText. . 
					  ^ false]