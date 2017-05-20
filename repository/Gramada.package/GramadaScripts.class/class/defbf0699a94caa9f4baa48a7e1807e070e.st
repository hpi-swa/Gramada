definitions
defbf0699a94caa9f4baa48a7e1807e070e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'18 November 2015 4:04:26 pm'); yourself)); add: (#id->#'bf0699a9-4caa-9f4b-aa48-a7e1807e070e'); add: (#block->[:in :out | (
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