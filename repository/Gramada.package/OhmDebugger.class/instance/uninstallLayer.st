debugging
uninstallLayer

	| layeredMethod |

	{ OhmParsingExpression } do: [:klass |
	layeredMethod := (klass >> #eval:).
	layeredMethod isContextSMethod 
		ifTrue: [	layeredMethod removePartialMethod: 
					(layeredMethod partialMethodFor: #ohmDebugging)]].
			
	(OhmGrammar >> #skipSpaces:) isContextSMethod 
		ifTrue: [layeredMethod := OhmGrammar>>#skipSpaces:.
				layeredMethod removePartialMethod: 
					(layeredMethod partialMethodFor: #ohmDebugging)]