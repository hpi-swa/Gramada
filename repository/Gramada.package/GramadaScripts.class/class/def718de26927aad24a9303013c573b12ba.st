definitions
def718de26927aad24a9303013c573b12ba
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | classes gather: [:cls |
	ViProtocol protocolsForClass: cls]]).
(#class -> ViQueryMapDefinition).
(#id -> #'718de269-27aa-d24a-9303-013c573b12ba').
(#inputKind -> ClassDescription).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classes | classes gather: [:cls |
	ViProtocol protocolsForClass: cls]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})