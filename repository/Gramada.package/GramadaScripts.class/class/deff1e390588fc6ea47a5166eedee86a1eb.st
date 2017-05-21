definitions
deff1e390588fc6ea47a5166eedee86a1eb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls | cls withAllSuperclasses gather: [:scls |
	scls theNonMetaClass methodDict values, scls theMetaClass methodDict values]]).
(#class -> ViQueryMapDefinition).
(#id -> #'f1e39058-8fc6-ea47-a516-6eedee86a1eb').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 October 2013 6:26:24 pm')})).
(#sourceCode -> '[:cls | cls withAllSuperclasses gather: [:scls |
	scls theNonMetaClass methodDict values, scls theMetaClass methodDict values]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})