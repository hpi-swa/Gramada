definitions
def7edc593b3bddfe4c8177cfab9dec78f2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7edc593b-3bdd-fe4c-8177-cfab9dec78f2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 January 2015 11:47:33 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})