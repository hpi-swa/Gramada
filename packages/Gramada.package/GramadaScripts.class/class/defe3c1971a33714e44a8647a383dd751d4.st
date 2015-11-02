definitions
defe3c1971a33714e44a8647a383dd751d4
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'44bdd3d3-ea3e-5446-8a1a-5edacc6d70f1'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 5:37:05 pm'); yourself)); add: (#id->#'e3c1971a-3371-4e44-a864-7a383dd751d4'); add: (#block->[:in :out | (
	[:objects | 
	(objects first value 
		ruleDeclarations associations 
			sorted: [:a :b | a key < b key])
			collect: [ :r | r value] ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | 
	(objects first value 
		ruleDeclarations associations 
			sorted: [:a :b | a key < b key])
			collect: [ :r | r value] ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)