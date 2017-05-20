definitions
defe2611fa50fe1b549b9ef6bc73efae46b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'9 June 2015 9:55:33 am'); yourself)); add: (#id->#'e2611fa5-0fe1-b549-b9ef-6bc73efae46b'); add: (#block->[:in :out | (
	[:objects | 
	objects 
		collect: [:ohmRuleInvocation |
			{ ohmRuleInvocation . ohmRuleInvocation temporaryChildBindings
				withIndexCollect: [:item :inde | { index . item }] }]]
		value: in) do: [:result |
			out add: result]]); add: (#sourceCode->'[:in :out | (
	[:objects | 
	objects 
		collect: [:ohmRuleInvocation |
			{ ohmRuleInvocation . ohmRuleInvocation temporaryChildBindings
				withIndexCollect: [:item :inde | { index . item }] }]]
		value: in) do: [:result |
			out add: result]]'); yourself)