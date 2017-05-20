definitions
def38368f17f259ea4fa77cfe3f65f460fe
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 5:33:51 pm'); yourself)); add: (#id->#'38368f17-f259-ea4f-a77c-fe3f65f460fe'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)