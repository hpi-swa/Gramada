definitions
def743cc13c6011804c9b961261e7ecdef2
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'1 July 2015 6:28:27 pm'); yourself)); add: (#id->#'743cc13c-6011-804c-9b96-1261e7ecdef2'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:ohmNode | {
		[:ohmNodeOrFailure | (ohmNodeOrFailure isKindOf: OhmMatchFailure)
		ifTrue: [#backgroundColor -> Color red] 
		ifFalse: [#backgroundColor -> Color green]] value: ohmNode }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:ohmNode | {
		[:ohmNodeOrFailure | (ohmNodeOrFailure isKindOf: OhmMatchFailure)
		ifTrue: [#backgroundColor -> Color red] 
		ifFalse: [#backgroundColor -> Color green]] value: ohmNode }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)