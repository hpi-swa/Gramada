definitions
def9ff9a38b16384e4780a78390c89b325b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:protocol | protocol containingPackage
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'9ff9a38b-1638-4e47-80a7-8390c89b325b').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:protocol | protocol containingPackage
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})