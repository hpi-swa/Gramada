as yet unclassified
rangesIn: aText setWorkspace: aBoolean
	"Answer a collection of SHRanges by parsing aText.
	When formatting it is not necessary to set the workspace, and this can make the parse take less time, so aBoolean specifies whether the parser should be given the workspace"

	| cst rangeSetting |
	
	cst := OhmSmalltalk matchContents: aText asString startingFrom: #MethodDeclaration.
	cst = false ifTrue: [ ^ {} ].
	rangeSetting := OhmSmalltalk synthesizedAttribute: OhmSHSmalltalkMethods new.
	self halt.
	^ rangeSetting value: cst