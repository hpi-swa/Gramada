layout
adjustExtent

	| xs ys |

	xs := self nodeMorphs values collect: [:m | m bottomRight x].
	self width: (xs max - xs min)  
				+ self rootMorphInset x
				+ OhmRuleInvocationMorph size x
				+ self scrollInset x.

	ys := self nodeMorphs values collect: [:m | m bottomRight y].
	self height: (ys max - ys min) 
				+ self rootMorphInset y
				+ OhmRuleInvocationMorph size x
				+ self scrollInset y.