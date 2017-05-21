definitions
def8c65f0c385029e4aaf743c5cb5066fd6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmRuleActionsEditorConfiguration | { ohmRuleActionsEditorConfiguration rule } , ohmRuleActionsEditorConfiguration actions ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8c65f0c3-8502-9e4a-af74-3c5cb5066fd6').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'f13aa2ba-4337-c144-9662-be8d20fbcfd8').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '1 June 2015 1:30:44 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmRuleActionsEditorConfiguration | { ohmRuleActionsEditorConfiguration rule } , ohmRuleActionsEditorConfiguration actions ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})