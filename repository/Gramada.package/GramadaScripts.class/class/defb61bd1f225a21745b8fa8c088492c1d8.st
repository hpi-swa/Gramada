definitions
defb61bd1f225a21745b8fa8c088492c1d8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [Text fromString: ''] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b61bd1f2-25a2-1745-b8fa-8c088492c1d8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '28 May 2015 10:20:05 am')})).
(#sourceCode -> '[:in :out | [Text fromString: ''''] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})