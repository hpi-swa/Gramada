definitions
def4e0ea172e8453841a96b8de7c54af59a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'28 May 2015 10:35:30 am'); yourself)); add: (#id->#'4e0ea172-e845-3841-a96b-8de7c54af59a'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:text | #object -> text] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:text | #object -> text] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)