definitions
def94349485e72e6d47b370a6a240d8da9f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs reject: [:obj | obj isKindOf: Error]]).
(#class -> ViQueryMapDefinition).
(#id -> #'94349485-e72e-6d47-b370-a6a240d8da9f').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:27:49 pm')})).
(#sourceCode -> '[:objs | objs reject: [:obj | obj isKindOf: Error]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})