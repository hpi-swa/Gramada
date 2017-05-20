definitions
def1db6c178bad4514ab5da0e18e7b312e9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'78d57678-18df-ed4f-8b2b-d2b9bd33ecdc'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:27:12 pm'); yourself)); add: (#id->#'1db6c178-bad4-514a-b5da-0e18e7b312e9'); add: (#block->[:in :out | (
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