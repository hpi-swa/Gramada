definitions
defbf0699a94caa9f4baa48a7e1807e070e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | 
	(objects first value 
		ruleDeclarations associations 
			sorted: [:a :b | a key < b key])
			collect: [ :r | r value] ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'bf0699a9-4caa-9f4b-aa48-a7e1807e070e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '18 November 2015 4:04:26 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | 
	(objects first value 
		ruleDeclarations associations 
			sorted: [:a :b | a key < b key])
			collect: [ :r | r value] ]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})