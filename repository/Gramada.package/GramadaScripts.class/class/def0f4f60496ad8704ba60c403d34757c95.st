definitions
def0f4f60496ad8704ba60c403d34757c95
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [OhmGrammarSmalltalkProxy allSubclasses collect: [:klass | klass OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0f4f6049-6ad8-704b-a60c-403d34757c95').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'7c416020-fb20-3d42-afe2-b0778abf52ce').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '5 June 2015 1:26:43 pm')})).
(#sourceCode -> '[:in :out | [OhmGrammarSmalltalkProxy allSubclasses collect: [:klass | klass OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})