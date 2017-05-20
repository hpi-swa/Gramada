definitions
defa4917562292656459322b89a3cefc7d3
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'38368f17-f259-ea4f-a77c-fe3f65f460fe'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'28 May 2015 10:19:46 am'); yourself)); add: (#id->#'a4917562-2926-5645-9322-b89a3cefc7d3'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)