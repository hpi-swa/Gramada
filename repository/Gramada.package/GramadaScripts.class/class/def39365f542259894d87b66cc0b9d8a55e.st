definitions
def39365f542259894d87b66cc0b9d8a55e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'9 June 2015 1:50:36 pm'); yourself)); add: (#id->#'39365f54-2259-894d-87b6-6cc0b9d8a55e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText
		ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText
		ifFalse: [ViIconService doObject: object]).
	"#color -> (object isText
		ifTrue: [Color fromString: 'EEEEEE'])."
	#morph -> (object isText
		ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
	#selectable -> object isText not.
	#tooltip -> [(object isText ifFalse: [ViObjectPreviewHandler doObject: object])]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]
]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText
		ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText
		ifFalse: [ViIconService doObject: object]).
	"#color -> (object isText
		ifTrue: [Color fromString: ''EEEEEE''])."
	#morph -> (object isText
		ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
	#selectable -> object isText not.
	#tooltip -> [(object isText ifFalse: [ViObjectPreviewHandler doObject: object])]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]
]'); yourself)