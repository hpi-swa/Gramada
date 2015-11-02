definitions
def78d5767818dfed4f8b2bd2b9bd33ecdc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:26:30 pm'); yourself)); add: (#id->#'78d57678-18df-ed4f-8b2b-d2b9bd33ecdc'); add: (#block->[:in :out | (
	[:objects | objects collect: [:ohmNode | ohmNode children first parent 
				ifNil: ["To also display incomplete nodes"
					  (ohmNode grammar 
						semanticAction: OhmSetParentAttribute new)
							value: ohmNode].
			ohmNode]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:ohmNode | ohmNode children first parent 
				ifNil: ["To also display incomplete nodes"
					  (ohmNode grammar 
						semanticAction: OhmSetParentAttribute new)
							value: ohmNode].
			ohmNode]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)