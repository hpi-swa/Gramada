definitions
defc67831543c97114990b6a99f91d1719a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [| d content rule grammar |
			content := 'ruleNamed: ruleName ifAbsent: aBlock

	^ (self ruleDeclarations at: ruleName ifAbsent: aBlock)
		dispatchedBodyOn: self'.
			rule := #MethodDeclaration .
			grammar := OhmSmalltalk.
			in ifNotEmpty: [
				| nodeOrFailure |
				nodeOrFailure := in first.
				(nodeOrFailure succeeded)
					ifTrue: [content := nodeOrFailure cst interval stream asString.
							rule := nodeOrFailure cst ruleName asSymbol.
							grammar := nodeOrFailure cst grammar]
					ifFalse: [content := nodeOrFailure failure state inputStream asString.
							rule := nodeOrFailure failure startRuleName.
							grammar := nodeOrFailure failure state grammar]]. 
			d := OhmDebugger debug: [grammar match: content startingFrom: rule]. 
			d] 
			value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c6783154-3c97-1149-90b6-a99f91d1719a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:05:45 pm')})).
(#sourceCode -> '[:in :out | [| d content rule grammar |
			content := ''ruleNamed: ruleName ifAbsent: aBlock

	^ (self ruleDeclarations at: ruleName ifAbsent: aBlock)
		dispatchedBodyOn: self''.
			rule := #MethodDeclaration .
			grammar := OhmSmalltalk.
			in ifNotEmpty: [
				| nodeOrFailure |
				nodeOrFailure := in first.
				(nodeOrFailure succeeded)
					ifTrue: [content := nodeOrFailure cst interval stream asString.
							rule := nodeOrFailure cst ruleName asSymbol.
							grammar := nodeOrFailure cst grammar]
					ifFalse: [content := nodeOrFailure failure state inputStream asString.
							rule := nodeOrFailure failure startRuleName.
							grammar := nodeOrFailure failure state grammar]]. 
			d := OhmDebugger debug: [grammar match: content startingFrom: rule]. 
			d] 
			value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})