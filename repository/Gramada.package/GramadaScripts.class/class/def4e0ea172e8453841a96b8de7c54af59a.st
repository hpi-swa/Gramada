definitions
def4e0ea172e8453841a96b8de7c54af59a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:text | #object -> text] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4e0ea172-e845-3841-a96b-8de7c54af59a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '28 May 2015 10:35:30 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:text | #object -> text] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')})