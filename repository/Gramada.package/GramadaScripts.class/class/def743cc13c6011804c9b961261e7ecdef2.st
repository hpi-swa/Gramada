definitions
def743cc13c6011804c9b961261e7ecdef2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:ohmNode | {
		[:ohmNodeOrFailure | (ohmNodeOrFailure failed)
		ifTrue: [#backgroundColor -> Color red] 
		ifFalse: [#backgroundColor -> Color green]] value: ohmNode }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'743cc13c-6011-804c-9b96-1261e7ecdef2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '1 July 2015 6:28:27 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:ohmNode | {
		[:ohmNodeOrFailure | (ohmNodeOrFailure failed)
		ifTrue: [#backgroundColor -> Color red] 
		ifFalse: [#backgroundColor -> Color green]] value: ohmNode }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})