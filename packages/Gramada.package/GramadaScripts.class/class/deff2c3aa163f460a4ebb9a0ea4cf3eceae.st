definitions
deff2c3aa163f460a4ebb9a0ea4cf3eceae
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'e3c1971a-3371-4e44-a864-7a383dd751d4'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'28 May 2015 10:19:46 am'); yourself)); add: (#id->#'f2c3aa16-3f46-0a4e-bb9a-0ea4cf3eceae'); add: (#block->[:in :out | (
	[:objects | 
	(objects first value 
		ownAndInheritedRules 
			sorted: [:a :b | a ruleName < b ruleName]) ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | 
	(objects first value 
		ownAndInheritedRules 
			sorted: [:a :b | a ruleName < b ruleName]) ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)