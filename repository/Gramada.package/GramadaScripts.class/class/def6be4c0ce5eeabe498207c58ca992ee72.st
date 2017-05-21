definitions
def6be4c0ce5eeabe498207c58ca992ee72
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmParsingState | ohmParsingState inputStream]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6be4c0ce-5eea-be49-8207-c58ca992ee72').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:11:34 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmParsingState | ohmParsingState inputStream]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})