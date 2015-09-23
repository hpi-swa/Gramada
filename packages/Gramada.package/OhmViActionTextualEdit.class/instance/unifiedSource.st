accessing
unifiedSource 

	| cst result matchingRules argumentNames string lines |

	lines := self method getSource asString lines.
	string := lines first.
	
	cst := OhmSmalltalk 
			matchContents: string 
			startingFrom: #KeywordMethodHeader.
	cst = false ifTrue: [^ self method getSource ].
	argumentNames := (OhmSmalltalk synthesizedAttribute: (OhmArgumentsOfKeywordMessageHeader new)) value: cst.

	argumentNames := argumentNames copyFrom: 2 to: argumentNames size.
	
	matchingRules := OhmGrammarSmalltalkProxy subclasses 
		gather: [:p | p OhmInstance rules values].
	matchingRules := matchingRules select: [:r | 
		string beginsWith: (OhmAttributes ruleNameToMessageName: r ruleName)].

	result := string.
	^ (({matchingRules 
		ifNotEmpty: [ 
			result := (matchingRules first body isKindOf: OhmPExprAlt)
				ifTrue: [ self unifiedAltSource: matchingRules first withMessageElement:  argumentNames first ]
				ifFalse: [self combineRule: matchingRules first 
							andMessageElements: argumentNames].
			result]} , lines allButFirst) inject: '' into: [:r :s | r , Character cr , s]) withBlanksTrimmed 