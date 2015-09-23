private
rangesIn: aText setWorkspace: aBoolean
	"Answer a collection of SHRanges by parsing aText.
	When formatting it is not necessary to set the workspace, and this can make the parse take less time, so aBoolean specifies whether the parser should be given the workspace"

	| cst rangeSetting |

	cst := OhmGrammarOfOhm matchContents: aText asString , Character cr startingFrom: #Rule.
	cst = false ifTrue: [ ^ {} ].
	rangeSetting := OhmGrammarOfOhm synthesizedAttribute: OhmSHRules new.
	^ rangeSetting value: cst