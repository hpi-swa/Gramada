definitions
def0cd7a59e6eb34a43ad0b84763496cf7f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: (in collect: [:tuple | tuple size = 3 ifTrue: [tuple third] ifFalse: [tuple second]]) ]).
(#class -> ViQueryStepDefinition).
(#id -> #'0cd7a59e-6eb3-4a43-ad0b-84763496cf7f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '9 June 2015 10:08:47 am')})).
(#sourceCode -> '[:in :out | out addAll: (in collect: [:tuple | tuple size = 3 ifTrue: [tuple third] ifFalse: [tuple second]]) ]')})