definitions
defca489b64d3e0c343b5e1c28e5999d55a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:o1 :o2 | (o1 isBehavior ifTrue: [o1 name] ifFalse: [o1 selector]) <= (o2 isBehavior ifTrue: [o2 name] ifFalse: [o2 selector])]).
(#class -> ViQueryMapDefinition).
(#id -> #'ca489b64-d3e0-c343-b5e1-c28e5999d55a').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Boolean).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:o1 :o2 | (o1 isBehavior ifTrue: [o1 name] ifFalse: [o1 selector]) <= (o2 isBehavior ifTrue: [o2 name] ifFalse: [o2 selector])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})