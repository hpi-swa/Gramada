definitions
def0f4f60496ad8704ba60c403d34757c95
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'7c416020-fb20-3d42-afe2-b0778abf52ce'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'5 June 2015 1:26:43 pm'); yourself)); add: (#id->#'0f4f6049-6ad8-704b-a60c-403d34757c95'); add: (#block->[:in :out | [OhmGrammarSmalltalkProxy allSubclasses collect: [:klass | klass OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [OhmGrammarSmalltalkProxy allSubclasses collect: [:klass | klass OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)