definitions
def308ec58a07f8bc4191ded5f7e6f778ae
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classToProtocol | '{1}{2}' format: {
	classToProtocol value asString.
	classToProtocol key isMeta
		ifTrue: [' [class]']
		ifFalse: ['']}]).
(#class -> ViQueryMapDefinition).
(#id -> #'308ec58a-07f8-bc41-91de-d5f7e6f778ae').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classToProtocol | ''{1}{2}'' format: {
	classToProtocol value asString.
	classToProtocol key isMeta
		ifTrue: ['' [class]'']
		ifFalse: ['''']}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})