definitions
defc67831543c97114990b6a99f91d1719a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:05:45 pm'); yourself)); add: (#id->#'c6783154-3c97-1149-90b6-a99f91d1719a'); add: (#block->[:in :out | [| d content rule grammar |
			content := 'ruleNamed: ruleName ifAbsent: aBlock

	^ (self ruleDeclarations at: ruleName ifAbsent: aBlock)
		dispatchedBodyOn: self'.
			rule := #MethodDeclaration .
			grammar := OhmSmalltalk.
			in ifNotEmpty: [
				| nodeOrFailure |
				nodeOrFailure := in first.
				(nodeOrFailure isKindOf: OhmNode)
					ifTrue: [content := nodeOrFailure interval stream asString.
							rule := nodeOrFailure ruleName asSymbol.
							grammar := nodeOrFailure grammar].
				(nodeOrFailure isKindOf: OhmMatchFailure)
					ifTrue: [content := nodeOrFailure state inputStream asString.
							rule := nodeOrFailure startRuleName.
							grammar := nodeOrFailure state grammar].
				]. 
			d := OhmDebugger
					debug: [grammar
					match: content
					startingFrom: rule]. 
			d] 
			value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [| d content rule grammar |
			content := ''ruleNamed: ruleName ifAbsent: aBlock

	^ (self ruleDeclarations at: ruleName ifAbsent: aBlock)
		dispatchedBodyOn: self''.
			rule := #MethodDeclaration .
			grammar := OhmSmalltalk.
			in ifNotEmpty: [
				| nodeOrFailure |
				nodeOrFailure := in first.
				(nodeOrFailure isKindOf: OhmNode)
					ifTrue: [content := nodeOrFailure interval stream asString.
							rule := nodeOrFailure ruleName asSymbol.
							grammar := nodeOrFailure grammar].
				(nodeOrFailure isKindOf: OhmMatchFailure)
					ifTrue: [content := nodeOrFailure state inputStream asString.
							rule := nodeOrFailure startRuleName.
							grammar := nodeOrFailure state grammar].
				]. 
			d := OhmDebugger
					debug: [grammar
					match: content
					startingFrom: rule]. 
			d] 
			value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)