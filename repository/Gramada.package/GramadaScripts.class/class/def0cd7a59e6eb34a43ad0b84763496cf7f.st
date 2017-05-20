definitions
def0cd7a59e6eb34a43ad0b84763496cf7f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'9 June 2015 10:08:47 am'); yourself)); add: (#id->#'0cd7a59e-6eb3-4a43-ad0b-84763496cf7f'); add: (#block->[:in :out | out addAll: (in collect: [:tuple | tuple size = 3 ifTrue: [tuple third] ifFalse: [tuple second]]) ]); add: (#sourceCode->'[:in :out | out addAll: (in collect: [:tuple | tuple size = 3 ifTrue: [tuple third] ifFalse: [tuple second]]) ]'); yourself)