definitions
defb470ebdb97b507499ce27cc8601ff30e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:08:46 pm'); yourself)); add: (#id->#'b470ebdb-97b5-0749-9ce2-7cc8601ff30e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> 'Into' . #clicked ->  [[ohmDebugger into. ViEventNotifier trigger: #GramadaDebuggerStep]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> ''Into'' . #clicked ->  [[ohmDebugger into. ViEventNotifier trigger: #GramadaDebuggerStep]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)