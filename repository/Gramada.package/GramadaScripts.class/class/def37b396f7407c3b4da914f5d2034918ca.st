definitions
def37b396f7407c3b4da914f5d2034918ca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls | (cls theNonMetaClass organization categories collect: [:p | cls theNonMetaClass -> p]),
	(cls theMetaClass organization categories collect: [:p | cls theMetaClass -> p])]).
(#class -> ViQueryMapDefinition).
(#id -> #'37b396f7-407c-3b4d-a914-f5d2034918ca').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 September 2013 12:58:17 pm')})).
(#sourceCode -> '[:cls | (cls theNonMetaClass organization categories collect: [:p | cls theNonMetaClass -> p]),
	(cls theMetaClass organization categories collect: [:p | cls theMetaClass -> p])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})