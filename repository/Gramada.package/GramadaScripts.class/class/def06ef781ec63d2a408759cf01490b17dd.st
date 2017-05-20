definitions
def06ef781ec63d2a408759cf01490b17dd
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'d770ceb9-d700-b547-b110-03937feb2895'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'5 June 2015 1:26:43 pm'); yourself)); add: (#id->#'06ef781e-c63d-2a40-8759-cf01490b17dd'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ((ohmGrammar grammarName))] value: obj}]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ((ohmGrammar grammarName))] value: obj}]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)