definitions
def3c11ba4412729d42b5008223548c977e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 5:33:44 pm'); yourself)); add: (#id->#'3c11ba44-1272-9d42-b500-8223548c977e'); add: (#block->[:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)