definitions
defe69a74c08b636e47ad8474d68829579b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | (classes
	gather: [:cls | cls withAllSuperclasses copyWithoutAll: {ProtoObject.Object}])
	gather: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e69a74c0-8b63-6e47-ad84-74d68829579b').
(#inputKind -> ClassDescription).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classes | (classes
	gather: [:cls | cls withAllSuperclasses copyWithoutAll: {ProtoObject.Object}])
	gather: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})