definitions
defeeba6bcc2968e44f9a882b2a25cbfd03
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmDebugger | ohmDebugger currentState]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'eeba6bcc-2968-e44f-9a88-2b2a25cbfd03').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:11:15 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmDebugger | ohmDebugger currentState]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})