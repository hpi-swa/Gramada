as yet unclassified
colorForLabel: aLabel

	| colors |
	colors := #(blue brown green magenta orange red tan yellow) collect: [:cs | Color perform: cs].
	^ colors at: ((aLabel hash \\ (colors size)) + 1)