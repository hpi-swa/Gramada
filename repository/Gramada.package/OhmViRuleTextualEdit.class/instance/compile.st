evaluation
compile
	
	[| rules |
	rules := OhmCompiler 
				compileRule: self theText asString withBlanksTrimmed , Character cr 
				forGrammar: self ohmRule boundGrammar.
	rules := rules select: [:r | r isInlineRule not].
	self assert: rules size = 1.
	self ohmRule: rules first.
	 ^ true]
		on: OhmMatchFailure
		do: [ :failure | 
					self warningSent: 'Parsing failed.'.
				 	self textMorph editor 
						notify: failure expectedText 
						at: failure position
						in: self theText. . 
					 ^ false].

	