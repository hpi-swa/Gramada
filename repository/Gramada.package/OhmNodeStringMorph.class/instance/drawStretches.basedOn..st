layout
drawStretches: ohmNodeStretches basedOn: textMorphs

	| basePosition stretchBlocks  currentGlobalPosition |

	self stretches: Dictionary new.
	self initializeColorMap: ohmNodeStretches.
	stretchBlocks := OrderedCollection new.
	basePosition := 1.
	textMorphs do: [:tm |
		| activeStretches stretchBlock lengthOfRow stretchStackHeight |
		stretchBlock := self newStretchBlock.
		activeStretches := Set new.
		
		lengthOfRow := tm contents size.
		stretchStackHeight := ((basePosition to: (basePosition + ((lengthOfRow - 1) max: 0))) collect: [ :pos | (ohmNodeStretches at: pos) size]) max.

		(1 to: (lengthOfRow max: 1)) do: [:currentLocalPosition | 
			currentGlobalPosition := basePosition + currentLocalPosition -1.
			(ohmNodeStretches at: currentGlobalPosition) 
				do: [:aNode | 
						(activeStretches includes: aNode)
							ifFalse: [ | stretchLine |
								stretchLine := self newStretchLineFor: aNode on: tm.
								stretchLine 
									localStart: currentLocalPosition;
									localEnd: currentLocalPosition + (aNode interval contents size min: (lengthOfRow - currentLocalPosition + 1)).

								stretchLine topLeft: ((stretchBlock localPointToGlobal: 
									((currentLocalPosition - 1) * self characterWidth) - 1 "pixel to create separators" ) 
									@((((ohmNodeStretches at: currentGlobalPosition) indexOf: aNode)) * self stretchDistance)).
								stretchLine width: (self characterWidth * ((stretchLine localEnd - stretchLine localStart) max: 1)) - 1 "pixel to accomodate for separators".

								"Add the stretch line to all important entities"
								(self stretches at: aNode ifAbsentPut: [self createStretchObjectFor: aNode]) addLine: stretchLine.
								stretchLine stretch: (self stretches at: aNode).
								stretchBlock addMorph: stretchLine.
								activeStretches add: aNode. ] ]].

		stretchBlock height: ((stretchBlock submorphs collect: [:s | stretchBlock globalPointToLocal: s bottomRight y]),{self heightOfEmptyStretchBlock}) max.
		stretchBlock height: stretchBlock height + self stretchBlockBottomPadding.
		stretchBlocks add: stretchBlock.
		basePosition := basePosition + tm contents size + 1 "To accomodate for the missing line break character".].

	^ stretchBlocks