definitions
def319d7f200d62824c8410f435ec97d58a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:06:46 pm'); yourself)); add: (#id->#'319d7f20-0d62-824c-8410-f435ec97d58a'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> 'Over' . #clicked ->  [[ohmDebugger over. ViEventNotifier trigger: #GramadaDebuggerStep]]} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> ''Over'' . #clicked ->  [[ohmDebugger over. ViEventNotifier trigger: #GramadaDebuggerStep]]} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)