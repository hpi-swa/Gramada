definitions
def87d982095c78e94cb85cfcf13dc9e3d2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar hash] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'87d98209-5c78-e94c-b85c-fcf13dc9e3d2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '4 June 2015 2:23:27 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar hash] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')})