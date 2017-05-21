definitions
def9d5a860e218e3f48b99cc85e33aa4e5f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:obj | 
	obj isBehavior not or: [(objects includes: obj superclass) not]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'9d5a860e-218e-3f48-b99c-c85e33aa4e5f').
(#inputKind -> Behavior).
(#mapType -> #all).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 9:45:27 am')})).
(#sourceCode -> '[:objects | objects select: [:obj | 
	obj isBehavior not or: [(objects includes: obj superclass) not]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})