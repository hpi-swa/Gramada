as yet unclassified
compile

	| source result tempGrammar |
	source := self theText asString withBlanksTrimmed.
	result := OhmGrammarOfOhm match: source startingFrom: #GrammarHeader.
	
	result succeeded
		ifTrue: [
			tempGrammar := (OhmGrammarOfOhm synthesizedAttribute: OhmCompileGrammarHeader new)
				value: result.

			tempGrammar grammarName ~= self ohmGrammar grammarName
				ifTrue: [^ self compileNewGrammar ].

			tempGrammar namespace ~= self ohmGrammar namespace
				ifTrue: [self ohmGrammar namespace: tempGrammar namespace].

			tempGrammar superGrammar ~= self ohmGrammar superGrammar
				ifTrue: [self ohmGrammar superGrammar: tempGrammar superGrammar].]
		ifFalse: [ self warningSent: 'Parsing failed.'.
				 self textMorph editor notify: (result failure expectedText at: result failure position in: self theText). 
					  ^ false]