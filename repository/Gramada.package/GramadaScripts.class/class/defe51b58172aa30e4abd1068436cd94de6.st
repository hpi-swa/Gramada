definitions
defe51b58172aa30e4abd1068436cd94de6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isVariableBinding
	ifTrue: ['** scripts **']
	ifFalse: [obj category]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e51b5817-2aa3-0e4a-bd10-68436cd94de6').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 9:44:14 am')})).
(#sourceCode -> '[:obj | obj isVariableBinding
	ifTrue: [''** scripts **'']
	ifFalse: [obj category]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})