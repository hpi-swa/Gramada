debugging
installLayer

	OhmParsingExpression compile: 'eval: state

	<layer: #ohmDebugging>

	| result ohmDebugger |
	ohmDebugger := Processor activeProcess environmentAt: #OhmDebuggerInstance.
	ohmDebugger stepBefore: self at: state.
	result := self doEval: state.
	ohmDebugger stepAfter: self at: state with: result.
	^ result'.

	OhmGrammar compile: 'skipSpaces: state

	| result originalPosition anInput originalFailures |
	anInput := state inputStream.
	originalPosition := anInput getState.
	state isSyntactic: false.
	originalFailures := state rightmostFailure.
	state rightmostFailure: OhmFailureDescriptor new.

	[ originalPosition := anInput getState.
	  state pushBindings: OrderedCollection new.
	  #ohmDebugging withoutLayerDo: [
	  result := (self ruleNamed: #space)
				eval: state].
	  state popBindings.
	 ] doWhileTrue: [result].

	state rightmostFailure: originalFailures.
	state isSyntactic: true.
	anInput setState: originalPosition.'

	"To reset do:
	OhmParsingExpression compile: 'eval: state
	^ self doEval: state'"