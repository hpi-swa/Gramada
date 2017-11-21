definitions
def7f12b5335efe5343a0eb54d991cff7a4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script priority } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7f12b533-5efe-5343-a0eb-54d991cff7a4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 November 2017 9:35:21 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script priority } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})