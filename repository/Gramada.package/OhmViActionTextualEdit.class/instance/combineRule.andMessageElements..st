as yet unclassified
combineRule: rule andMessageElements: argumentNames
	| result |
	result := ''.
	(rule body nodesResultingInCST) 
				with: argumentNames 
				do: [:r :a | result := result , r textualRepresentation withBlanksTrimmed  , ':' , a,  ' ' ].
	^ result