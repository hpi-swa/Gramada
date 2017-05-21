definitions
def0d217a0ccb9a2b4a9d2995b0ed8db3b6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0d217a0c-cb9a-2b4a-9d29-95b0ed8db3b6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '9 June 2015 10:03:23 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})