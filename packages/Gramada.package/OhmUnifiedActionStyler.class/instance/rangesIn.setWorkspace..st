private
rangesIn: aText setWorkspace: aBoolean
	"Answer a collection of SHRanges by parsing aText.
	When formatting it is not necessary to set the workspace, and this can make the parse take less time, so aBoolean specifies whether the parser should be given the workspace"

	| cst rangeSetting ohmStyling stCode |
	cst := OhmUnifiedAction 
			matchContents: aText asString lines first 
			startingFrom: #Alt.
	cst = false ifTrue: [ ^ {} ].
	rangeSetting := OhmUnifiedAction synthesizedAttribute: OhmSHActions new.
	ohmStyling := rangeSetting value: cst.

	stCode := aText asString withBlanksTrimmed lines.
	stCode := ({((stCode first asOrderedCollection collect: [:x | ' ']) joinSeparatedBy: '')} , (stCode copyFrom: 2 to: stCode size)) joinSeparatedBy: '',Character cr.
	cst := OhmSmalltalk matchContents: stCode startingFrom: #ExecutableCode.
	cst = false ifTrue: [ ^ ohmStyling ].
	rangeSetting := OhmSmalltalk synthesizedAttribute: OhmSHSmalltalkMethods new.

	^ ohmStyling , (rangeSetting value: cst)