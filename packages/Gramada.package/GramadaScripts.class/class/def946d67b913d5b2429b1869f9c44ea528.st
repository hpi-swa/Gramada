definitions
def946d67b913d5b2429b1869f9c44ea528
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'454a1ffa-14f5-964f-ba35-1b36011442e9'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'28 May 2015 10:19:46 am'); yourself)); add: (#id->#'946d67b9-13d5-b242-9b18-69f9c44ea528'); add: (#block->[:in :out | out addAll: (in collect: [:r | {r boundGrammar ifNil: ['base'] ifNotNilDo: [:g | g grammarName]. r}])]); add: (#sourceCode->'[:in :out | out addAll: (in collect: [:r | {r boundGrammar ifNil: [''base''] ifNotNilDo: [:g | g grammarName]. r}])]'); yourself)